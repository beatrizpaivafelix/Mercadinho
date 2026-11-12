CREATE DATABASE IF NOT EXISTS mercadinho
    CHARACTER SET utf8
    COLLATE utf8;

USE mercadinho;

CREATE TABLE IF NOT EXISTS categorias (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80)  NOT NULL,
    descricao VARCHAR(200),
    PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO categorias (nome, descricao) VALUES
    ('Bebidas', 'Refrigerantes, sucos e águas'),
    ('Mercearia', 'Arroz, feijão, macarrão e enlatados');

CREATE TABLE IF NOT EXISTS mercadoria (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80)  NOT NULL,
    valor DOUBLE,
    PRIMARY KEY (id)
    ) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS estoque (
    nome VARCHAR(80)  NOT NULL,
    disp BOOLEAN,
    quantidade int,
    PRIMARY KEY (nome)
    ) ENGINE=InnoDB;

USE mercadinho;

INSERT INTO mercadoria (nome, valor) VALUES
('Arroz branco 5kg', 27.90),
('Feijão Carioca 1kg', 8.50),
('Óleo de Soja 900ml', 6.99),
('Açúcar 1kg', 4.80),
('Café em Pó 500g', 16.50),
('Leite Integral 1L', 5.20),
('Macarrão Espaguete 500g', 4.50),
('Refrigerante 2L', 9.00);

INSERT INTO estoque (nome, disp, quantidade) VALUES
('Arroz branco 5kg', true, 50),
('Feijão Carioca 1kg', true, 80),
('Óleo de Soja 900ml', true, 120),
('Açúcar 1kg', true, 60),
('Café em Pó 500g', true, 40),
('Leite Integral 1L', true, 100),
('Macarrão Espaguete 500g', true, 75),
('Refrigerante 2L', true, 30);