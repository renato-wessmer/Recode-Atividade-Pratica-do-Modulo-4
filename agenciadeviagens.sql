CREATE SCHEMA IF NOT EXISTS agenciadeviagens;
USE agenciadeviagens;

CREATE TABLE clientes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    rg VARCHAR(50) NOT NULL,
    cpf VARCHAR(50) NOT NULL,
    telefone VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

