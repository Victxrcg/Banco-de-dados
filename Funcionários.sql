-- Criação da tabela
CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2)
);

-- Inserção de dados
INSERT INTO funcionarios (id, nome, cargo, salario) VALUES
(1, 'Ana Costa', 'Gerente', 5000.00),
(2, 'Pedro Almeida', 'Vendedor', 2500.00);

-- Consulta: funcionários com salário > 3000
SELECT nome, cargo, salario
FROM funcionarios
WHERE salario > 1000;

-- Atualização: aumentar salário
UPDATE funcionarios SET salario = 5500.00 WHERE id = 2;

-- Exclusão: excluir funcionário
DELETE FROM funcionarios WHERE id = 2;