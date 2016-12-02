

-- TRABALHO COM VIEWS (falta juntar as views para operacao unica)


-- apresenta todas disciplinas do curso associadas à uma mátricula para iniciar a operação de criação da tabela referente a disciplinas elegiveis


drop view todas_disciplinas_do_curso;

CREATE VIEW todas_disciplinas_do_curso AS
SELECT disciplina.iddisciplina, matricula.idmatricula, disciplina.CHmin
FROM disciplina
LEFT JOIN matricula
ON (true);

select * from todas_disciplinas_do_curso;


-- primeira operação feita sobre a tabela inicial que elimina todas as matérias já crusadas

drop view todas_disciplinas_que_faltam_cursar_do_curso;

CREATE VIEW todas_disciplinas_que_faltam_cursar_do_curso AS
 SELECT todas_disciplinas_do_curso.iddisciplina, todas_disciplinas_do_curso.idmatricula
 FROM todas_disciplinas_do_curso
 WHERE NOT EXISTS
    (select * from disciplinascursadas
     WHERE todas_disciplinas_do_curso.iddisciplina = disciplinascursadas.disciplina AND todas_disciplinas_do_curso.idmatricula = disciplinascursadas.matricula
     );
 
select * from todas_disciplinas_que_faltam_cursar_do_curso;


-- gera o conjunto de disciplinas que apresentam algum pre-requisito completo.

drop view todas_disciplinas_que_se_tem_algum_prerequisito_do_curso;

CREATE VIEW todas_disciplinas_que_se_tem_algum_prerequisito_do_curso AS
SELECT prerequisito.disciplina, disciplinascursadas.matricula
FROM prerequisito
INNER JOIN disciplinascursadas
ON (disciplinascursadas.disciplina=prerequisito.prerequisito AND prerequisito.obrigatorio = 1 AND prerequisito.eixo = 1);

select * from todas_disciplinas_que_se_tem_algum_prerequisito_do_curso;



-- tabela que indica a quantidade de pre-requisitos obrigatórios atingidos por uma certa matrícula

drop view quantidade_de_prerequisitos_das_disciplinass_cursadas;

CREATE VIEW quantidade_de_prerequisitos_das_disciplinass_cursadas AS

 SELECT disciplina, matricula, count(disciplina) as qntpre_atingido
  FROM todas_disciplinas_que_se_tem_algum_prerequisito_do_curso
 GROUP by disciplina, matricula;

select * from quantidade_de_prerequisitos_das_disciplinass_cursadas ;



-- tabela que indica a quantidade de pre requisitos necessarios para cada disciplina

drop view quantidade_de_prerequisitos_das_disciplinas;

CREATE VIEW quantidade_de_prerequisitos_das_disciplinas AS

SELECT disciplina, count(disciplina) as qntpre
  FROM prerequisito
  WHERE obrigatorio = 1 AND eixo = 1
  GROUP by disciplina;

select * from quantidade_de_prerequisitos_das_disciplinas;


-- quantidade de pre requisitos necessarios para cada disciplina associados a todas matriculas para a operacao de verificar se se antende todos pre requisitos

drop view quantidade_de_prerequisitos_das_disciplinasS_TODAS_MATRICULAS;

CREATE VIEW quantidade_de_prerequisitos_das_disciplinasS_TODAS_MATRICULAS AS
SELECT quantidade_de_prerequisitos_das_disciplinas.disciplina, matricula.idmatricula, quantidade_de_prerequisitos_das_disciplinas.qntpre
FROM quantidade_de_prerequisitos_das_disciplinas
JOIN matricula
ON (true);

select * from quantidade_de_prerequisitos_das_disciplinasS_TODAS_MATRICULAS;

-- tabela que retorna todas as disciplinas cujo os pre-requisitos foram atingidos.

drop view todas_disciplinas_que_se_tem_todos_prerequisitos_do_curso;

CREATE VIEW todas_disciplinas_que_se_tem_todos_prerequisitos_do_curso AS

 SELECT quantidade_de_prerequisitos_das_disciplinass_cursadas.disciplina, quantidade_de_prerequisitos_das_disciplinass_cursadas.matricula
 FROM quantidade_de_prerequisitos_das_disciplinass_cursadas
 INNER JOIN quantidade_de_prerequisitos_das_disciplinasS_TODAS_MATRICULAS
  ON ( quantidade_de_prerequisitos_das_disciplinass_cursadas.disciplina = quantidade_de_prerequisitos_das_disciplinasS_TODAS_MATRICULAS.disciplina AND quantidade_de_prerequisitos_das_disciplinass_cursadas.matricula = quantidade_de_prerequisitos_das_disciplinasS_TODAS_MATRICULAS.idmatricula AND quantidade_de_prerequisitos_das_disciplinass_cursadas.qntpre_atingido = quantidade_de_prerequisitos_das_disciplinasS_TODAS_MATRICULAS.qntpre
     );
 
select * from todas_disciplinas_que_se_tem_todos_prerequisitos_do_curso;



-- tabela que apresenta todas disciplinas do curso que uma matricula atingiu os pre requisitos e ainda não a cursou

drop view disciplinas_a_cursar_que_se_tem_todos_prerequisitos_do_curso;

