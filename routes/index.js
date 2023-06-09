var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require ('cloudinary').v2;

/* GET home page. */
router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades();
  novedades = novedades.splice(0,5); //seleccionamos los primeros 5 elementosa del array
  novedades = novedades.map(novedades => {
    if (novedades.img_id) {
      const imagen = cloudinary.url(novedades.img_id, {
        width: 460,
        crop: 'fill'
      });
      return {
        ...novedades,
        imagen
      }
    } else {
      return {
        ...novedades,
        imagen: '/images/noimage.jpg'
      }
    }
  });


  res.render('index', {
    novedades
  });
});

router.post('/', async (req, res, next) => {

  console.log(req.body) // estoy capturando los datos?

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var tel = req.body.tel;
  var consulta = req.body.consulta;

  var obj = {
    to: 'nahuelnicolas96@gmail.com',
    subject: 'Consulta realizada por la Web',
    html: nombre + " " + apellido + " se contactó a traves de la web y quiere más información a este correo: " + email + ". <br> Además hizo este comentario: " + consulta + ". <br> Su tel es: " + tel
  } //cierra var objeto

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  }); // cierra transporter


  var info = await transporter.sendMail(obj);

  res.render('index', {
    message: 'Mensaje enviado correctamente',
  });

});


module.exports = router;
