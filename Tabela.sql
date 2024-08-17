CREATE schema consultorio;
use consultorio;

CREATE TABLE login(
email varchar(40) not null PRIMARY key,
senha varchar(8) not null UNIQUE
);

CREATE TABLE paciente(
nome varchar(60) not null,
idade int not null,
endereco varchar(60) not null,
telefone int not null,
email varchar(40) not null PRIMARY key,
historico_medico varchar(500) null
);


CREATE TABLE medico(
nome varchar(60) not null,
especialidade varchar(30) not null,
telefone int,
idade int not null,
email varchar(40) not null PRIMARY key,
CH int not null
);
 
 
create table agendar_consulta(
paciente varchar(60),
medico varchar(60),
data_agend date, 
hora datetime
);


CREATE table historico_consul(
paciente varchar(60),
medico varchar(60),
data_agend date, 
hora datetime,
consulta_rotina varchar (300)
);