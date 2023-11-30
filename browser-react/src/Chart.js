import {useEffect, useState} from "react";
import * as d3 from "d3";
import {FormControl, InputLabel, MenuItem, Select, useTheme} from "@mui/material";

export function Chart({initialCurrency, start, end}) {
    const [data, setData] = useState([])
    const [currency, setCurrency] = useState(initialCurrency)
    const theme = useTheme();

    const currencyPairOptions = [
        "USDJPY",
        "EURUSD",
        "GBPUSD",
        "USDCAD",
        "USDCHF"
    ]

    useEffect(() => {
        fetch(`http://localhost:8000/${currency}?start=${start}&end=${end}`)
            .then(res => res.json())
            .then(data => setData(data))
    }, [start, end, currency])

    const volume = data.map(d => d["volume"])
    const vol_max = Math.max(...volume)

    const max_v = Math.max(...data.map(d => d["high"]))
    const min_v = Math.min(...data.map(d => d["low"]))

    const candleScale = d3.scaleLinear()
        .domain([min_v, max_v])
        .range([0, 300])

    const volumeScale = d3.scaleLinear()
        .domain([0, vol_max])
        .range([0, 100])

    return (
        <div className="chart">
            <div >
                <FormControl variant="standard" sx={{ m: 1, minWidth: 120 }}>
                    <InputLabel id="demo-simple-select-label">Pair</InputLabel>
                    <Select
                        labelId="demo-simple-select-label"
                        value={currency}
                        label="Age"
                        onChange={(e) => setCurrency(e.target.value)}
                    >
                        {
                            currencyPairOptions.map(v => <MenuItem value={v}><span className="text-color">{v}</span></MenuItem>)
                        }
                    </Select>
                </FormControl>
            </div>
            <div className="candlestick">
                {
                    data.map(d => <div className="candlestick_bar">
                        <div
                            className={d["open"] <= d["close"] ? "candlestick_close" : "candlestick_open"}
                            style={{
                                height: d["open"] <= d["close"] ? `${candleScale(d["close"])}px` : `${candleScale(d["open"])}px`,
                                marginBottom: d["open"] <= d["close"] ? `-${candleScale(d["open"])}px` : `-${candleScale(d["close"])}px`,
                                backgroundColor: d["open"] <= d["close"] ?  "rgb(0, 255, 0)" : "rgb(255, 0, 0)"
                        }}
                        ></div>
                        <div
                            className={`bg-black ${d["open"] <= d["close"] ? "candlestick_open" : "candlestick_close"}`}
                            style={{
                                height: d["open"] <= d["close"] ? `${candleScale(d["open"])}px` : `${candleScale(d["close"])}px`,
                            }}
                        ></div>
                    </div>)
                }
            </div>
            <div className="volume_chart">
                {
                    data.map(d => <div
                        className="volume_chart_bar bg-white"
                        style={{
                            height: `${volumeScale(d["volume"])}px`,
                        }}
                    >
                    </div>)
                }
            </div>
        </div>
    )
}