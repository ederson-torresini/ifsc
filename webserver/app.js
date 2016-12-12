var express = require('express');
var myParser = require("body-parser");
var app = express();
var router = require('./routes/index')
var cookieParser = require('cookie-parser')

app.use(cookieParser());

//support parsing of application/json type post data
app.use(myParser.json());

//support parsing of application/x-www-form-urlencoded post data
app.use(myParser.urlencoded({ extended: true }));


//app.use(express.static('/var/www/html/fe_matricula/matricula.html'));

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
app.post('/js/disciplinas', router.disciplinas).all('/js/disciplinas', methodNotAllowed);
app.post('/js/carga-horaria', router.carga_horaria).all('/js/carga-horaria', methodNotAllowed);
app.post('/js/pre-requisito', router.pre_requisito).all('/js/pre-requisito', methodNotAllowed);
app.post('/js/horariodisciplina', router.horariodisciplina).all('/js/horariodisciplina', methodNotAllowed);
app.post('/js/matricula', router.matricula).all('/js/matricula', methodNotAllowed);


var server = app.listen(3000);
console.log('Servidor Express: porta %s', server.address().port);
