import json

from fastapi import FastAPI
from starlette.middleware import Middleware
from starlette.middleware.cors import CORSMiddleware
import pandas as pd
from datetime import datetime

origins = [
    "*"
]

middleware = [
    Middleware(CORSMiddleware, allow_origins=origins)
]

app = FastAPI(middleware=middleware)

data = pd.read_table("./data/EURUSD1440.csv", names=["datetime", "open", "high", "low", "close", "volume"])
data["datetime"] = pd.to_datetime(data["datetime"])
num = data.shape[0]


@app.get("/")
def index(start: str, end: str):
    q = data[(data["datetime"] >= start) & (data["datetime"] <= end)]
    s = q.reset_index().to_json(orient='records')
    obj = json.loads(s)
    return obj
