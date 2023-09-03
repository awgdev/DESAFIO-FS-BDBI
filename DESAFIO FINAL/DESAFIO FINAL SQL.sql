CREATE DATABASE petshop;
USE petshop;

CREATE TABLE clientes (
ClienteID INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    Telefone VARCHAR(15) NOT NULL);

CREATE TABLE animais (
    AnimalID INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Especie VARCHAR(50) NOT NULL,
    DataNascimento DATE NOT NULL);

CREATE TABLE vendas (
    VendaID INT PRIMARY KEY NOT NULL,
    ClienteID INT NOT NULL,
    DataVenda DATE NOT NULL,
    Total DECIMAL(10, 2) NOT NULL);

CREATE TABLE itensVenda (
    ItemID INT PRIMARY KEY NOT NULL,
    VendaID INT NOT NULL,
    Produto VARCHAR(50) NOT NULL,
    Quantidade INT NOT NULL);

ALTER TABLE clientes
ADD Email VARCHAR(100) NOT NULL;

ALTER TABLE vendas
ADD Status VARCHAR(20) NOT NULL;

INSERT INTO clientes (ClienteID, Nome, Endereco, Telefone, Email)
VALUES
    (1, 'Otavio', 'Rua da unipe, 25', '0839999991', 'otavio@gmail.com'),
    (2, 'Lucas', 'Rua da lagoa, 12', '0839999992', 'lucas@gmail.com'),
    (3, 'Mario', 'Rua da UFPB, 13', '0839999993', 'mario@gmail.com');

INSERT INTO animais (AnimalID, Nome, Especie, DataNascimento)
VALUES
    (001, 'lua', 'Cachorro', '2020-05-11'),
    (002, 'sol', 'Gato', '2020-02-25'),
    (003, 'jupiter', 'Cachorro', '2020-08-30'),
    (004, 'venus', 'Gato', '2021-11-20');
    
INSERT INTO vendas (VendaID, ClienteID, DataVenda, Total, Status)
VALUES
    (331, 1, '2023-01-21', 150.99, 'Concluída'),
    (044, 2, '2023-01-06', 75.50, 'Concluída'),
    (055, 3, '2023-01-18', 200.00, 'Concluída'),
    (066, 1, '2023-01-03', 50.25, 'Cancelada');

INSERT INTO itensVenda (ItemID, VendaID, Produto, Quantidade)
VALUES
    (220, 30, 'Ração cão', 1),
    (221, 40, 'Tosa', 2),
    (223, 50, 'Coleira', 1),
    (224, 60, 'Ração gato', 2),
    (225, 30, 'Banho', 3);    
    
SELECT * FROM clientes;
SELECT * FROM animais;
SELECT * FROM vendas;
SELECT * FROM itensVenda;
    
    
    