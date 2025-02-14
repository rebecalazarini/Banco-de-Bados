create database floricultura;
use floricultura;

CREATE TABLE clientes(
    id_cli int primary key AUTO_INCREMENT NOT NULL,
    nome VARCHAR (50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereço TEXT NOT NULL,
    nascimento VARCHAR(15) NOT NULL,
    tel VARCHAR(15)
);

CREATE TABLE flores(
    id_flores int primary key AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    qtd int NOT NULL,
    cor VARCHAR(30),
    preco int NOT NULL
);


CREATE TABLE fornecedor(
    id_forn INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cnpj INT NOT NULL,
    endereço TEXT,
    nome VARCHAR (50) NOT NULL,
    telefone VARCHAR (15)
);


CREATE TABLE compra(
    quantidade INT NOT NULL,
    valor int NOT NULL,
    id_cli int NOT NULL,
    id_flores int NOT NULL,
    qtd int NOT NULL,
    valores int NOT NULL,
    PRIMARY KEY (id_cli,id_flores),
    FOREIGN KEY (id_cli) REFERENCES clientes(id_cli),
    FOREIGN KEY (id_flores)  REFERENCES flores(id_flores)
);

INSERT INTO clientes (nome, email, tel) VALUES
 ('João da Silva', 'joao.silva@example.com', '1234-5678' ),
 ('Maria Oliveira', 'maria.oliveira@example.com', '8765-4321'),
 ('Carlos Souza', 'carlos.souza@example.com', '2345-6789'),
 ('Ana Lima', 'ana.lima@example.com', '3456-7890'),
 ('Felipe Costa', 'felipe.costa@example.com', '4567-8901');


 INSERT INTO flores (nome,cor, preco) VALUES
 ('margarida', 'branca', '14.50' ),
 ('ortencia', 'azul', '16.12'),
 ('girassol', 'amarelo', '19.90'),
 ('rosa', 'vermelha', '14.64'),
 ('lavanda', 'roxo', '10.99');




