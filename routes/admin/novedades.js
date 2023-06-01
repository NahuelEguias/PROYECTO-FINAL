var express = require('express');
const session = require('express-session');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');


//Página de novedades
router.get('/', async function (req, res, next) {

    var novedades = await novedadesModel.getNovedades();

    res.render('admin/novedades', {
        layout: 'admin/layout',
        usuario: req.session.nombre,
        novedades
    });
});

//para eliminar una novedad*/
router.get('/eliminar/:id', async (req, res, next) => {
    var id = req.params.id;
    await novedadesModel.deleteNovedadesById(id);
    res.redirect('/admin/novedades')
}); //cierra GET de eliminar

module.exports = router;
