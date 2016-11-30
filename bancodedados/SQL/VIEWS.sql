--INICIO DO TRABALHO COM VIEWS (em desenvolimento)


-- apresenta todas disciplinas do curso associadas à uma mátricula para iniciar a operação de criação da tabela referente a disciplinas elegíveis
drop view TODAS_DISCIPLINAS_DO_CURSO;

CREATE VIEW TODAS_DISCIPLINAS_DO_CURSO AS
SELECT disciplina.iddisciplina, matricula.idmatricula
FROM disciplina
LEFT JOIN matricula
ON (true);

select * from TODAS_DISCIPLINAS_DO_CURSO where idmatricula=2;


-- primeira operação feita sobre a tabela inicial que elimina todas as matérias já crusadas

drop view TODAS_DISCIPLINAS_QUE_FALTAM_CURSAR_DO_CURSO;

CREATE VIEW TODAS_DISCIPLINAS_QUE_FALTAM_CURSAR_DO_CURSO AS
 SELECT TODAS_DISCIPLINAS_DO_CURSO.iddisciplina, TODAS_DISCIPLINAS_DO_CURSO.idmatricula
 FROM TODAS_DISCIPLINAS_DO_CURSO
 WHERE NOT EXISTS
    (select * from disciplinascursadas
     WHERE TODAS_DISCIPLINAS_DO_CURSO.iddisciplina = disciplinascursadas.disciplina AND TODAS_DISCIPLINAS_DO_CURSO.idmatricula = disciplinascursadas.matricula
     );
 
select * from TODAS_DISCIPLINAS_QUE_FALTAM_CURSAR_DO_CURSO where idmatricula=2;


-- gera o conjunto de disciplinas que apresentam algum pre-requisito completo.

drop view TODAS_DISCIPLINAS_QUE_SE_TEM_ALGUM_PREREQUISITO_DO_CURSO;

CREATE VIEW TODAS_DISCIPLINAS_QUE_SE_TEM_ALGUM_PREREQUISITO_DO_CURSO AS
SELECT prerequisito.disciplina, disciplinascursadas.matricula
FROM prerequisito
INNER JOIN disciplinascursadas
ON (disciplinascursadas.disciplina=prerequisito.prerequisito AND preRequisito.obrigatorio = 1 AND preRequisito.eixo = 1);

select * from TODAS_DISCIPLINAS_QUE_SE_TEM_ALGUM_PREREQUISITO_DO_CURSO where matricula=2;



-- tabela que indica a quantidade de pre-requisitos obrigatórios atingidos por uma certa matrícula

drop view QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS;

CREATE VIEW QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS AS

 SELECT disciplina, matricula, count(disciplina) as qntpre_atingido
  FROM TODAS_DISCIPLINAS_QUE_SE_TEM_ALGUM_PREREQUISITO_DO_CURSO
 GROUP by disciplina, matricula;

select * from QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS where matricula=2 ;



-- tabela que indica a quantidade de pre requisitos necessarios para cada disciplina

drop view QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS;

CREATE VIEW QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINA AS

SELECT disciplina, count(disciplina) as qntpre
  FROM prerequisito
  WHERE obrigatorio = 1 AND eixo = 1
  GROUP by disciplina;

select * from QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINA;


-- quantidade de pre requisitos necessarios para cada disciplina associados a todas matriculas para a operacao de verificar se se antende todos pre requisitos

drop view QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_TODAS_MATRICULAS;

CREATE VIEW QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_TODAS_MATRICULAS AS
SELECT QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINA.disciplina, matricula.idmatricula, QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINA.qntpre
FROM QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINA
JOIN matricula
ON (true);

select * from QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_TODAS_MATRICULAS;

-- tabela que retorna todas as disciplinas cujo os pre-requisitos foram atingidos.

drop view TODAS_DISCIPLINAS_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO;

