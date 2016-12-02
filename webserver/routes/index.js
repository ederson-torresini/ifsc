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

var ldap = require('ldapjs');
var client = ldap.createClient({
  url: 'ldap://200.135.37.118'
});

//////

getSQLFormat = function(disciplinas, colunas, coluna_where, tabela)
{
    var str = 'select ' + colunas + ' from ' + tabela + ' where ';
    for (i in disciplinas)
    {
        str += '(' + coluna_where + ' = \'' + disciplinas[i].codigo + '\')'
        if (i != disciplinas.length-1)
        {
            str += ' or ';
        }
    }
    str += ';';
    return str;
};

login = function(req, res)
{

    var ldapres = null;
    
    var opts = {
        filter: '(uid=' + req.body.usuario + ')',
        scope: 'sub',
    }
    
    client.search('dc=cefetsc,dc=edu,dc=br', opts, function (err, result) {
        result.on('searchEntry',
            function (entry)
            {
                ldapres = entry.raw;
            }
        )
    
        result.on('end',
            function (result)
            {
                if (!ldapres)
                {
                    console.log('Invalid username')
                    res.status(401);
                    res.send('<h1>401 Unauthorized.</h1>');
                }
                else
                {
                    console.log('Valid username');
                    client.bind(ldapres.dn, req.body.senha,
                        function (err)
                        {
                            if (err)
                            {
                                console.log('Wrong password');
                                res.status(401);
                                res.send('<h1>401 Unauthorized.</h1>');
                            }
                            else
                            {
                                console.log('You are logged')
                                res.status(200);
                                res.sendFile('/var/www/html/fe_matricula/matricula.html', '{dotfiles=allow}');
                            }
                        }
                    )
                }
            }
        )
    })
};

getDisciplinas = function(req, res)
{
    connection.query("select codigo, nome from disciplina;",
        function(err, rows, fields)
        {
            if (!err)
            {
console.log('row: %s', JSON.stringify(rows));
                res.status(200);
                //res.json(JSON.parse('{"disciplinas":' + JSON.stringify(rows) + '}'));
                res.json(rows);
            }
            else
            {
                res.status(503);
                res.send(err);
            }
        }
    );
};

getCargaHoraria = function(req, res)
{
    var str = getSQLFormat(req.body.disciplinas, 'codigo, CH', 'codigo', 'disciplina');
    //var str = getSQLFormat(req.query.disciplinas, 'codigo, CH', 'codigo', 'disciplina');

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
////use bcd;
////drop view if exists v_preRequisito;
////create view v_preRequisito as
////	select d1.codigo as disciplina, d2.codigo as preRequisito
////	from preRequisito
////	inner join disciplina as d1
////	on preRequisito.disciplina = d1.id
////	inner join disciplina as d2
////	on preRequisito.preRequisito = d2.id;
////
////select * from v_preRequisito;
getPreRequisito = function(req, res)
{
    var str = getSQLFormat(req.body.disciplinas, '*', 'disciplina', 'v_preRequisito');
    //var str = getSQLFormat(req.query.disciplinas, '*', 'disciplina', 'v_preRequisito');

console.log('str: %s', str);

    connection.query(str,
        function(err, rows, fields)
        {
console.log('row: %s', JSON.stringify(rows));
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

getHorarioDisciplina = function(req, res)
{
    var str = getSQLFormat(req.body.disciplinas, '*', 'disciplina', 'v_horario');
    //var str = getSQLFormat(req.query.disciplinas, '*', 'disciplina', 'v_horario');

console.log('str: %s', str);
console.log('gsdfgds: %s', JSON.stringify(req.query));

    connection.query(str,
        function(err, rows, fields)
        {
console.log('row: %s', JSON.stringify(rows));
//console.log('{"disciplinas":' + JSON.stringify(rows) + '}');
            if (!err)
            {
                res.status(200);
                //res.json(JSON.parse('{"disciplinas":' + JSON.stringify(rows) + '}'));
                res.json(rows);
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
    //res.status(200);
    //res.send('<h1>Login efetuado com sucesso!</h1>');
    login(req, res);
};

exports.disciplinas = function(req, res)
{
    getDisciplinas(req, res);
};

exports.carga_horaria = function(req, res)
{
    getCargaHoraria(req, res);
};

exports.pre_requisito = function(req, res)
{
    getPreRequisito(req, res);
};

exports.horariodisciplina = function(req, res)
{
    getHorarioDisciplina(req, res);
};
