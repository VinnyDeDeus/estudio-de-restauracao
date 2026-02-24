-- gerar de tabelas
CREATE TABLE CLIENTE (
  id_cliente INTEGER NOT NULL,
  nome VARCHAR(100) NOT NULL,
  contato VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_cliente)
);

CREATE TABLE PINTURA (
  id_pintura INTEGER NOT NULL,
  titulo VARCHAR(50) NOT NULL,
  autor VARCHAR(50),
  ano_criacao INTEGER,
  id_cliente INTEGER,
  PRIMARY KEY (id_pintura),
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente)
);

CREATE TABLE PROJETO (
  id_projeto INTEGER NOT NULL,
  data_inicio DATE NOT NULL,
  estado VARCHAR(25) DEFAULT 'Em fila',
  id_pintura INTEGER,
  PRIMARY KEY (id_projeto),
  FOREIGN KEY (id_pintura) REFERENCES PINTURA (id_pintura)
);

-- inserir dados nas tabelas
INSERT INTO CLIENTE VALUES 
(1, 'Museu Nacional', '(47) 21982000'),
(2, 'Museu do Louvre', '(33) 140205317'),
(3, 'Galleria degli Uffizi', '(39) 055294883'),
(4, 'Museu Van Gogh', '(31) 205705200');

INSERT INTO PINTURA VALUES
(101, 'O Grito', 'Edward Munch', 1893, 1),
(102, 'Mona Lisa', 'Leonardo da Vinci', 1503, 2),
(103, 'O Nascimento de Vênus', 'Sandro Botticelli', 1485, 3),
(104, 'Autorretrato com Chapéu de Feltro Cinza', 'Vincent van Gogh', 1887, 4);

INSERT INTO PROJETO VALUES
(1001, '2024-12-25', 'Concluído', 101),
(1002, '2025-02-01', 'Em progresso', 102),
(1003, '2026-02-15', 'Em fila', 103),
(1004, '2026-02-20', 'Em fila', 104);
