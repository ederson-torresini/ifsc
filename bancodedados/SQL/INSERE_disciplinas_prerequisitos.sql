
/*
Referências para a listagem das disciplinas e pré-requisitos:




- Rede Curricular: http://wiki.sj.ifsc.edu.br/wiki/index.php/Rede_Curricular_da_Engenharia_de_Telecomunica%C3%A7%C3%B5es




- Páginas das disciplinas: http://wiki.sj.ifsc.edu.br/wiki/index.php/Engenharia_de_Telecomunica%C3%A7%C3%B5es_(p%C3%A1ginas_das_disciplinas)




*/










-- Disciplinas










-- FASE 1




insert into disciplina(codigo, nome, CH, CHmin)




values




('DES29001', 'Desenho técnico', '36', '0'),




('CAL29001', 'Cálculo I', '72', '0'),




('ELI29001', 'Eletricidade e Instrumentação', '72', '0'),




('LOG29001', 'Lógica', '36', '0'),




('PJI29001', 'Projeto Integrador I', '54', '0'),




('FSC29001', 'Física I', '72', '0'),




('GAL29001', 'Geometria Analítica', '54', '0');










-- FASE 2




insert into disciplina(codigo, nome, CH, CHmin)




values




('CAL29002', 'Cálculo II', '72', '0'),




('QMC29002', 'Química Geral', '54', '0'),




('CIE29002', 'Circuitos Elétricos I', '72', '0'),




('FSC29002', 'Física II', '72', '0'),




('ALG29002', 'Álgebra Linear', '54', '0'),




('PRG29002', 'Programação I', '72', '0');










-- FASE 3




insert into disciplina(codigo, nome, CH, CHMin)




values




('CAL29003', 'Cálculo III', '72', '0'),




('QMC29003', 'Ciência e Tecnologia dos Materiais', '36', '0'),




('CIE29003', 'Circuitos Elétricos II', '72', '0'),




('ELA29003', 'Eletrônica I', '72', '0'),




('CIL29003', 'Circuitos Lógicos', '72', '0'),




('PRG29003', 'Programação II', '72', '0');










-- FASE 4




insert into disciplina(codigo, nome, CH, CHMin)




values




('MEC29004', 'Mecânica dos Sólidos', '36', '0'),




('CAL29004', 'Cálculo IV', '72', '0'),




('RED29004', 'Redes de Computadores I', '72', '0'),




('ELA29004', 'Eletrônica II', '72', '0'),




('MIC29004', 'Microprocessadores', '72', '0'),




('POO29004', 'Programação Orientada a Objetos', '72', '0');










-- FASE 5




insert into disciplina(codigo, nome, CH, CHmin)




values




('MPQ29005', 'Metodologia de Pesquisa', '36', '0'),




('EST29005', 'Estatística e Probabilidade', '54', '0'),




('RED29005', 'Redes de Computadores II', '72', '0'),




('FSC29005', 'Física III', '90', '0'),




('SOP29005', 'Sistemas Operacionais', '72', '0'),




('SIS29005', 'Sinais e Sistemas I', '72', '0');










-- FASE 6




insert INTO disciplina(codigo, nome, CH, CHmin)




values




('FEN29006', 'Fenômenos de Transportes', '36', '0'),




('PRE29006', 'Processos Estocásticos', '54', '0'),




('ANT29006', 'Antenas e Propagação', '72', '0'),




('STD29006', 'Sistemas Distribuídos', '54', '0'),




('DLP29006', 'Dispositivos Lógicos Programáveis I', '90', '0'),




('SIS29006', 'Sinais e Sistemas II', '54', '0'),




('PJI29006', 'Projeto Integrador II', '36', '0');










-- FASE 7




insert INTO disciplina(codigo, nome, CH, CHmin)




values




('PTG29007', 'Comunicação e Expressão', '36', '1980'),




('RTX29007', 'Redes de Transmissão', '72', '0'),




('MTG29007', 'Meios de Transmissão Guiados', '72', '0'),




('DLP29007', 'Dispositivos Lógicos Programáveis II', '54', '0'),




('PSD29007', 'Processamento de Sinais Digitais', '72', '0'),




('COM29007', 'Sistemas de Comunicação I', '90', '0');










-- FASE 8




insert INTO disciplina(codigo, nome, CH, CHmin)




values




('BCD29008', 'Bancos de Dados', '54', '0'),




('STE29008', 'Sistemas Embarcados', '72', '0'),




('PJI29008', 'Projeto Integrador III', '36', '0'),




('COM29008', 'Sistemas de Comunicação II', '72', '0'),




('PTC29008', 'Projeto de Protocolos', '54', '0'),




('CSF29008', 'Comunicações sem Fio', '72', '0'),




('ADM29008', 'Administração para Engenharia', '36', ' 1980');










-- FASE 9




insert INTO disciplina(codigo, nome, CH, CHmin)




values




