from enum import Enum


class CurrencyPairs(str, Enum):
    EURUSD = "EURUSD"
    USDJPY = "USDJPY"
    GBPUSD = "GBPUSD"
    USDCAD = "USDCAD"
    USDCHF = "USDCHF"


currencyPairAltName = {
    "USDJPY": "JPY=X",
    "EURUSD": "EURUSD=X",
    "GBPUSD": "GBPUSD=X",
    "USDCAD": "CAD=X",
    "USDCHF": "CHF=X"
}
