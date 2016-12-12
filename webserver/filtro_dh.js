//Pacote de conversão de JSON para sql alternativo a opção apresentada pelo Medeiros.

//instalar com 'npm install json-sql' ou adicionar ao package.json
var jsonSql = require('json-sql')();

////////////////////////
//EXEMPLO DE SQL SELECT
var sql = jsonSql.build({
    type: 'select',
    table: 'filtro_disciplinas_horario'
});

sql.query
// select * from "filtro_disciplinas_horario";

////////////////////////
//EXEMPLO DE SQL INSERT
var sql = jsonSql.build({
    type: 'insert',
    table: 'users',
    values: {
        name: 'John',
        lastname: 'Snow',
        age: 24,
        gender: 'male'
    }
});

sql.query
// insert into users (name, lastname, age, gender) values ($p1, $p2, 24, $p3);

sql.values
// { p1: 'John', p2: 'Snow', p3: 'male' }
