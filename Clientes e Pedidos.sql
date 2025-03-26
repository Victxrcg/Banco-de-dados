-- Criação das tabelas
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    data DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Inserção de dados
INSERT INTO clientes (id, nome, email) VALUES
(1, 'Lucas Souza', 'lucas@email.com'),
(2, 'Fernanda Lima', 'fernanda@email.com');

INSERT INTO pedidos (id, cliente_id, data, total) VALUES
(1, 1, '2025-03-01', 150.00),
(2, 1, '2025-03-02', 200.00);

-- Consulta: pedidos de um cliente (Lucas)
SELECT id, data, total
FROM pedidos
WHERE cliente_id = 1;

-- Atualização: atualizar total de um pedido
UPDATE pedidos SET total = 180.00 WHERE id = 1;

-- Exclusão: excluir pedido
DELETE FROM pedidos WHERE id = 2;