('ECO29009', 'Economia para Engenharia', '36', '1980'),




('SUS29009', 'Engenharia e Sustentabilidade', '36', '0'),




('SMU29009', 'Sistemas Multimídia', '54', '0'),




('ADS29009', 'Avaliação de Desempenho de Sistemas', '54', '0'),




('STC29009', 'Sistemas de Telecomunicação', '72', '0'),




('CRF29009', 'Circuitos de Rádio-Frequência', '72', '0'),




('TCC29009', 'Trabalho de Conclusão de Curso I', '36', '2160');










-- FASE 10




insert INTO disciplina(codigo, nome, CH, CHmin)




values




('EST29010', 'Estágio Obrigatório', '360', '2160'),




('TCC29010', 'Trabalho de Conclusão de Curso II', '108', '2560');
















/*




Pré-requisitos










Tradução dos valores binários:




- Primeiro valor:




- obrigatório: true;




- recomendado: false.




- Segundo campo:




- Eixo vertical (fases anteriores): true;




- Eixo horizontal (disciplinas paralelas): false.




*/










-- Equipe 1




insert into preRequisito(obrigatorio, eixo, disciplina, preRequisito)




values




(




true,




true,




(select iddisciplina from disciplina where codigo = 'PTC29008'),




(select iddisciplina  from disciplina where codigo = 'RED29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PTC29008'),




(select iddisciplina  from disciplina where codigo = 'PRG29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CSF29008'),




(select iddisciplina  from disciplina where codigo = 'ANT29006')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CSF29008'),




(select iddisciplina  from disciplina where codigo = 'PRE29006')




);










-- Equipe 2




insert into preRequisito(obrigatorio, eixo,disciplina, preRequisito)




values




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CAL29002'),




(select iddisciplina  from disciplina where codigo = 'CAL29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CIE29002'),




(select iddisciplina  from disciplina where codigo = 'CAL29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CIE29002'),




(select iddisciplina  from disciplina where codigo = 'ELI29001')




),




(




false,




false,




(select iddisciplina  from disciplina where codigo = 'CIE29002'),




(select iddisciplina  from disciplina where codigo = 'ALG29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'FSC29002'),




(select iddisciplina  from disciplina where codigo = 'FSC29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'FSC29002'),




(select iddisciplina  from disciplina where codigo = 'CAL29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'ALG29002'),




(select iddisciplina  from disciplina where codigo = 'GAL29001')




),


(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'PJI29006')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'PSD29007')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'COM29007')




),




(




true,




false,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'STE29008')




),




(




true,




false,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'DLP29007')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'ANT29006')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'RTX29007')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'MTG29007')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29008'),




(select iddisciplina  from disciplina where codigo = 'ELA29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'COM29008'),




(select iddisciplina  from disciplina where codigo = 'COM29007')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'STE29008'),




(select iddisciplina  from disciplina where codigo = 'SOP29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'BCD29008'),




(select iddisciplina  from disciplina where codigo = 'POO29004')




);










-- Equipe 3




insert into preRequisito(obrigatorio, eixo, disciplina, preRequisito)




values




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CAL29003'),




(select iddisciplina  from disciplina where codigo = 'CAL29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CAL29003'),




(select iddisciplina  from disciplina where codigo = 'GAL29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'QMC29003'),




(select iddisciplina  from disciplina where codigo='QMC29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CIE29003'),




(select iddisciplina  from disciplina where codigo = 'CAL29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CIE29003'),




(select iddisciplina  from disciplina where codigo = 'CIE29002')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'ELA29003'),




(select iddisciplina  from disciplina where codigo='QMC29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'ELA29003'),




(select iddisciplina  from disciplina where codigo = 'CIE29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'ELA29003'),




(select iddisciplina  from disciplina where codigo = 'CAL29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CIL29003'),




(select iddisciplina  from disciplina where codigo ='LOG29001')




),




(




false,




false,




(select iddisciplina  from disciplina where codigo = 'CIL29003'),




(select iddisciplina  from disciplina where codigo ='ELA29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PRG29003'),




(select iddisciplina  from disciplina where codigo ='PRG29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'SMU29009'),




(select iddisciplina  from disciplina where codigo ='RED29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'ADS29009'),




(select iddisciplina  from disciplina where codigo = 'PTC29008')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'ADS29009'),




(select iddisciplina  from disciplina where codigo = 'PRE29006')




);










-- Equipe 4




insert into preRequisito(obrigatorio, eixo, disciplina, preRequisito)




values




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'MEC29004'),




(select iddisciplina  from disciplina where codigo = 'FSC29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'MEC29004'),




(select iddisciplina  from disciplina where codigo = 'CAL29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CAL29004'),




(select iddisciplina  from disciplina where codigo = 'CAL29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'RED29004'),




(select iddisciplina  from disciplina where codigo = 'CIL29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'ELA29004'),




(select iddisciplina  from disciplina where codigo = 'ELA29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'ELA29004'),




(select iddisciplina  from disciplina where codigo = 'CAL29003')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'ELA29004'),




(select iddisciplina  from disciplina where codigo = 'CIE29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'MIC29004'),




(select iddisciplina  from disciplina where codigo = 'CIL29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'POO29004'),




(select iddisciplina  from disciplina where codigo = 'PRG29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'STC29009'),




(select iddisciplina  from disciplina where codigo = 'COM29007')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'STC29009'),




(select iddisciplina  from disciplina where codigo = 'RTX29007')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'STC29009'),




(select iddisciplina  from disciplina where codigo = 'COM29008')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CRF29009'),




(select iddisciplina  from disciplina where codigo = 'COM29007')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CRF29009'),




(select iddisciplina  from disciplina where codigo = 'DLP29006')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'CRF29009'),




(select iddisciplina  from disciplina where codigo = 'ANT29006')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'TCC29009'),




(select iddisciplina  from disciplina where codigo = 'PTG29007')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'TCC29009'),




(select iddisciplina  from disciplina where codigo = 'MPQ29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'TCC29010'),




(select iddisciplina  from disciplina where codigo = 'TCC29009')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'TCC29010'),




(select iddisciplina  from disciplina where codigo = 'PJI29008')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'EST29010'),




(select iddisciplina  from disciplina where codigo = 'PTG29007')




);










