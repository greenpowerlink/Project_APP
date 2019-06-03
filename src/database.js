const mysql = require('mysql');
const express = require('./keys');

const pool = mysql.createPool(database);

pool.getConnection((err, connection) => {
    if (err) {
        if (err.code === 'PROTOCOL_CONNECTION_LOST') {
            console.error('DATABASE CONNECTION WAS LOST');
        }
        if (err.code === 'ER_CON_COUNT_ERROR') {
            console.error('DATABASE HAS TO MANY CONNECTION');
        }
        if (err.code === 'ECONNREFUSED') {
            console.error('DATABASE CONNECTION REFUSED');
        }
    }
    if (connectio) connection.release();
    console.log('DB is connected');
    return;

});

module.exports = pool;