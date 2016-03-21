create table if not exists operadora (
    id tinyint unsigned auto_increment primary key,
    cnpj bigint unsigned unique not null,
    nome varchar(30)
);

create table if not exists central (
  id tinyint auto_increment primary key,
  operadora tinyint unsigned not null,
  regiao varchar(10),
  capacidadeDeLigacoes smallint unsigned,
  constraint fk_central_operadora foreign key (operadora) references operadora(id)
);

create table if not exists erb (
	id int unsigned auto_increment primary key,
	operadora tinyint unsigned not null,
	qos smallint unsigned default 500,
	limite smallint unsigned default 2500,
	area tinyint unsigned default 48,
	longitude float(8,6),
	latitude float(9,6),
	constraint fk_erb_operadora foreign key (operadora) references operadora(id)
);

create table if not exists numero (
  id int unsigned auto_increment primary key,
  numero int unsigned unique not null,
  operadora tinyint unsigned,
  credito int,
  constraint fk_numero_operadora foreign key (operadora) references operadora(id)
);

create table if not exists pessoa (
  id int unsigned auto_increment primary key,
  documento varchar(20) unique not null,
  nome varchar(100),
  endereco varchar(100)
);

create table if not exists imei (
  id int unsigned auto_increment primary key,
  numero int unsigned unique not null,
  proprietario int unsigned,
  numeroSerial varchar(30),
  constraint fk_imei_proprietario foreign key (proprietario) references pessoa(id)
);

create table if not exists chip (
  id int unsigned auto_increment primary key,
  iccid varchar(20) unique not null,
  registro int unsigned,
  vinculo int unsigned,
  associacao int unsigned,
  constraint fk_chip_registro foreign key (registro) references erb(id),
  constraint fk_chip_vinculo foreign key (vinculo) references numero(id),
  constraint fk_chip_associacao foreign key (associacao) references imei(id)
);

create table if not exists plano (
  id int unsigned auto_increment primary key,
  operadora tinyint unsigned,
  vigenciaInicio date,
  vigenciaTermino date,
  fidelizacao date,
  tipo varchar(10),
  cadencia varchar(10),
  custoCadencia varchar(10),
  constraint fk_plano_operadora foreign key (operadora) references operadora(id)
);

create table if not exists contrato (
  numero int unsigned auto_increment primary key,
  contratante int unsigned not null,
  contratado tinyint unsigned not null,
  plano int unsigned,
  enderecoCobranca varchar(50),
  constraint fk_contrato_contratante foreign key (contratante) references pessoa(id),
  constraint fk_contrato_contratado foreign key (contratado) references operadora(id),
  constraint fk_contrato_plano foreign key (plano) references plano(id)
);
