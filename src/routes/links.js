const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/add', (req, res) => {
    res.render('links/add');
});

router.post('/add', async(req, res) => {
    console.log(res);
    const newfile = await pool.query("DELETE FROM `table 4` WHERE `COL 1`='Job', `COL 1`=''; ");
    console.log(newfile);
    res.redirect('/links');
});

router.get('/', async(req, res) => {
    const links = await pool.query('SELECT * FROM employee');
    res.render('links/list', { links });
    console.log(links);

});

module.exports = router;