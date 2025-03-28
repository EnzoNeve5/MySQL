CREATE DATABASE FormaturaDB;
USE FormaturaDB;

CREATE TABLE Cardapio (
    codigo int PRIMARY KEY,
    tipo varchar(40),
    preco float
);

CREATE TABLE Buffet (
    codigo int PRIMARY KEY,
    nome varchar(100),
    tempo_parc int
);

CREATE TABLE Funcionario (
    matricula int,
    nome varchar(100),
    telefone int,
    cargo varchar(40),
    salario float,
    uniforme varchar(1),
    lim_horas_extras int,
    valor_hora_extr int
);

CREATE TABLE Evento_Funcionario (
    cod_ev int,
    cod_func int,
    horas int
);

CREATE TABLE Universidade (
    codigo int PRIMARY KEY,
    instituicao varchar(20)
);

CREATE TABLE Pagamento (
    codigo int PRIMARY KEY,
    forma varchar(20)
);

CREATE TABLE Evento (
    codigo int PRIMARY KEY,
    evento varchar(20)
);

CREATE TABLE Area_Conhecimento (
    codigo int PRIMARY KEY,
    area varchar(20)
);

CREATE TABLE Curso (
    codigo int,
    instituicao varchar(20),
    cod_area int,
    PRIMARY KEY (codigo),
    FOREIGN KEY (cod_area) REFERENCES Area_Conhecimento(codigo)
);

CREATE TABLE Formatura (
    codigo int,
    cod_univ int,
    cod_curso int,
    responsavel varchar(20),
    tel_resp int,
    cod_pgto int,
    valor int,
    PRIMARY KEY (codigo),
    FOREIGN KEY (cod_univ) REFERENCES Universidade(codigo),
    FOREIGN KEY (cod_curso) REFERENCES Curso(codigo),
    FOREIGN KEY (cod_pgto) REFERENCES Pagamento(codigo)
);

CREATE TABLE Form_Evento (
    codigo int,
    cod_form int,
    cod_evento int,
    cod_buffet int,
    data date,
    local varchar(20),
    duracao int,
    fechado varchar(1),
    num_conv int,
    PRIMARY KEY (codigo),
    FOREIGN KEY (cod_form) REFERENCES Formatura(codigo)
);

CREATE TABLE Historico_Mudanca (
    cod_form_evento int,
    data date,
    local varchar(20)
);

