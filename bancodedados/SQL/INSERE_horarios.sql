



-- desc semestre;

insert into semestre(ano, metade)
    	values
    	(
    	'2016',    	    	 
    	'2'
		);

-- select * from  semestre;

-- select idsemestre from semestre where (ano = '2016' && metade = '2');

-- desc horario;

insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'DES29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'manhã',
    	'7:30',
    	'9:20',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'DES29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	 
    	'manhã',
    	'9:40',
    	'11:30',
    	'1'
),

    	(
    	(select iddisciplina from disciplina where codigo = 'ELI29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'1'
),   	
    	(
    	(select iddisciplina from disciplina where codigo = 'ELI29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'1'
),     	
    	(
    	(select iddisciplina from disciplina where codigo = 'PJI29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'PJI29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'1'
),          	   	
-- terça 2 -  fase 1  	
    	(
    	(select iddisciplina from disciplina where codigo = 'ELI29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'2'
),       	
    	(
    	(select iddisciplina from disciplina where codigo = 'GAL29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'2'
),      	
-- quarta 3- fase 1    	
    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'3'
),       	
    	(
    	(select iddisciplina from disciplina where codigo = 'GAL29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'3'
),     	
    	
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'3'
),     	
        	
-- quinta 4 - fase 1    	
    	(
    	(select iddisciplina from disciplina where codigo = 'LOG29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
     	'tarde',
    	'13:30',
    	'15:20',
    	'4'
),       	

    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'4'
),         	
   	
-- sexta 5 - fase 1    	
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'5'
),       	

    	(
    	(select iddisciplina from disciplina where codigo = 'GAL29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'5'
);  	
    	
-- horarios da segunda fase

-- segunda 1 - fase 1    	
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'1'
),       	

    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'1'
),      	
    	
-- terça 2 - fase 1    	
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'2'
),       	
  	
-- Quarta 3 - fase 1    	
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'3'
),       	

    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'3'
),  	
    	
-- Quinta 4 - fase 1    	
    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'4'
),       	

    	(
    	(select iddisciplina from disciplina where codigo = 'ELI29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'4'
),      	
-- Sexta 5 - fase 1    	
    	(
    	(select iddisciplina from disciplina where codigo = 'ELI29001'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'5'
);       	
 
-- Horarios da segunda fase 
-- Segunda 1 - fase 2 
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'PRG29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'manhã',
    	'07:30',
    	'17:30',
    	'1'
);

insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'PRG29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'1'
),
-- Terça 2 - fase 2 

    	(
    	(select iddisciplina from disciplina where codigo = 'CIE29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'2'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'ALG29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'2'
),

-- Quarta 3 - fase 2 
    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'3'
),

    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'3'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'QMC29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'13:30',
    	'15:40',
    	'3'
),

