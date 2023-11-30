import * as d3 from "d3";

export function ChartView({data, showVolume=true}) {
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
    return <>
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
                showVolume && data.map(d => <div
                    className="volume_chart_bar bg-white"
                    style={{
                        height: `${volumeScale(d["volume"])}px`,
                    }}
                >
                </div>)
            }
        </div>
    </>
}