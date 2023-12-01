import {useEffect, useState} from "react";
import {NewsView} from "./NewsView";
import "./News.css"
import _, {groupBy, partition} from 'underscore';

const dayToEnglish = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

export function News({style}) {
    const [news, setNews] = useState([])

    useEffect(() => {
        fetch("http://localhost:8001/")
            .then(res => res.json())
            .then(data => setNews(data.map(d => {
                d.datetime = new Date(d.datetime)
                return d
            })))
    }, [])

    return <div className="news" style={style}>
        <h2 className="news-header">News</h2>
        <article className="news-list">
            {
                Object.entries(groupBy(news, (d) => {
                    let date = new Date(d.datetime)
                    return `${date.getFullYear()}-${date.getMonth()}-${date.getDate()}`
                })).map((d) => {
                    let [date, data] = d
                    date = new Date(date)
                    return  <>
                        <time dateTime={`${date.getFullYear()}-${date.getMonth()}-${date.getDate()}`}>{dayToEnglish[date.getDay()]}, {date.getDate()}<sup>th</sup> {date.toLocaleString("default", {month: "long"})} {date.getFullYear()}</time>
                        {data.map(d => <NewsView content={d.content} link={d.link} />)}
                    </>
                    })
            }
        </article>
    </div>
}