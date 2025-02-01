CREATE DATABASE `Empresa` 


CREATE TABLE RESPONSAVEL
(
  TIPO                      INT      NOT NULL,
  DATA_VIGENCIA_RESPONSAVEL DATETIME NOT NULL,
  CODIGO                    INT      NOT NULL,
  DATA_VIGENCIA             DATETIME NOT NULL,
  NOME                      TEXT     NULL    ,
  PRIMARY KEY (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA)
);

CREATE TABLE TELEFONE_RESP
(
  DATA_VIGENCIA_TELEFONE    DATETIME NOT NULL,
  TIPO                      INT      NOT NULL,
  DATA_VIGENCIA_RESPONSAVEL DATETIME NOT NULL,
  CODIGO                    INT      NOT NULL,
  DATA_VIGENCIA             DATETIME NOT NULL,
  TELEFONE                  TEXT     NOT NULL,
  PRIMARY KEY (DATA_VIGENCIA_TELEFONE)
);

CREATE TABLE VIGENCIA
(
  CODIGO        INT      NOT NULL,
  DATA_VIGENCIA DATETIME NOT NULL,
  CNPJ          TEXT     NOT NULL,
  NOME_EMPRESA  TEXT     NOT NULL,
  PRIMARY KEY (CODIGO, DATA_VIGENCIA)
);

ALTER TABLE RESPONSAVEL
  ADD CONSTRAINT FK_VIGENCIA_TO_RESPONSAVEL
    FOREIGN KEY (CODIGO, DATA_VIGENCIA)
    REFERENCES VIGENCIA (CODIGO, DATA_VIGENCIA);

ALTER TABLE TELEFONE_RESP
  ADD CONSTRAINT FK_RESPONSAVEL_TO_TELEFONE_RESP
    FOREIGN KEY (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA)
    REFERENCES RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA);

DELETE FROM Empresa.VIGENCIA


INSERT INTO Empresa.VIGENCIA(CODIGO, DATA_VIGENCIA, CNPJ, NOME_EMPRESA)VALUES(1, '2025-01-01 19:33:53', '01297396000143', 'Gael e Sara MEI');
INSERT INTO Empresa.VIGENCIA(CODIGO, DATA_VIGENCIA, CNPJ, NOME_EMPRESA)VALUES(1, '2025-01-10 19:34:00', '01297396000143', 'Gael Ltda');
INSERT INTO Empresa.VIGENCIA(CODIGO, DATA_VIGENCIA, CNPJ, NOME_EMPRESA)VALUES(1, '2025-01-20 19:34:07', '01297396000143', 'Gael e Sara Casa Diurna Ltda');
INSERT INTO Empresa.VIGENCIA(CODIGO, DATA_VIGENCIA, CNPJ, NOME_EMPRESA)VALUES(1, '2025-02-01 19:34:10', '01297396000143', 'Gael e Sara Ltda');
INSERT INTO Empresa.VIGENCIA(CODIGO, DATA_VIGENCIA, CNPJ, NOME_EMPRESA)VALUES(2, '2025-02-01 19:34:12', '94419006000141', 'Benjamin e Fátima Assessoria Jurídica Ltda');
INSERT INTO Empresa.VIGENCIA(CODIGO, DATA_VIGENCIA, CNPJ, NOME_EMPRESA)VALUES(3, '2025-02-01 19:34:13', '79530353000153', 'Marcos Vinicius e Maria Restaurante Ltda');
INSERT INTO Empresa.VIGENCIA(CODIGO, DATA_VIGENCIA, CNPJ, NOME_EMPRESA)VALUES(4, '2025-02-01 19:34:24', '90422951000141', 'Leandro e Isabel Telecomunicações Ltda');


INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(1, '2025-01-01 19:33:53', 1, '2025-01-01 19:33:53', 'Bianca Tatiane Débora Cavalcanti');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(2, '2025-01-01 19:33:53', 1, '2025-01-01 19:33:53', 'Ryan Ryan Drumond');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(3, '2025-01-01 19:33:53', 1, '2025-01-01 19:33:53', 'Jaqueline Stefany Bruna Pires');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(1, '2025-01-10 19:34:00', 1, '2025-01-10 19:34:00', 'Bianca Tatiane Débora Cavalcanti');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(2, '2025-01-10 19:34:00', 1, '2025-01-10 19:34:00', 'Ryan Ryan Drumond');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(3, '2025-01-10 19:34:00', 1, '2025-01-10 19:34:00', 'Jaqueline Stefany Bruna Pires');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(1, '2025-01-20 19:34:07', 1, '2025-01-20 19:34:07', 'Bianca Tatiane Débora Cavalcanti');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(2, '2025-01-20 19:34:07', 1, '2025-01-20 19:34:07', 'Ryan Ryan Drumond');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(3, '2025-01-20 19:34:07', 1, '2025-01-20 19:34:07', 'Jaqueline Stefany Bruna Pires');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(1, '2025-02-01 19:34:10', 1, '2025-02-01 19:34:10', 'Bianca Tatiane Débora Cavalcanti');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(2, '2025-02-01 19:34:10', 1, '2025-02-01 19:34:10', 'Ryan Ryan Drumond');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(3, '2025-02-01 19:34:10', 1, '2025-02-01 19:34:10', 'Jaqueline Stefany Bruna Pires');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(1, '2025-02-01 19:34:12', 2, '2025-02-01 19:34:12', 'Maria Sueli Gomes');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(1, '2025-02-01 19:34:13', 3, '2025-02-01 19:34:13', 'Maria Sueli Gomes');
INSERT INTO Empresa.RESPONSAVEL (TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, NOME) VALUES(1, '2025-02-01 19:34:24', 4, '2025-02-01 19:34:24', 'Maria Sueli Gomes');



INSERT INTO Empresa.TELEFONE_RESP (DATA_VIGENCIA_TELEFONE, TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, TELEFONE) VALUES('2025-01-01 19:33:53', 1, '2025-01-01 19:33:53', 1, '2025-01-01 19:33:53', '123456789');
INSERT INTO Empresa.TELEFONE_RESP (DATA_VIGENCIA_TELEFONE, TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, TELEFONE) VALUES('2025-01-10 19:34:00', 1, '2025-01-10 19:34:00', 1, '2025-01-10 19:34:00', '987654321');
INSERT INTO Empresa.TELEFONE_RESP (DATA_VIGENCIA_TELEFONE, TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, TELEFONE) VALUES('2025-01-20 19:34:07', 1, '2025-01-20 19:34:07', 1, '2025-01-20 19:34:07', '555555555');
INSERT INTO Empresa.TELEFONE_RESP (DATA_VIGENCIA_TELEFONE, TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, TELEFONE) VALUES('2025-02-01 19:34:10', 1, '2025-02-01 19:34:10', 1, '2025-02-01 19:34:10', '444444444');
INSERT INTO Empresa.TELEFONE_RESP (DATA_VIGENCIA_TELEFONE, TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, TELEFONE) VALUES('2025-02-01 19:34:12', 1, '2025-02-01 19:34:12', 2, '2025-02-01 19:34:12', '333333333');
INSERT INTO Empresa.TELEFONE_RESP (DATA_VIGENCIA_TELEFONE, TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, TELEFONE) VALUES('2025-02-01 19:34:13', 1, '2025-02-01 19:34:13', 3, '2025-02-01 19:34:13', '222222222');
INSERT INTO Empresa.TELEFONE_RESP (DATA_VIGENCIA_TELEFONE, TIPO, DATA_VIGENCIA_RESPONSAVEL, CODIGO, DATA_VIGENCIA, TELEFONE) VALUES('2025-02-01 19:34:24', 1, '2025-02-01 19:34:24', 4, '2025-02-01 19:34:24', '111111111');


SELECT 
  r.CODIGO,
  r.DATA_VIGENCIA,
  r.CNPJ,
  r.NOME_EMPRESA,
  t.TIPO,
  t.DATA_VIGENCIA_RESPONSAVEL,
  t.NOME
FROM 
  Empresa.VIGENCIA r
INNER JOIN 
  Empresa.RESPONSAVEL t
ON 
  r.CODIGO = t.CODIGO AND 
  r.DATA_VIGENCIA = t.DATA_VIGENCIA;


SELECT 
  r.TIPO,
  r.DATA_VIGENCIA_RESPONSAVEL,
  r.CODIGO,
  r.DATA_VIGENCIA,
  r.NOME,
  t.TELEFONE
FROM 
  Empresa.RESPONSAVEL r
INNER JOIN 
  Empresa.TELEFONE_RESP t
ON 
  r.TIPO = t.TIPO AND 
  r.DATA_VIGENCIA_RESPONSAVEL = t.DATA_VIGENCIA_RESPONSAVEL AND 
  r.CODIGO = t.CODIGO AND 
  r.DATA_VIGENCIA = t.DATA_VIGENCIA;




