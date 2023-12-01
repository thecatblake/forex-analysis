import {useEffect, useState} from "react";
import {FormControl, InputLabel, MenuItem, Select} from "@mui/material";
import {ChartView} from "./ChartView";
import useWebSocket, {ReadyState} from "react-use-websocket";
import {yaticker} from "./PricingData";

function checkIfSameMinute(d1, d2) {
    return d1.getDay() === d2.getDay() &&
            d1.getHours() === d2.getHours() &&
            d1.getMinutes() === d2.getMinutes()
}

export function RealTimeChart({initialCurrency}) {
    const [data, setData] = useState([])
    const [currency, setCurrency] = useState(initialCurrency)

    const currencyPairOptions = [
        "USDJPY",
        "EURUSD",
        "GBPUSD",
        "USDCAD",
        "USDCHF"
    ]

    const currencyMessage = {
        "USDJPY": "JPY=X",
        "EURUSD": "EURUSD=X",
        "GBPUSD": "GBPUSD=X",
        "USDCAD": "CAD=X",
        "USDCHF": "CHF=X"
    }

    const {sendJsonMessage, readyState, getWebSocket} = useWebSocket("wss://streamer.finance.yahoo.com")

    useEffect(() => {
        if(readyState === ReadyState.OPEN) {
            const ws = getWebSocket()

            sendJsonMessage({
                subscribe: [currencyMessage[currency],]
            })

            ws.onmessage = message => {
                let b = atob(message.data)
                let buf = new Uint8Array(b.length)
                for(let e=0;e<b.length;e++)
                    buf[e] = b.charCodeAt(e)
                let d = yaticker.decode(buf)

                let newData = {
                    date: (new Date(d.time)),
                    open: d.price,
                    high: d.price,
                    low: d.price,
                    close: d.price,
                    volume: d.vol24hr
                }

                setData(prev => {
                    if(prev.length === 0) {
                        return [newData]
                    } else if (checkIfSameMinute(prev[prev.length-1].date, newData.date)) {
                        let newDataList = prev.map(e => {
                            if (checkIfSameMinute(e.date, newData.date)) {
                                return {
                                    date: e.date,
                                    open: e.open,
                                    high: Math.max(e.high, d.price),
                                    low: Math.max(e.low, d.price),
                                    close: d.price,
                                    volume: d.vol24hr
                                }
                            } else {
                                return e
                            }
                        })
                        return newDataList
                    } else {
                        return [...prev, newData]
                    }
                })
            }

            return () => {
                sendJsonMessage({
                    unsubscribe: [currencyMessage[currency],]
                })
            }
        }
    }, [currency, readyState])


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
            <ChartView data={data} showVolume={false} />
        </div>
    )
}