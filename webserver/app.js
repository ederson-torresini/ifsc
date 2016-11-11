var express = require('express');
var myParser = require("body-parser");
var app = express();
var router = require('./routes/index')

app.use(myParser.urlencoded({extended : true}));

// TESTES
app.get('/js/', function(req, res) {
    res.status(200);
    res.json(JSON.parse('{"teste": "opa"}'));
});
// END TESTES

methodNotAllowed = function(req, res)
{
    res.status(405);
    res.send('405 Method Not Allowed');
};

app.post('/js/login', router.login).all('/js/login', methodNotAllowed);
app.post('/js/carga-horaria', router.carga_horaria).all('/js/carga-horaria', methodNotAllowed);
app.post('/js/pre-requisito', router.pre_requisito).all('/js/pre-requisito', methodNotAllowed);


var server = app.listen(3000);
console.log('Servidor Express: porta %s', server.address().port);
