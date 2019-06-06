const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/add', (req, res) => {
    res.render('links/add');
});

/* router.get('/uploaded', (req, res) => {
    res.render('links/uploaded');
});
 */
router.post('/add', async(req, res) => {
    const { title, url, description } = req.body;
    const newlink = {
        title,
        url,
        description
    }
    await pool.query('INSERT INTO links set ?', [newlink]);
    console.log(newlink);
    res.redirect('/links');
});

router.get('/', async(req, res) => {
    const links = await pool.query('SELECT * FROM links');
    res.render('links/list', { links });


});

router.get('/delete/:id', async(req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM links WHERE id = ?', [id]);
    res.redirect('/links');
});

router.get('/edit/:id', async(req, res) => {
    const { id } = req.params;
    const links = await pool.query('SELECT * FROM links WHERE id = ?', [id]);
    console.log(links);
    res.render('/links/edit', { links });
});

module.exports = router;