-- Quinta 4 - fase 2 
    	(
    	(select iddisciplina from disciplina where codigo = 'ALG29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'4'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'CIE29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'4'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'4'
),

-- Sexta 5 - fase 2 

    	(
    	(select iddisciplina from disciplina where codigo = 'PRG29002'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'5'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29002'),
     	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'5'
);

-- Horários terceira fase

-- Segunda 1 - fase 3 
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'PRG29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'15:40',
    	'17:20',
    	'1'
),   	
    	 	   	
-- terça 2 - fase 3 
    	(
    	(select iddisciplina from disciplina where codigo = 'CIL29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'2'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'ELA29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'2'
),      	
-- quarta 3- fase 3 
    	(
    	(select iddisciplina from disciplina where codigo = 'ELA29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'3'
),  
    	(
    	(select iddisciplina from disciplina where codigo = 'CIE29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'3'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'QMC29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'3'
),     	
        	
-- quinta 4 - fase 3
    	(
    	(select iddisciplina from disciplina where codigo = 'CIL29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'4'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'PRG29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'4'
), 
    	(
    	(select iddisciplina from disciplina where codigo = 'CIL29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'4'
),           	
    	
-- sexta 5 - fase 3
    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'5'
), 
    	(
    	(select iddisciplina from disciplina where codigo = 'CIE29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'5'
);      	

-- Horarios da quarta fase 
-- Segunda 1 - fase 4 
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'POO29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'MIC29004'),
      	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'1'
),

-- Terça 2 - fase 4 
    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'2'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'RED29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'2'
),

-- Quarta 3 - fase 4 
    	(
    	(select iddisciplina from disciplina where codigo = 'ELA29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'3'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'MIC29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'3'
),


-- Quinta 4 - fase 4
    	(
    	(select iddisciplina from disciplina where codigo = 'ELA29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'4'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'RED29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'4'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'MEC29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	 
    	'tarde',
    	'13:30',
    	'15:40',
    	'4'
),

-- Sexta 5 - fase 4 
    	(
    	(select iddisciplina from disciplina where codigo = 'POO29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'5'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'CAL29004'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'5'
);




-- Horários quinta fase

-- Segunda 1 - fase 5 
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'RED29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'SOP29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	 
     	'tarde',
    	'15:40',
    	'17:20',
    	'1'
),   	
    	 	   	
-- terça 2 - fase 5 
    	(
    	(select iddisciplina from disciplina where codigo = 'SIS29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'2'
), 
    	(
    	(select iddisciplina from disciplina where codigo = 'SOP29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'2'
),      	
-- quarta 3- fase 5 
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'3'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'EST29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'3'
), 
    	(
    	(select iddisciplina from disciplina where codigo = 'QMC29003'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'3'
),     	
        	
-- quinta 4 - fase 5
    	(
    	(select iddisciplina from disciplina where codigo = 'EST29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'4'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'SIS29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'4'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:40',
    	'4'
),           	
    	
-- sexta 5 - fase 5
    	(
    	(select iddisciplina from disciplina where codigo = 'RED29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'5'
), 
    	(
    	(select iddisciplina from disciplina where codigo = 'FSC29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'5'
), 
    	(
    	(select iddisciplina from disciplina where codigo = 'MPQ29005'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'09:40',
    	'11:30',
    	'5'
);      	

-- Horarios da sexta fase 
-- Segunda 1 - fase 6 
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'SIS29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'1'
),

    	(
    	(select iddisciplina from disciplina where codigo = 'DLP29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'PRE29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'STD29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'1'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'FEN29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'13:30',
    	'15:40',
    	'1'
),

-- Terça 2 - fase 6 

    	(
    	(select iddisciplina from disciplina where codigo = 'PJI29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'2'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'DLP29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'2'
),

-- Quarta 3 - fase 6 
    	(
    	(select iddisciplina from disciplina where codigo = 'STD29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'3'
),

    	(
    	(select iddisciplina from disciplina where codigo = 'SIS29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'3'
),


-- Quinta 4 - fase 6
    	(
    	(select iddisciplina from disciplina where codigo = 'DLP29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'4'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'ANT29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'4'
),

-- Sexta 5 - fase 4 
    	(
    	(select iddisciplina from disciplina where codigo = 'PRE29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'5'
),
    	(
    	(select iddisciplina from disciplina where codigo = 'ANT29006'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'5'
);
-- Horários setima fase

-- Segunda 1 - fase 7 
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'COM29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'1'
),

    	(
    	(select iddisciplina from disciplina where codigo = 'PSD29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'15:40',
    	'17:20',
    	'1'
),   	
    	(
    	(select iddisciplina from disciplina where codigo = 'DLP29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'1'
),
    	    	 	   	
-- terça 2 - fase 7 
    	(
    	(select iddisciplina from disciplina where codigo = 'COM29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'2'
),       	

    	(
    	(select iddisciplina from disciplina where codigo = 'MTG29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'2'
),      	
-- quarta 3- fase 7    	

    	(
    	(select iddisciplina from disciplina where codigo = 'DLP29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'3'
),       	


    	(
    	(select iddisciplina from disciplina where codigo = 'MTG29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'3'
),     	
    	
-- quinta 4 - fase 7    	

    	(
    	(select iddisciplina from disciplina where codigo = 'PSD29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),    	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'4'
),       	


    	(
    	(select iddisciplina from disciplina where codigo = 'RTX29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),     	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'4'
), 

    	(
    	(select iddisciplina from disciplina where codigo = 'PTG29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'4'
),     	

-- sexta 5 - fase 7    	

    	(
    	(select iddisciplina from disciplina where codigo = 'RTX29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'5'
),       	


    	(
    	(select iddisciplina from disciplina where codigo = 'COM29007'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'5'
);      	


-- Horarios da oitava fase 
-- Segunda 1 - fase 8 
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'BCD29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'1'
),

    	(
    	(select iddisciplina from disciplina where codigo = 'CSF29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'1'
),

    	(
    	(select iddisciplina from disciplina where codigo = 'PTC29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'1'
),


-- Terça 2 - fase 8 

    	(
    	(select iddisciplina from disciplina where codigo = 'COM29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'2'
),


    	(
    	(select iddisciplina from disciplina where codigo = 'PJI29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'2'
),

-- Quarta 3 - fase 8 

    	(
    	(select iddisciplina from disciplina where codigo = 'STE29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'3'
),


    	(
    	(select iddisciplina from disciplina where codigo = 'COM29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'3'
),



    	(
    	(select iddisciplina from disciplina where codigo = 'ADM29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:30',
    	'3'
),


-- Quinta 4 - fase 8

    	(
    	(select iddisciplina from disciplina where codigo = 'STE29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'4'
),


    	(
    	(select iddisciplina from disciplina where codigo = 'PTC29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'4'
),

-- Sexta 5 - fase 8 

    	(
    	(select iddisciplina from disciplina where codigo = 'BCD29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'07:30',
    	'09:20',
    	'5'
),


    	(
    	(select iddisciplina from disciplina where codigo = 'CSF29008'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'manhã',
    	'09:40',
    	'11:30',
    	'5'
);



-- Horários nona fase

-- Segunda 1 - fase 9 
insert into horario(disciplina, semestre, turno, inicio,termino,dia)
    	values
    	(
    	(select iddisciplina from disciplina where codigo = 'SMU29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'1'
),
    	
    	(
    	(select iddisciplina from disciplina where codigo = 'TCC29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:20',
    	'1'
),   	
    	
    	 	   	
-- terça 2 - fase 9

    	(
    	(select iddisciplina from disciplina where codigo = 'STC29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'2'
),       	

    	(
    	(select iddisciplina from disciplina where codigo = 'ECO29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'2'
),      	
-- quarta 3- fase 9    	

    	(
    	(select iddisciplina from disciplina where codigo = 'ADS29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'3'
),       	

    	(
    	(select iddisciplina from disciplina where codigo = 'SUS29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'3'
),     	
    	
-- quinta 4 - fase 9    	

    	(
    	(select iddisciplina from disciplina where codigo = 'CRF29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'13:30',
    	'15:20',
    	'4'
),       	


    	(
    	(select iddisciplina from disciplina where codigo = 'STC29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),      	 
    	'tarde',
    	'15:40',
    	'17:30',
    	'4'
), 

-- sexta 5 - fase 9    	


    	(
    	(select iddisciplina from disciplina where codigo = 'ADS29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:40',
    	'5'
),     	


    	(
    	(select iddisciplina from disciplina where codigo = 'SMU29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),  	    	 
    	'tarde',
    	'13:30',
    	'15:40',
    	'5'
),      	


    	(
    	(select iddisciplina from disciplina where codigo = 'CRF29009'),
    	(select idsemestre from semestre where (ano = '2016' && metade = '2')),   	    	 
    	'tarde',
    	'13:30',
    	'15:40',
    	'5'
); 


