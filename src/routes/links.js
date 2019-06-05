const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/add', (req, res) => {
    res.render('links/add');
});

router.post('/add', (req, res) => {
    res.send('Received');
});

router.get('/', async(req, res) => {
    const links = await pool.query('SELECT * FROM employee');
    res.render('links/list', { links });

});

module.exports = router;