DROP TABLE IF EXISTS DisciplinasCursadas;
DROP TABLE IF EXISTS matricula;
DROP TABLE IF EXISTS curriculo;
DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS preRequisito;
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS campus;

CREATE TABLE IF NOT EXISTS campus(
    id tinyint unsigned auto_increment primary key,
    nome varchar(128) unique not null
);

CREATE TABLE IF NOT EXISTS aluno(
    id int unsigned auto_increment primary key,
    nome varchar(128) not null,
    documento char(11) unique not null,
    telefone bigint unsigned,
    email varchar(128)
);

CREATE TABLE IF NOT EXISTS disciplina(
    id smallint unsigned auto_increment primary key,
    codigo char(8) unique not null,
    nome char(100) not null,
    CH smallint unsigned not null,
    CHmin smallint unsigned not null default 0
);

CREATE TABLE IF NOT EXISTS preRequisito(
    id smallint unsigned auto_increment primary key,
    disciplina smallint unsigned not null,
    preRequisito smallint unsigned not null,
    obrigatorio boolean not null,
    eixo boolean not null,
    constraint fk_preRequisito_disciplina_disciplina_id
        foreign key(disciplina) references disciplina(id),
    constraint fk_preRequisito_preRequisito_disciplina_id
        foreign key(preRequisito) references disciplina(id)
);

CREATE TABLE IF NOT EXISTS curso(
    id smallint unsigned auto_increment primary key,
    numero smallint unsigned unique not null,
    CHmin smallint unsigned not null,
    CHmax smallint unsigned not null,
    nome varchar(128) not null,
    campus tinyint unsigned not null,
    constraint fk_curso_campus_campus_id
        foreign key(campus) references campus(id)
);

CREATE TABLE IF NOT EXISTS curriculo(
    id smallint unsigned auto_increment primary key,
    curso smallint unsigned,
    implantacao date not null,
    disciplina smallint unsigned not null,
    constraint fk_curriculo_curso_curso_id
        foreign key(curso) references curso(id),
    constraint fk_curriculo_disciplina_disciplina_id
        foreign key(disciplina) references disciplina(id)
);

CREATE TABLE IF NOT EXISTS matricula(
    id int unsigned auto_increment primary key,
    numero bigint unsigned unique not null,
    aluno int unsigned not null,
    curso smallint unsigned not null,
    constraint fk_matricula_aluno_aluno_id
        foreign key(aluno) references aluno(id),
    constraint fk_matricula_curso_curso_id
        foreign key(curso) references curso(id)
);

CREATE TABLE IF NOT EXISTS DisciplinasCursadas(
    id smallint unsigned auto_increment primary key,
    matricula int unsigned not null,
    disciplina smallint unsigned not null,
    constraint fk_disciplinasCursadas_disciplina_disciplina_id
        foreign key(disciplina) references disciplina(id),
    constraint fk_disciplinaCursadas_matricula_matricula_id
        foreign key(matricula) references matricula(id)
);
