CREATE TABLE Cliente( 
    codigo int, 
    nome varchar(50), 
    sexo char(1), 
    altura float 
);

CREATE TABLE Cliente( 
    codigo int UNIQUE, 
    nome varchar(50), 
    sexo char(1), 
    altura float 
);

CREATE TABLE Cliente( 
    codigo int PRIMARY KEY, 
    nome varchar(50), 
    sexo char(1), 
    altura float 
);

CREATE TABLE Cliente( 
    codigo int PRIMARY KEY, 
    nome varchar(50), 
    sexo char(1), 
    altura float,
    codigo_endereco int,
    FOREIGN KEY (codigo_endereco) REFERENCES Endereco(codigo)
);

CREATE TABLE Endereco(
    codigo int,
    logradouro varchar(100),
    PRIMARY KEY(codigo)
);

ALTER TABLE Cliente ADD estado_civil varchar(15);
ALTER TABLE Cliente MODIFY estado_civil varchar(20);
ALTER TABLE TB_Cliente RENAME TO Cliente;
ALTER TABLE Cliente DROP COLUMN estado_civil;

DROP TABLE Cliente;

INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1000,'Maria Silva','F',1.65);
INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1002,'Monica Amorim','F',1.79);
INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1003,'Pedro Almeida','M',1.80);
INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1004,'Lauro Rozendo','M',2.10);
INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1005,'Magno Cardoso','M',2.06);
INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1006,'Tatiane Silva','F',1.90);
INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1007,'Pedro Silveira','M',1.38);
INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1008,'Robson Vieira','M',1.47);
INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1009,'Marcela Prado','F',1.56);

SELECT * FROM Cliente;
SELECT * FROM Endereco;
SELECT nome,sexo FROM Cliente;
SELECT * FROM Cliente WHERE codigo=1005;
SELECT * FROM Cliente WHERE nome='Maria Silva';
SELECT * FROM Cliente WHERE nome LIKE 'Pedro%';
SELECT * FROM Cliente WHERE altura > 2.0;
SELECT * FROM Cliente WHERE altura > 2 OR altura < 1.60;
SELECT * FROM Cliente WHERE codigo>=1004 AND codigo<=1007;

UPDATE Cliente SET nome='Mariana Silva' WHERE codigo=1000;
UPDATE Cliente SET nome='Tadeu Lima', sexo='M', altura=1.95 WHERE codigo=1006;

DELETE FROM Cliente WHERE codigo=1002;

INSERT INTO Cliente(codigo,nome,sexo,altura) VALUES(1000,'Maria Silva','F',1.65);
UPDATE Cliente SET codigo_endereco=3 WHERE codigo=1000;

INSERT INTO Endereco(codigo, logradouro) VALUES(3, 'Rua XYZ, 400');
