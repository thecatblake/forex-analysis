import concurrent
import time
import xml.dom.minidom
import requests
from dataclasses import dataclass
from datetime import datetime
import dateutil.parser
import concurrent.futures

from fastapi import FastAPI
from starlette.middleware import Middleware
from starlette.middleware.cors import CORSMiddleware
import pandas as pd

origins = [
    "*"
]

middleware = [
    Middleware(CORSMiddleware, allow_origins=origins)
]

app = FastAPI(middleware=middleware)


@dataclass
class NewsData:
    datetime: datetime
    content: str
    link: str


def getPage(url):
    req = requests.get(url)
    root = xml.dom.minidom.parseString(req.text)

    return root


def scrapeNewsXml(url, n=10, linkTag="loc", dateTag="news:publication_date", contentTag="news:title"):
    root = getPage(url)
    links = [e.firstChild.nodeValue for e in root.getElementsByTagName(linkTag)]
    dates = [dateutil.parser.isoparse(e.firstChild.nodeValue) for e in root.getElementsByTagName(dateTag)]
    contents = [e.firstChild.nodeValue for e in root.getElementsByTagName(contentTag)]

    news = []

    for i in range(min(len(links), len(dates), len(contents))):
        news.append(NewsData(dates[i], contents[i], links[i]))

    return news[:n]


def scrapeFinancialTimes():
    return scrapeNewsXml("https://www.ft.com/sitemaps/news.xml")


def scrapeBloomBerg():
    return scrapeNewsXml("https://www.bloomberg.com/feeds/sitemap_news.xml")


def scrapeMarketWatch():
    return scrapeNewsXml("https://www.marketwatch.com/mw_news_sitemap_1.xml", dateTag="n:publication_date",
                         contentTag="n:title")


def scrapeFortune():
    return scrapeNewsXml("https://fortune.com/news-sitemap.xml")


def scrapeDailyFX():
    return scrapeNewsXml("https://www.dailyfx.com/news.xml", dateTag="n:publication_date", contentTag="n:title")


scrapeFunctions = [
    scrapeFortune,
    scrapeBloomBerg,
    scrapeDailyFX,
    scrapeMarketWatch,
    scrapeFinancialTimes
]


@app.get("/")
def index():
    news = []
    with concurrent.futures.ThreadPoolExecutor() as executor:
        futures = [executor.submit(f) for f in scrapeFunctions]

        for future in concurrent.futures.as_completed(futures):
            result = future.result()
            news.extend(result)

    news.sort(key=lambda x: x.datetime, reverse=True)

    return news
