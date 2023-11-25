import * as d3 from "d3";

let start_date = "2017-01-01 00:00:00"
let end_date = "2023-01-01 00:00:00"

const chart_elm = d3.select("body")
    .append("div")
    .attr("id", "chart")

function update(start, end) {
    fetch(`http://localhost:8000?start=${start}&end=${end}`)
        .then(res => res.json())
        .then(data => {
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

            chart_elm.selectAll("div").remove()

            const candlestick = chart_elm
                .append("div")
                .attr("id", "candlestick")
                .style("display", "flex")
                .style("align-items", "end")
                .selectAll("div")
                .data(data)
                .enter()
                .append("div")
                .attr("class", "candlestick_bar")
                .style("width", "10px")

            candlestick
                .append("div")
                .attr("class", d => d["open"] <= d["close"] ? "candlestick_close" : "candlestick_open")
                .style("width", "100%")
                .style("height", d => d["open"] <= d["close"] ? `${candleScale(d["close"])}px` : `${candleScale(d["open"])}px`)
                .style("margin-bottom", d => d["open"] <= d["close"] ? `-${candleScale(d["open"])}px` : `-${candleScale(d["close"])}px`)
                .style("background-color", d => d["open"] <= d["close"] ?  "rgb(0, 255, 0)" : "rgb(255, 0, 0)")
            candlestick
                .append("div")
                .attr("class", d => d["open"] <= d["close"] ? "candlestick_open" : "candlestick_close")
                .style("width", "100%")
                .style("height", d => d["open"] <= d["close"] ? `${candleScale(d["open"])}px` : `${candleScale(d["close"])}px`)
                .style("background-color", "rgb(255, 255, 255)")

            chart_elm
                .append("div")
                .attr("id", "volume_chart")
                .style("display", "flex")
                .style("align-items", "end")
                .selectAll("div")
                .data(volume)
                .enter()
                .append("div")
                .attr("class", "volume_chart_bar")
                .style("width", "10px")
                .style("height", d => `${volumeScale(d)}px`)
                .style("background-color", "rgb(0, 0, 0)")
        })
}

const start_elm = document.getElementById("start_date")
const end_elm = document.getElementById("end_date")

start_elm.addEventListener("change", (e) => {
    start_date = `${e.target.value} 00:00:00`
    update(start_date, end_date)
})

end_elm.addEventListener("change", (e) => {
    end_date = `${e.target.value} 00:00:00`
    update(start_date, end_date)
})

update(start_date, end_date)