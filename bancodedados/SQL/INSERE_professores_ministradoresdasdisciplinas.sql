desc professor;
insert into professor(nome, documento, campus)
    	values
     	(
    	'Emerson Ribeiro de Mello',
    	'1234567890',
    	(select id from campus where nome = 'São José')
    	),  
     	(
    	'Eraldo Silveira e Silva',
    	'0123456789',
    	(select id from campus where nome = 'São José')
    	), 
     	(
    	'Jorge Henrique Busatto Casagrande',
    	'9012345678',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Marcelo Maia Sobral',
    	'8901234567',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Marcos Moecke',
    	'7890123456',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Mario de Noronha Neto',
    	'6789012345',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Pedro Armando da Silva Júnior',
    	'5678901234',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Roberto Wanderley da Nóbrega',
    	'4567890123',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Saul Silva Caetano',
    	'3456789012',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Tiago Semprebom',
    	'2345678901',
    	(select id from campus where nome = 'São José')
    	);
select * from professor;
select * from disciplina;

desc MinistradoresDasDisciplinas;
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
    (
    (select id from disciplina where codigo = 'STD29006'),
    (select id from professor where documento = '1234567890')
    ),
	(
    (select id from disciplina where codigo = 'POO29004'),
    (select id from professor where documento = '1234567890')
    );
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
    (
    (select id from disciplina where codigo = 'PJI29001'),
    (select id from professor where documento = '0123456789')
    ),
	(
    (select id from disciplina where codigo = 'PRG29002'),
    (select id from professor where documento = '0123456789')
    ),
	(
    (select id from disciplina where codigo = 'ADS29009'),
    (select id from professor where documento = '0123456789')
    );    
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
    (
    (select id from disciplina where codigo = 'RED29005'),
    (select id from professor where documento = '9012345678')
    ); 
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
    (
    (select id from disciplina where codigo = 'PRG29003'),
    (select id from professor where documento = '8901234567')
    ),
	(
    (select id from disciplina where codigo = 'PTC29008'),
    (select id from professor where documento = '8901234567')
    );    
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'DLP29006'),
    (select id from professor where documento = '7890123456')
    ),
	(
    (select id from disciplina where codigo = 'CIL29003'),
    (select id from professor where documento = '7890123456')
    ),
    (
    (select id from disciplina where codigo = 'PSD29007'),
    (select id from professor where documento = '7890123456')
    ),
	(
    (select id from disciplina where codigo = 'DLP29007'),
    (select id from professor where documento = '7890123456')
    );     
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'COM29007'),
    (select id from professor where documento = '6789012345')
    ),
	(
    (select id from disciplina where codigo = 'CSF29008'),
    (select id from professor where documento = '6789012345')
    );
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'ELI29001'),
    (select id from professor where documento = '5678901234')
    ),
	(
    (select id from disciplina where codigo = 'ELA29003'),
    (select id from professor where documento = '5678901234')
    );

insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'PRE29006'),
    (select id from professor where documento = '4567890123')
    ),
	(
    (select id from disciplina where codigo = 'COM29008'),
    (select id from professor where documento = '4567890123')
    );
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'PJI29001'),
    (select id from professor where documento = '3456789012')
    ),
	(
    (select id from disciplina where codigo = 'MTG29007'),
    (select id from professor where documento = '3456789012')
    );
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'LOG29001'),
    (select id from professor where documento = '2345678901')
    ),
	(
    (select id from disciplina where codigo = 'RED29004'),
    (select id from professor where documento = '2345678901')
    );
    
select * from MinistradoresDasDisciplinas;  
