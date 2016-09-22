DROP TABLE IF EXISTS matricula;
DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS curriculo;
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS campus;

CREATE TABLE IF NOT EXISTS campus(
    id  tinyint unsigned auto_increment primary key,
    nome varchar(128) not null
);

CREATE TABLE  IF NOT EXISTS aluno(
    id int unsigned auto_increment primary key,
    nome varchar(128) not null,
    documento char(11) unique not null,
    telefone bigint unsigned,
    email varchar(128)
);

CREATE TABLE IF NOT EXISTS disciplina(
    id smallint unsigned auto_increment primary key,
    codigo int unsigned unique not null,
    nome char(100) not null,
    CH tinyint unsigned not null,
    CHmin smallint unsigned not null
);

CREATE TABLE IF NOT EXISTS curriculo(
    id smallint unsigned auto_increment primary key,
    implantacao date not null,
    disciplina smallint unsigned not null,
    constraint fk_curriculo_disciplina_disciplina_id foreign key(disciplina)
        references disciplina(id)
);

CREATE TABLE IF NOT EXISTS curso(
    id smallint unsigned auto_increment primary key,
    numero smallint unsigned unique not null,
    CHmin smallint unsigned not null,
    CHmax smallint unsigned not null,
    nome varchar(128) not null,
    campus tinyint unsigned  not null,
    curriculo smallint unsigned,
    constraint fk_curso_campus_campus_id foreign key(campus)
        references campus(id),
    constraint fk_curso_curriculo_curriculo_id foreign key(curriculo)
        references curriculo(id)
);

CREATE TABLE IF NOT EXISTS matricula(
    id  int unsigned auto_increment primary key,
    numero bigint unsigned unique not null,
    aluno int unsigned  not null,
    curso smallint unsigned not null,
    constraint fk_matricula_aluno_aluno_id foreign key(aluno)
        references aluno(id),
    constraint fk_matricula_curso_curso_id foreign key(curso)
        references curso(id)
);
