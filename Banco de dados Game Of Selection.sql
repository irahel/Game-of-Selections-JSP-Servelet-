create database GameOfSelections;
use GameOfSelections;

create table usuarios(
	id_usuario int not null auto_increment,
    nome varchar(50) not null,
    cpf varchar(20) not null unique,
    rg varchar(20) not null unique,
    matricula varchar(20) not null unique,
    email varchar(100) not null unique,
    login varchar(50) not null unique,
    senha varchar(50) not null,
    tipo enum('ALUNO', 'PROFESSOR', 'ADM') not null,
    avaliador enum('TRUE', 'FALSE') default 'FALSE',
    primary key(id_usuario)
);

create table edital(
	id_edital int not null auto_increment,
    titulo varchar(100) unique,
    descricao varchar(700),
    link_edital varchar(200) unique,
    area varchar(100),
    lancado enum('TRUE','FALSE') default 'FALSE',
    primary key(id_edital)
);

create table selecao(
	id_selecao int not null auto_increment,
    id_profAss int not null,
    id_edital int not null,
    data_ini date not null,
    data_fim date not null,
    qtd_vagas int not null,
    qtd_inscritos int default 0,
    primary key(id_selecao),
    foreign key(id_profAss) references usuarios(id_usuario),
    foreign key(id_edital) references edital(id_edital) on delete cascade
);

create table etapa(
	id_etapa int not null auto_increment,
    id_selecao int not null,
    id_avaliador int,
    avaliada enum('TRUE', 'FALSE') default 'FALSE',
    primary key(id_etapa),
    foreign key(id_selecao) references selecao(id_selecao) on delete cascade,
    foreign key(id_avaliador) references usuarios(id_usuario)
);

create table notas(
	id_nota int not null auto_increment,
    id_etapa int not null,
    id_aluno int not null,
    id_selecao int not null,
    nota float,
    primary key(id_nota),
    foreign key(id_etapa)references etapa(id_etapa) on delete cascade,
    foreign key(id_aluno)references usuarios(id_usuario)
);

create table alunos_inscritos(
	id_aluno int not null,
    id_selecao int not null,
    nota_final float,
    situacao_aluno enum('DEFERIDO', 'INDEFERIDO', 'NENHUMA') default 'NENHUMA',
    foreign key(id_aluno) references usuarios(id_usuario),
    foreign key(id_selecao) references selecao(id_selecao) on delete cascade
);

DELIMITER $

create procedure tornar_avaliador(IN id_prof int)
begin
	update usuarios set avaliador= 'TRUE' where id_usuario=id_prof;
end
$

DELIMITER $$

create procedure listar_editais(IN limite int)
begin
	select * from edital where lancado='TRUE' order by id_edital DESC limit limite;
end

$$

# Insercao basica
insert into usuarios(nome,cpf,rg,matricula,email,login,senha,tipo) 
values('carlos', 123,1234,321,'victordantas@itanhaem.com', 'carlos', 'qwe', 'ADM');