CREATE VIEW TODAS_DISCIPLINAS_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO AS

 SELECT QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS.disciplina, QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS.matricula
 FROM QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS
 INNER JOIN QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_TODAS_MATRICULAS
  ON ( QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS.disciplina = QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_TODAS_MATRICULAS.disciplina AND QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS.matricula = QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_TODAS_MATRICULAS.idmatricula AND QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_CURSADAS.qntpre_atingido = QUANTIDADE_DE_PREREQUISITOS_DAS_DISCIPLINAS_TODAS_MATRICULAS.qntpre
     );
 
select * from TODAS_DISCIPLINAS_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO where matricula=1;



-- tabela que apresenta todas disciplinas do curso que uma matricula atingiu os pre requisitos e ainda não a cursou

drop view DISCIPLINAS_A_CURSAR_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO;

CREATE VIEW DISCIPLINAS_A_CURSAR_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO AS
 SELECT TODAS_DISCIPLINAS_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO.disciplina, TODAS_DISCIPLINAS_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO.matricula
 FROM TODAS_DISCIPLINAS_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO
 WHERE NOT EXISTS
    (select * from disciplinascursadas
     WHERE TODAS_DISCIPLINAS_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO.disciplina = disciplinascursadas.disciplina AND TODAS_DISCIPLINAS_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO.matricula = disciplinascursadas.matricula
     );
 
select * from DISCIPLINAS_A_CURSAR_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO where matricula=2;



-- tabela que apresenta todas disciplinas que não tem disciplinas como pre requisito que faltam cursar para cada matricula

drop view DISCIPLINAS_SEM_DISCIPLINAS_COMO_PRE_REQUISITO_A_CURSAR;

CREATE VIEW DISCIPLINAS_SEM_DISCIPLINAS_COMO_PRE_REQUISITO_A_CURSAR AS
 SELECT TODAS_DISCIPLINAS_QUE_FALTAM_CURSAR_DO_CURSO.iddisciplina, TODAS_DISCIPLINAS_QUE_FALTAM_CURSAR_DO_CURSO.idmatricula
 FROM TODAS_DISCIPLINAS_QUE_FALTAM_CURSAR_DO_CURSO
 WHERE NOT EXISTS
    (select * from preRequisito
     WHERE TODAS_DISCIPLINAS_QUE_FALTAM_CURSAR_DO_CURSO.iddisciplina = preRequisito.disciplina
     );
 
select * from DISCIPLINAS_SEM_DISCIPLINAS_COMO_PRE_REQUISITO_A_CURSAR where idmatricula=2;


-- tabela que apresenta a CH total de cada matricula

drop view CARGA_HORARIA_MATRICULAS;

CREATE VIEW CARGA_HORARIA_MATRICULAS AS

select matricula, sum(CH)
from DisciplinasCursadas
inner join disciplina
on disciplina.iddisciplina = DisciplinasCursadas.disciplina
GROUP by matricula;

select * from CARGA_HORARIA_MATRICULAS;


drop view DISICPLINAS_ELEGíVEIS_SEM_CONSIDERAR_CH;

CREATE VIEW DISICPLINAS_ELEGíVEIS_SEM_CONSIDERAR_CH AS

SELECT DISCIPLINAS_A_CURSAR_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO.disciplina, DISCIPLINAS_A_CURSAR_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO.matricula FROM DISCIPLINAS_A_CURSAR_QUE_SE_TEM_TODOS_PREREQUISITO_DO_CURSO
UNION
SELECT DISCIPLINAS_SEM_DISCIPLINAS_COMO_PRE_REQUISITO_A_CURSAR.iddisciplina, DISCIPLINAS_SEM_DISCIPLINAS_COMO_PRE_REQUISITO_A_CURSAR.idmatricula FROM DISCIPLINAS_SEM_DISCIPLINAS_COMO_PRE_REQUISITO_A_CURSAR;

select * from DISICPLINAS_ELEGíVEIS_SEM_CONSIDERAR_CH;













-- A fazer: restringir as disciplinas que n tem chmin atendida



-- Verificando a CHmin de uma disciplinas
select CHmin
from disciplina
where codigo = 'CAL29002';









