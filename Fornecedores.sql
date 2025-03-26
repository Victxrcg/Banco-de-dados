-- Criação da tabela
CREATE TABLE fornecedores (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Inserção de dados
INSERT INTO fornecedores (id, nome, telefone, email) VALUES
(1, 'Fornecedor A', '11 9999-1234', 'fornecedora@email.com'),
(2, 'Fornecedor B', '21 8888-5678', 'fornecedorb@email.com');

-- Consulta: fornecedores (exemplo: supondo produto "papel")
-- Para isso, seria necessário uma tabela de produtos fornecidos (não especificada), mas segue exemplo básico:
SELECT nome, telefone, email
FROM fornecedores;

-- Atualização: atualizar contato
UPDATE fornecedores SET telefone = '11 9999-4321' WHERE id = 1;

-- Exclusão: excluir fornecedor
DELETE FROM fornecedores WHERE id = 2;