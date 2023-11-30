import {useEffect, useState} from "react";
import * as d3 from "d3";
import {FormControl, InputLabel, MenuItem, Select, useTheme} from "@mui/material";
import {ChartView} from "./ChartView";

export function HistoricalChart({initialCurrency, start, end}) {
    const [data, setData] = useState([])
    const [currency, setCurrency] = useState(initialCurrency)

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
            <ChartView data={data} />
        </div>
    )
}