CREATE VIEW disciplinas_a_cursar_que_se_tem_todos_prerequisitos_do_curso AS
 SELECT todas_disciplinas_que_se_tem_todos_prerequisitos_do_curso.disciplina, todas_disciplinas_que_se_tem_todos_prerequisitos_do_curso.matricula
 FROM todas_disciplinas_que_se_tem_todos_prerequisitos_do_curso
 WHERE NOT EXISTS
    (select * from disciplinascursadas
     WHERE todas_disciplinas_que_se_tem_todos_prerequisitos_do_curso.disciplina = disciplinascursadas.disciplina AND todas_disciplinas_que_se_tem_todos_prerequisitos_do_curso.matricula = disciplinascursadas.matricula
     );
 
select * from disciplinas_a_cursar_que_se_tem_todos_prerequisitos_do_curso;



-- tabela que apresenta todas disciplinas que não tem disciplinas como pre requisito que faltam cursar para cada matricula

drop view disciplinas_sem_disciplinas_como_pre_requisito_a_cursar;

CREATE VIEW disciplinas_sem_disciplinas_como_pre_requisito_a_cursar AS
 SELECT todas_disciplinas_que_faltam_cursar_do_curso.iddisciplina, todas_disciplinas_que_faltam_cursar_do_curso.idmatricula
 FROM todas_disciplinas_que_faltam_cursar_do_curso
 WHERE NOT EXISTS
    (select * from prerequisito
     WHERE todas_disciplinas_que_faltam_cursar_do_curso.iddisciplina = prerequisito.disciplina
     );
 
select * from disciplinas_sem_disciplinas_como_pre_requisito_a_cursar;



-- tabela com novos alunos

drop view alunos_novos;

CREATE VIEW alunos_novos AS

select matricula.idmatricula, 0
from matricula
WHERE NOT EXISTS( 
select * from disciplinascursadas
WHERE disciplinascursadas.matricula=matricula.idmatricula);

select * from alunos_novos;




-- tabela que apresenta a CH total de cada matricula ( deve se realizar o union com alunso novos pois a logica nao inclui a soma de CH de matriculas nao presentes em disciplinascursadas

drop view carga_horaria_matriculas;

CREATE VIEW carga_horaria_matriculas AS

select matricula, sum(CH) as CHmat
from disciplinascursadas
right join disciplina
on disciplina.iddisciplina = disciplinascursadas.disciplina
GROUP by matricula
UNION
select * from alunos_novos;

select * from carga_horaria_matriculas;




-- tabela com todas as disciplinas elegiveis sem considerar a carga horaria

drop view disciplinas_elegiveis_sem_considerar_ch;

CREATE VIEW disciplinas_elegiveis_sem_considerar_ch AS

SELECT disciplinas_a_cursar_que_se_tem_todos_prerequisitos_do_curso.disciplina, disciplinas_a_cursar_que_se_tem_todos_prerequisitos_do_curso.matricula FROM disciplinas_a_cursar_que_se_tem_todos_prerequisitos_do_curso
UNION
SELECT disciplinas_sem_disciplinas_como_pre_requisito_a_cursar.iddisciplina, disciplinas_sem_disciplinas_como_pre_requisito_a_cursar.idmatricula FROM disciplinas_sem_disciplinas_como_pre_requisito_a_cursar;

select * from disciplinas_elegiveis_sem_considerar_ch where matricula=3;


-- tabela com todas disciplinas one uma matricula atingiu a CH min

drop view disciplinas_com_CHmin_atingida;

CREATE VIEW disciplinas_com_CHmin_atingida AS

SELECT todas_disciplinas_do_curso.iddisciplina, todas_disciplinas_do_curso.idmatricula
FROM todas_disciplinas_do_curso, carga_horaria_matriculas
WHERE
(carga_horaria_matriculas.matricula=todas_disciplinas_do_curso.idmatricula AND todas_disciplinas_do_curso.CHmin<=carga_horaria_matriculas.CHmat);

 
select * from disciplinas_com_CHmin_atingida;



-- Disciplinas elegiveis

drop view disciplinas_elegiveis;

CREATE VIEW disciplinas_elegiveis AS

select disciplinas_elegiveis_sem_considerar_ch.matricula, disciplinas_elegiveis_sem_considerar_ch.disciplina
from disciplinas_elegiveis_sem_considerar_ch
inner join disciplinas_com_CHmin_atingida
on (disciplinas_elegiveis_sem_considerar_ch.matricula = disciplinas_com_CHmin_atingida.idmatricula AND disciplinas_elegiveis_sem_considerar_ch.disciplina = disciplinas_com_CHmin_atingida.iddisciplina );

select * from disciplinas_elegiveis;




-- Disciplinas elegiveis no formato final

drop view disciplinas_elegiveis_pretty;

CREATE VIEW disciplinas_elegiveis_pretty AS

select  disciplina.codigo , matricula.numero
from disciplinas_elegiveis, disciplina, matricula
WHERE(disciplinas_elegiveis.disciplina=disciplina.iddisciplina AND disciplinas_elegiveis.matricula=matricula.idmatricula);

select * from disciplinas_elegiveis_pretty;

