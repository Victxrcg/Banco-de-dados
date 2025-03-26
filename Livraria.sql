-- Criação das tabelas
CREATE TABLE autores (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor_id INT,
    preco DECIMAL(10, 2),
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

-- Inserção de dados
INSERT INTO autores (id, nome) VALUES
(1, 'Machado de Assis'),
(2, 'J.K. Rowling');

INSERT INTO livros (id, titulo, autor_id, preco) VALUES
(1, 'Dom Casmurro', 1, 29.90),
(2, 'Harry Potter e a Pedra Filosofal', 2, 39.90),
(3, 'Memórias Póstumas de Brás Cubas', 1, 25.50);

-- Consulta: listar livros e autores
SELECT l.titulo, a.nome AS autor, l.preco
FROM livros l
JOIN autores a ON l.autor_id = a.id;

-- Atualização: atualizar preço de um livro
UPDATE livros SET preco = 32.00 WHERE id = 1;

-- Exclusão: excluir autor e seus livros
DELETE FROM livros WHERE autor_id = 1;
DELETE FROM autores WHERE id = 1;