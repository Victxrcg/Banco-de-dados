-- Criação das tabelas
CREATE TABLE categorias (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE pprodutos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria_id INT,
    preco DECIMAL(10, 2),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Inserção de dados
INSERT INTO categorias (id, nome) VALUES
(1, 'Eletrônicos'),
(2, 'Roupas');

INSERT INTO pprodutos (id, nome, categoria_id, preco) VALUES
(1, 'Smartphone', 1, 1200.00),
(2, 'Camiseta', 2, 50.00);

-- Consulta: produtos da categoria Eletrônicos
SELECT p.nome, p.preco
FROM pprodutos p
JOIN categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Eletrônicos';

-- Atualização: atualizar preço
UPDATE pprodutos SET preco = 1300.00 WHERE id = 1;

-- Exclusão: excluir produto
DELETE FROM pprodutos WHERE id = 2;