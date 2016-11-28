-- Troque a base, se necessário
USE bcd;

DROP TABLE IF EXISTS horario;
DROP TABLE IF EXISTS semestre;
DROP TABLE IF EXISTS MinistradoresDasDisciplinas;
DROP TABLE IF EXISTS professor;
DROP TABLE IF EXISTS PedidoDeMatricula;
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
    	foreign key(disciplina) references disciplina(id),
	CONSTRAINT implatação UNIQUE(implantacao, disciplina)
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
    	foreign key(matricula) references matricula(id),
     CONSTRAINT matricula UNIQUE(matricula, disciplina)
);

CREATE TABLE IF NOT EXISTS PedidoDeMatricula(
	id smallint unsigned auto_increment primary key,
	sessao char(32),
	tipo tinyint unsigned not null,
	matricula int unsigned not null,
	disciplina smallint unsigned not null,
	constraint fk_pedidodematricula_disciplina_disciplina_id
    	foreign key(disciplina) references disciplina(id),
	constraint fk_pedidodematricula_matricula_matricula_id
    	foreign key(matricula) references matricula(id)
);

CREATE TABLE IF NOT EXISTS professor(
	id smallint unsigned auto_increment primary key,
	nome varchar(128) not null,
	documento char(11) unique not null,
	campus tinyint unsigned not null,
	constraint fk_professor_campus_campus_id
    	foreign key(campus) references campus(id)
);

CREATE TABLE IF NOT EXISTS MinistradoresDasDisciplinas(
	id smallint unsigned auto_increment primary key,
	disciplina smallint unsigned not null,
    professor smallint unsigned not null,
	constraint fk_ministradoresdasdisciplinas_disciplina_disciplina_id
    	foreign key(disciplina) references disciplina(id),
	constraint fk_ministradoresdasdisciplinas_professor_professor_id
    	foreign key(professor) references professor(id)
);

CREATE TABLE IF NOT EXISTS semestre(
	id smallint unsigned auto_increment primary key,
	ano smallint unsigned not null,
    metade boolean not null, -- true = 1o semestre & false = 2o semestre
    CONSTRAINT ano UNIQUE(ano, metade)
);

CREATE TABLE IF NOT EXISTS horario(
	id smallint unsigned auto_increment primary key,
	disciplina smallint unsigned not null,
	semestre smallint unsigned not null,
	inicio time not null,
	termino time not null,
	turno varchar(16) not null,
	dia smallint not null,
	constraint fk_horario_disciplina_disciplina_id
    	foreign key(disciplina) references disciplina(id),
	constraint fk_horario_semestre_semestre_id
    	foreign key(semestre) references semestre(id)
);