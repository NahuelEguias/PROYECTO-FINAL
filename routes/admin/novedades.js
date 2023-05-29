var express = require('express');
const session = require('express-session');
var router = express.Router();

router.get('/', function (req, res, next) {
    res.render('admin/novedades', {
        layout: 'admin/layout',
        usuario: req.session.nombre
    });
});

module.exports = router;
