const express = require('express') 
const mysql = require('mysql') 
const db = mysql.createConnection({   
    host: 'localhost',
    user: 'fintech',
    password: 'P@ssw0rd',
    database: 'fintech'
})

db.connect() 
const app = express() 

app.get('/accounts', (req, res) => {   
    let sql = 'SELECT * FROM students'  
    let query = db.query(sql, (err, results) => { 
        if (err) throw err    
        console.log(results)
        res.json('results') // เอาผลลัพธ์ออกมาในรูปแบบ json
    })
})

app.listen('3001', () => { 
    console.log('start port 3000')
})