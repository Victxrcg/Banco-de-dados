select * from usuarios;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

SHOW TABLES;
INSERT INTO usuarios (usuario, senha) VALUES ('victor', '123');
INSERT INTO usuarios (usuario, senha) VALUES ('admin', 'admin123');


