-- Criação das tabelas
CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE notas (
    id INT PRIMARY KEY,
    aluno_id INT,
    disciplina VARCHAR(50),
    nota DECIMAL(5, 2),
    FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

-- Inserção de dados
INSERT INTO alunos (id, nome, idade) VALUES
(1, 'João Silva', 20),
(2, 'Maria Oliveira', 19);

INSERT INTO notas (id, aluno_id, disciplina, nota) VALUES
(1, 1, 'Matemática', 8.5),
(2, 1, 'Português', 7.0),
(3, 2, 'História', 9.0);

-- Consulta: notas de um aluno específico (João)
SELECT disciplina, nota
FROM notas
WHERE aluno_id = 1;

-- Atualização: atualizar nota
UPDATE notas SET nota = 8.0 WHERE id = 2;

-- Exclusão: excluir uma nota
DELETE FROM notas WHERE id = 3;