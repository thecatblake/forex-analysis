import logo from './logo.svg';
import './App.css';
import {Chart} from "./Chart";
import {useEffect, useState} from "react";
import moment from "moment";
import {Stat} from "./Stat";

function App() {
    const [startDate, setStartDate] = useState("2021-01-01")
    const [endDate, setEndDate] = useState("2022-01-01")
    const [started, setStarted] = useState(false)

    useEffect(() => {
        if(!started) return

        const interval = setInterval(() => {
            setStartDate((prev) =>  moment(prev).add(1, "day").format("YYYY-MM-DD"))
            setEndDate((prev) =>  moment(prev).add(1, "day").format("YYYY-MM-DD"))
        }, 1000)

        return () => clearInterval(interval)
    }, [started])
  return (
    <div className="App bg-black">
        <label htmlFor="start_date" className="text-color">Start date</label>
        <input type="date" id="start_date" name="start-date" onChange={(e) => setStartDate(e.target.value)} value={startDate} min="2008-01-01" max="2023-01-01"/>
        <label htmlFor="end_date" className="text-color">End date</label>
        <input type="date" id="end_date" name="end-date" onChange={(e) => setEndDate(e.target.value)} value={endDate} min="2008-01-01" max="2023-01-01"/>
        <button onClick={() => setStarted(true)}>start</button>
        <button onClick={() => setStarted(false)}>Stop</button>
        <Chart start={startDate} end={endDate}/>
        <Stat start={startDate} end={endDate}/>
    </div>
  );
}

export default App;
