-- Criação das tabelas
CREATE TABLE vendas (
    id INT PRIMARY KEY,
    data DATE,
    total DECIMAL(10, 2)
);

CREATE TABLE itens_venda (
    id INT PRIMARY KEY,
    venda_id INT,
    produto_id INT,
    quantidade INT,
    preco DECIMAL(10, 2),
    FOREIGN KEY (venda_id) REFERENCES vendas(id)
);

-- Inserção de dados
INSERT INTO vendas (id, data, total) VALUES
(1, '2025-03-05', 150.00);

INSERT INTO itens_venda (id, venda_id, produto_id, quantidade, preco) VALUES
(1, 1, 101, 2, 50.00),
(2, 1, 102, 1, 50.00);

-- Consulta: vendas em um período
SELECT id, data, total
FROM vendas
WHERE data BETWEEN '2025-03-01' AND '2025-03-31';

-- Atualização: atualizar quantidade
UPDATE itens_venda SET quantidade = 3 WHERE id = 1;

-- Exclusão: excluir item
DELETE FROM itens_venda WHERE id = 2;