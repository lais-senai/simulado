SELECT * FROM saep_db.usuarios;

CREATE DATABASE saep_db;
USE saep_db;

CREATE TABLE usuarios (
 id INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100),
 login VARCHAR(50),
 senha VARCHAR(50)
);

INSERT INTO usuarios(nome,login,senha) VALUES
('Admin','admin','123'),
('Joao','joao','123'),
('Maria','maria','123');

SELECT * FROM saep_db.produtos;

CREATE TABLE produtos (
 id INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100),
 marca VARCHAR(50),
 estoque INT,
 minimo INT
);

INSERT INTO produtos(nome,marca,estoque,minimo) VALUES
('Notebook Dell','Dell',10,2),
('iPhone 15','Apple',5,1),
('Smart TV 50','LG',8,2);

USE saep_db;
SELECT * FROM saep_db.movimentacoes;

CREATE TABLE movimentacoes (
 idmovimentacoes INT AUTO_INCREMENT PRIMARY KEY,
 tipo VARCHAR(20),
 quantidade INT,
 data_mov DATE,
 usuario VARCHAR(100),
 produtos_idprodutos INT,
 FOREIGN KEY (produtos_idprodutos)
 REFERENCES produtos(idprodutos)
);

INSERT INTO movimentacoes
(tipo,quantidade,data_mov,usuario,produtos_idprodutos)
VALUES
('entrada',5,'2026-04-28','Admin',1),
('saida',1,'2026-04-28','Joao',2),
('entrada',2,'2026-04-28','Maria',3);