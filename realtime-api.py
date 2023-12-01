import base64
import websocket
import rel
import PricingData_pb2
from queue import Queue
from datetime import datetime
import json
from fastapi import FastAPI
from starlette.middleware import Middleware
from starlette.middleware.cors import CORSMiddleware
import pandas as pd
import threading

from settings import CurrencyPairs, currencyPairAltName

origins = [
    "*"
]

middleware = [
    Middleware(CORSMiddleware, allow_origins=origins)
]

app = FastAPI(middleware=middleware)

url = "wss://streamer.finance.yahoo.com"

yaticker = PricingData_pb2.yaticker()

queue = Queue(maxsize=5000)

msqueue = Queue()


def isSameMinute(t1, t2):
    return t1.hour == t2.hour and t1.minute == t2.minute


def on_message(ws, message):
    yaticker.ParseFromString(base64.b64decode(message))
    t = datetime.now()
    data = {
        "datetime": datetime(t.year, t.month, t.day, t.hour, t.minute, 0),
        "price": yaticker.price,
        "currency": yaticker.id
    }

    queue.put(data)

    while not msqueue.empty():
        ws.send(msqueue.get())


def on_error(ws, error):
    print(error)


def on_close(ws, close_status_code, close_msg):
    print("### closed ###")


def on_open(ws):
    message = {
        "subscribe": ["JPY=X", "EURUSD=X", "GBPUSD=X", "CAD=X", "CHF=X"]
    }
    ws.send(json.dumps(message))


def start_websocket():
    #websocket.enableTrace(True)
    ws = websocket.WebSocketApp("wss://streamer.finance.yahoo.com/",
                                on_open=on_open,
                                on_message=on_message,
                                on_error=on_error,
                                on_close=on_close)

    ws.run_forever(reconnect=5)  # Set dispatcher to automatic reconnection, 5 second reconnect delay if connection closed unexpectedly # Keyboard Interrupt


@app.get("/{currency_pair}")
def index(currency_pair: CurrencyPairs, t: str):
    data = pd.DataFrame(list(queue.queue))
    data = data[data["datetime"] < t]
    data = data.set_index("datetime")
    agg = data.groupby(["currency", "datetime"]).agg(['first', 'min', 'max', 'last']).reset_index()
    q = agg[agg["currency"] == currencyPairAltName[currency_pair]]
    q = pd.DataFrame({
        "datetime": q["datetime"],
        "open": q["price"]["first"],
        "high": q["price"]["max"],
        "low": q["price"]["min"],
        "close": q["price"]["last"]
    }).reset_index().drop("index")
    s = q.reset_index().to_json(orient='records')
    obj = json.loads(s)
    return obj


wsthread = threading.Thread(target=start_websocket)
wsthread.start()
