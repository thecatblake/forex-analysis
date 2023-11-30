import json

from fastapi import FastAPI
from starlette.middleware import Middleware
from starlette.middleware.cors import CORSMiddleware
import pandas as pd
from enum import Enum

origins = [
    "*"
]

middleware = [
    Middleware(CORSMiddleware, allow_origins=origins)
]

app = FastAPI(middleware=middleware)

data = {
    "EURUSD": "./data/EURUSD_D1.csv",
    "USDJPY": "./data/USDJPY_D1.csv",
    "GBPUSD": "./data/GBPUSD_D1.csv",
    "USDCAD": "./data/USDCAD_D1.csv",
    "USDCHF": "./data/USDCHF_D1.csv",
}


class CurrencyPairs(str, Enum):
    EURUSD = "EURUSD"
    USDJPY = "USDJPY"
    GBPUSD = "GBPUSD"
    USDCAD = "USDCAD"
    USDCHF = "USDCHF"


data = {k: pd.read_table(v, names=["datetime", "open", "high", "low", "close", "volume"]) for k, v in data.items()}
for k, v in data.items():
    v["datetime"] = pd.to_datetime(v["datetime"])


@app.get("/{currency_pair}")
def index(currency_pair: CurrencyPairs, start: str, end: str):
    q = data[currency_pair][(data[currency_pair]["datetime"] >= start) & (data[currency_pair]["datetime"] <= end)]
    s = q.reset_index().to_json(orient='records')
    obj = json.loads(s)
    return obj


@app.get("/{currency_pair}/stats")
def stats(currency_pair: CurrencyPairs, start: str, end: str):
    q = data[currency_pair][(data[currency_pair]["datetime"] >= start) & (data[currency_pair]["datetime"] <= end)]
    st = q.describe()[["open", "high", "low", "close", "volume"]]
    s = st.reset_index().to_json(orient='records')
    obj = json.loads(s)
    return obj
