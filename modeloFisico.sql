drop table if exists processoDeMatricula;
drop table if exists matricula;
drop table if exists horario;
drop table if exists preRequisito;
drop table if exists disciplina;
drop table if exists curso;
drop table if exists professor;
drop table if exists aluno;

create table aluno(
  id smallint unsigned auto_increment primary key,
  cpf bigint unsigned unique,
  nome varchar(50),
  senha varchar(20)
);

create table professor(
  id smallint unsigned auto_increment primary key,
  siape int unsigned unique,
  nome varchar(50)
);

create table curso(
  id tinyint unsigned auto_increment primary key,
  codigo smallint unsigned unique,
  nome varchar(100)
);

create table disciplina(
  id smallint unsigned auto_increment primary key,
  codigo char(4) unique,
  fase tinyint unsigned,
  CH smallint unsigned,
  CHminima smallint unsigned,
  cursoCodigo tinyint unsigned,
  professorSiape smallint unsigned,
  constraint fk_disciplina_cursoCodigo_curso_id foreign key (cursoCodigo) references curso(id),
  constraint fk_disciplina_professorSiape_professor_id foreign key (professorSiape) references professor(id)
);

create table preRequisito(
  id mediumint unsigned auto_increment primary key,
  disciplina smallint unsigned,
  preRequisito smallint unsigned,
  constraint fk_preRequisito_disciplina_disciplina_codigo foreign key (disciplina) references disciplina(id),
  constraint fk_preRequisito_preRequisito_disciplina_codigo foreign key (preRequisito) references disciplina(id)
);

create table horario(
  id tinyint unsigned auto_increment primary key,
  turno tinyint unsigned,
  numAula tinyint unsigned,
  numDia tinyint unsigned,
  semanaAB tinyint unsigned,
  codigoDisciplina smallint unsigned,
  semestre smallint unsigned,
  constraint fk_horario_codigoDisciplina_disciplina_codigo foreign key (codigoDisciplina) references disciplina(id)
);

create table matricula(
  id smallint unsigned auto_increment primary key,
  aluno smallint unsigned,
  curso tinyint unsigned,
  matricula int unsigned unique,
  constraint fk_matricula_aluno_aluno_cpf foreign key (aluno) references aluno(id),
  constraint fk_matricula_curso_curso_codigo foreign key (curso) references curso(id)
);

create table processoDeMatricula(
  id smallint unsigned auto_increment primary key,
  matricula smallint unsigned,
  disciplina smallint unsigned,
  concluido tinyint unsigned,
  semestre tinyint unsigned,
  constraint fk_processoDeMatricula_matricula_matricula_id foreign key (matricula) references matricula(id),
  constraint fk_processoDeMatricula_disciplina_disciplina_codigo foreign key (disciplina) references disciplina(id)
);
