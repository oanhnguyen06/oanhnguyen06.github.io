// db.js
const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '13062004',
    database: 'review_book'
});

module.exports = pool.promise();
