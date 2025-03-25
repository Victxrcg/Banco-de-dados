create database Banco;
use banco;

CREATE TABLE Estado (
    id_estado INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sigla CHAR(2) NOT NULL
);
CREATE TABLE Cidade (
    id_cidade INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_estado INT,
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
);
CREATE TABLE Genero (
    id_genero INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL
);
CREATE TABLE Raca (
    id_raca INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL
);
CREATE TABLE Religiao (
    id_religiao INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100) NOT NULL
);
CREATE TABLE Agencias (
    id_agencia INT PRIMARY KEY AUTO_INCREMENT,
    numero_agencia VARCHAR(10) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    id_cidade INT,
    id_estado INT,
    FOREIGN KEY (id_cidade) REFERENCES Cidade(id_cidade),
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
);
CREATE TABLE Clientes (
    id_conta INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_cidade INT,
    id_estado INT,
    id_genero INT,
    id_raca INT,
    id_religiao INT,
    id_agencia INT,
    numero_conta VARCHAR(20) UNIQUE NOT NULL,
    saldo DECIMAL(15, 2) DEFAULT 0.00,
    FOREIGN KEY (id_cidade) REFERENCES Cidade(id_cidade),
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado),
    FOREIGN KEY (id_genero) REFERENCES Genero(id_genero),
    FOREIGN KEY (id_raca) REFERENCES Raca(id_raca),
    FOREIGN KEY (id_religiao) REFERENCES Religiao(id_religiao),
    FOREIGN KEY (id_agencia) REFERENCES Agencias(id_agencia)
);
CREATE TABLE Saque (
    id_operacao INT PRIMARY KEY AUTO_INCREMENT,
    id_agencia INT,
    id_conta INT,
    valor_saque DECIMAL(15, 2) NOT NULL,
    data_operacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_agencia) REFERENCES Agencias(id_agencia),
    FOREIGN KEY (id_conta) REFERENCES Clientes(id_conta)
);
CREATE TABLE Deposito (
    id_operacao INT PRIMARY KEY AUTO_INCREMENT,
    id_agencia INT,
    id_conta INT,
    valor_deposito DECIMAL(15, 2) NOT NULL,
    data_operacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_agencia) REFERENCES Agencias(id_agencia),
    FOREIGN KEY (id_conta) REFERENCES Clientes(id_conta)
);
DELIMITER //

CREATE TRIGGER trg_atualiza_saldo_saque
AFTER INSERT ON Saque
FOR EACH ROW
BEGIN
    UPDATE Clientes
    SET saldo = saldo - NEW.valor_saque
    WHERE id_conta = NEW.id_conta;
END //
DELIMITER ;
DELIMITER //

CREATE TRIGGER trg_atualiza_saldo_deposito
AFTER INSERT ON Deposito
FOR EACH ROW
BEGIN
    UPDATE Clientes
    SET saldo = saldo + NEW.valor_deposito
    WHERE id_conta = NEW.id_conta;
END //
DELIMITER ;