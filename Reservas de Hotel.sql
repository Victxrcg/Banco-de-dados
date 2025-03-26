-- Criação das tabelas
CREATE TABLE hospedes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14)
);

CREATE TABLE reservas (
    id INT PRIMARY KEY,
    hospede_id INT,
    data_inicio DATE,
    data_fim DATE,
    quarto INT,
    FOREIGN KEY (hospede_id) REFERENCES hospedes(id)
);

-- Inserção de dados
INSERT INTO hospedes (id, nome, cpf) VALUES
(1, 'Carlos Mendes', '123.456.789-00'),
(2, 'Julia Santos', '987.654.321-00');

INSERT INTO reservas (id, hospede_id, data_inicio, data_fim, quarto) VALUES
(1, 1, '2025-03-10', '2025-03-15', 101),
(2, 2, '2025-03-12', '2025-03-14', 101);

-- Consulta: reservas do quarto 101
SELECT h.nome, r.data_inicio, r.data_fim
FROM reservas r
JOIN hospedes h ON r.hospede_id = h.id
WHERE r.quarto = 101;

-- Atualização: atualizar datas de uma reserva
UPDATE reservas SET data_inicio = '2025-03-11', data_fim = '2025-03-16' WHERE id = 1;

-- Exclusão: excluir reserva
DELETE FROM reservas WHERE id = 2;