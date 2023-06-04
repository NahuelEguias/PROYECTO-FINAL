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

//para que aparezca el FORM de agregar
router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', {
        layout: 'admin/layout'
    }) //cierra render
}); //cierra GET


//agregar metodo post > insertar//
router.post('/agregar', async (req, res, next) => {
    try {
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await novedadesModel.insertNovedades(req.body);
            res.redirect('/admin/novedades')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true, 
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true, 
            message: 'No se cargo la novedad'
        });
    }
});


//me muestre el diseño del modificar con una sola novedad//

router.get('/modificar/:id', async (req, res, next) => {

    let id = req.params.id;
    let novedad = await novedadesModel.getNovedadesById(id);
    res.render('admin/modificar', {
        layout: 'admin/layout',
        novedad
    });
}); //cierro get modificación

//modificar la novedad

router.post('/modificar', async (req, res, next) => {
    try {
        console.log(req.body.id); //para ver si trae id
        var obj = {
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo
        }

        console.log(obj) // para ver si trae los datos
        await novedadesModel.modificarNovedadesById(obj, req.body.id);
        res.redirect('/admin/novedades');
    } catch (error) {
        console.log(error)
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true, 
            message: 'No se modifico la novedad'
        })
    }
});

module.exports = router;
