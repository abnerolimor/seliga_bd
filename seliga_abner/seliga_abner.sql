drop database bio_br;

create database if not exists bio_br;

use bio_br;

create table if not exists usuario (
id int not null auto_increment, primary key(id),
nome varchar(255) not null,
email varchar(255) not null
);

create table if not exists regiao (
id int not null auto_increment, primary key(id),
estado varchar(255) not null,
regiao_cardeal varchar(255) not null,
relevo varchar(255) not null
);

create table if not exists flora (
id int not null auto_increment, primary key(id),
planta varchar(255) not null,
descricao varchar(255) not null,
familia varchar(255) not null,
tipo varchar(255) not null
);

create table if not exists clima (
id int not null auto_increment, primary key(id),
temperatura_max varchar(255) not null,
temperatura_min varchar(255) not null,
precipitacao_anual varchar(255) not null,
umidade varchar(255) not null,
frequencia_preci varchar(255) not null
);

create table if not exists bioma (
id int not null auto_increment, primary key(id),
nome_bio varchar(255) not null,
id_usuario int,
foreign key(id_usuario) references usuario (id),
id_regiao int,
foreign key(id_regiao) references regiao (id),
id_flora int,
foreign key(id_flora) references flora (id),
id_clima int,
foreign key(id_clima) references clima (id)
);

insert into usuario (nome, email) 
values ("douglas", "douglas2009@hot.mail");
insert into regiao (estado, regiao_cardeal, relevo) 
values ("parana", "sul", "planalto");
insert into flora (planta, descricao, familia, tipo) 
values ('Ipê-amarelo', 'Árvore de grande porte, com flores amarelas muito vistosas, nativas da região tropical e subtropical da América do Sul. Possui uma copa densa e é conhecida pela sua florada intensa no inverno.', 'Bignoniaceae', 'Árvore');
INSERT INTO clima (temperatura_max, temperatura_min, precipitacao_anual, umidade, frequencia_preci)
VALUES ('25°C', '10°C', '1600 mm', 'Alta', 'Moderada');
INSERT INTO bioma (nome_bio, id_usuario, id_regiao, id_flora, id_clima)
VALUES ('Planalto Paranaense', 1, 1, 1, 1);