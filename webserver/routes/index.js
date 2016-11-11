var mysql      = require('mysql');
var connection = mysql.createConnection
(
	{
		host     : 'localhost',
		user     : 'root',
		password : 'engtelecom123',
		database : 'bcd'
	}
);


getSQLFormat = function(disciplinas, colunas, tabela)
{
    var str = 'select ' + colunas + ' from ' + tabela + ' where ';
    for (i in disciplinas)
    {
        str += '(codigo = \'' + disciplinas[i].codigo + '\')'
        if (i != disciplinas.length-1)
        {
            str += ' or ';
        }
    }
    str += ';';
    return str;
};

getCargaHoraria = function(req, res)
{
    var str = getSQLFormat(req.body.disciplinas, 'codigo, CH', 'disciplina');

    connection.query(str,
        function(err, rows, fields)
        {
            if (!err)
            {
                res.status(200);
                res.json(JSON.parse('{"disciplinas":' + JSON.stringify(rows) + '}'));
            }
            else
            {
                res.status(503);
                res.send(err);
            }
        }
    );
};

// TODO: Tem que ver com os DBAs se será construída uma view para
// Facilitar a consulta de pré-Requisitos!
///// select * from preRequisito inner join disciplina on disciplina.id = preRequisito.disciplina where disciplina.codigo = 'BCD29008';
getPreRequisito = function(req, res)
{
    var str = getSQLFormat(req.body.disciplinas, "", "");

    connection.query(str,
        function(err, rows, fields)
        {
            if (!err)
            {
                res.status(200);
                res.json(JSON.parse('{"disciplinas":' + JSON.stringify(rows) + '}'));
            }
            else
            {
                res.status(503);
                res.send(err);
            }
        }
    );
};




//
// EXPORTS.
//

// TODO: ainda não sei como implementar o login.
// (Saberemos nos próximos episódios!!!)
exports.login = function(req, res)
{
    res.status(200);
    res.send('<h1>Login efetuado com sucesso!</h1>');
};

exports.carga_horaria = function(req, res)
{
    getCargaHoraria(req, res);
};

exports.pre_requisito = function(req, res)
{
    getPreRequisito(req, res);
};

