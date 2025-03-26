-- Criação da tabela
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    quantidade INT,
    preco DECIMAL(10, 2)
);

-- Inserção de dados
INSERT INTO produtos (id, nome, quantidade, preco) VALUES
(1, 'Mouse', 10, 50.00),
(2, 'Teclado', 5, 80.00);

-- Consulta: produtos com quantidade < 6
SELECT nome, quantidade
FROM produtos
WHERE quantidade < 8;

-- Atualização: atualizar quantidade após venda
UPDATE produtos SET quantidade = 8 WHERE id = 1;

-- Exclusão: excluir produto
DELETE FROM produtos WHERE id = 2;