-- Equipe 5




insert into preRequisito(obrigatorio, eixo,disciplina, preRequisito)




values




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'DLP29007'),




( select iddisciplina  from disciplina where codigo = 'DLP29006')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'DLP29007'),




(select iddisciplina  from disciplina where codigo = 'MIC29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'MTG29007'),




(select iddisciplina  from disciplina where codigo = 'FSC29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'MTG29007'),




( select iddisciplina  from disciplina where codigo = 'SIS29006')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'MTG29007'),




( select iddisciplina  from disciplina where codigo = 'QMC29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'RTX29007'),




(select iddisciplina  from disciplina where codigo = 'RED29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'RTX29007'),




(select iddisciplina  from disciplina where codigo = 'SIS29006')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'SIS29005'),




(select iddisciplina  from disciplina where codigo = 'CAL29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'SIS29005'),




(select iddisciplina  from disciplina where codigo = 'ALG29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'SIS29005'),




(select iddisciplina  from disciplina where codigo = 'CIE29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'SOP29005'),




(select iddisciplina  from disciplina where codigo = 'PRG29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'SOP29005'),




(select iddisciplina  from disciplina where codigo = 'MIC29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'FSC29005'),




(select iddisciplina  from disciplina where codigo = 'FSC29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'FSC29005'),




(select iddisciplina  from disciplina where codigo = 'CAL29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'RED29005'),




(select iddisciplina  from disciplina where codigo = 'RED29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'EST29005'),




(select iddisciplina  from disciplina where codigo = 'CAL29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'EST29005'),




(select iddisciplina  from disciplina where codigo = 'CAL29001')




);










-- Equipe 6




insert into preRequisito(obrigatorio, eixo, disciplina, preRequisito)




values




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'FEN29006'),




(select iddisciplina  from disciplina where codigo = 'FSC29002')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PRE29006'),




(select iddisciplina  from disciplina where codigo = 'EST29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PRE29006'),




(select iddisciplina  from disciplina where codigo = 'CAL29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'ANT29006'),




(select iddisciplina  from disciplina where codigo= 'FSC29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'STD29006'),




(select iddisciplina  from disciplina where codigo = 'RED29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'STD29006'),




(select iddisciplina  from disciplina where codigo = 'SOP29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'STD29006'),




(select iddisciplina  from disciplina where codigo = 'POO29004')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'DLP29006'),




(select iddisciplina  from disciplina where codigo = 'CIL29003')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'SIS29006'),




(select iddisciplina  from disciplina where codigo = 'SIS29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29006'),




(select iddisciplina  from disciplina where codigo = 'PJI29001')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29006'),




(select iddisciplina  from disciplina where codigo = 'RED29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29006'),




(select iddisciplina  from disciplina where codigo = 'MIC29004')




),




(




true,




false,




(select iddisciplina  from disciplina where codigo = 'PJI29006'),




(select iddisciplina  from disciplina where codigo = 'STD29006')




),




(




false,




true,




(select iddisciplina  from disciplina where codigo = 'PJI29006'),




(select iddisciplina  from disciplina where codigo = 'MPQ29005')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PSD29007'),




(select iddisciplina  from disciplina where codigo = 'SIS29006')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'PSD29007'),




(select iddisciplina  from disciplina where codigo = 'DLP29006')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'COM29007'),




(select iddisciplina  from disciplina where codigo = 'SIS29006')




),




(




true,




true,




(select iddisciplina  from disciplina where codigo = 'COM29007'),




(select iddisciplina  from disciplina where codigo = 'PRE29006')


);
