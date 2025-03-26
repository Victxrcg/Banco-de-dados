-- Criação das tabelas
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE tarefas (
    id INT PRIMARY KEY,
    descricao VARCHAR(200),
    data_inicio DATE,
    data_fim DATE,
    status VARCHAR(20)
);

-- Inserção de dados
INSERT INTO usuarios (id, nome) VALUES
(1, 'Rafael Gomes');

INSERT INTO tarefas (id, descricao, data_inicio, data_fim, status) VALUES
(1, 'Relatório mensal', '2025-03-01', '2025-03-10', 'pendente'),
(2, 'Reunião com cliente', '2025-03-05', '2025-03-05', 'pendente');

-- Consulta: tarefas pendentes
SELECT descricao, data_inicio, data_fim
FROM tarefas
WHERE status = 'pendente';

-- Atualização: atualizar status
UPDATE tarefas SET status = 'concluída' WHERE id = 1;

-- Exclusão: excluir tarefa
DELETE FROM tarefas WHERE id = 2;