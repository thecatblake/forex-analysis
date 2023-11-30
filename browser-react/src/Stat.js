import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import {useEffect, useState} from "react";

export function Stat({currency, start, end}) {
    const [data, setData] = useState([])

    useEffect(() => {
        fetch(`http://localhost:8000/${currency}/stats?start=${start}&end=${end}`)
            .then(res => res.json())
            .then(data => setData(data))
    }, [start, end])

    if(data.length === 0) {
        return <></>
    }

    return (
        <TableContainer component={Paper} >
            <Table>
                <TableHead>
                    <TableRow>
                        {
                            Object.keys(data[0]).map(d => <TableCell>{d}</TableCell>)
                        }
                    </TableRow>
                </TableHead>
                <TableBody>
                    {
                        data.map(d => <TableRow>
                            {Object.values(d).map(v => <TableCell>{v}</TableCell>)}
                        </TableRow>)
                    }
                </TableBody>
            </Table>
        </TableContainer>
    )
}