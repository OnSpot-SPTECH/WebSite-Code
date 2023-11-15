CREATE DATABASE OnSpot2;
USE OnSpot2;

-- TABELA PARA CONTROLE E CADASTRO DE EMPRESAS CLIENTES
CREATE TABLE Empresa(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45),
  email VARCHAR(45),
  razaoSocial VARCHAR(45),
  telefone VARCHAR(45),
  cnpj CHAR(18)
);

-- COMANDO PARA INSERIR DADOS NA TABELA "EMPRESA"
INSERT INTO Empresa VALUES
(1, 'SeguroInfoTECH', 'info@techseguranca.com', 'Segurança de qualidade EIRELI', '(11)9618-9863', '11.223.344/0001-12');

-- TABELA PARA O CONTROLE DOS ENDEREÇOS DAS EMPRESAS
CREATE TABLE Endereco(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  logradouro VARCHAR(60),
  numero VARCHAR(10),
  bairro VARCHAR(60),
  cidade VARCHAR(60),
  uf CHAR(2),
  cep CHAR(9),
  fkEmpresa INT,
  CONSTRAINT fkEmpresa FOREIGN KEY (fkEmpresa) REFERENCES Empresa(id)
);

-- COMANDO PARA INSERIR DADOS NA TABELA "ENDEREÇO"
INSERT INTO Endereco VALUES 
(1,'Rua Piratininga', '789', 'Barcelona', 'São Caetano', 'SP', '98765-432', 1);

-- TABELA PARA CONTROLE E LOGIN DE CLEINTES 
CREATE TABLE Usuario(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(50),
  nome VARCHAR(45),
  cpf VARCHAR(18),
  senha VARCHAR(45),
  fkEmpresa INT,
  CONSTRAINT fk_Empresa FOREIGN KEY (fkEmpresa) REFERENCES Empresa(id)
);

-- COMANDO PARA INSERIR DADOS NA TABELA "USUARIO"
INSERT INTO Usuario VALUES
(1, "nathanpiazentin@gmail.com", "Nathan Piazentin", "34999602815", "Urubu100", 1);

-- TABELA PARA IDENTIFICAR AS SALAS DISPONIVEIS NAS EMPRESAS
CREATE TABLE SalaEmpresa(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  numero VARCHAR(15),
  fkSalaUnidade INT,
  CONSTRAINT fk_Sala_Unidade FOREIGN KEY (fkSalaUnidade) REFERENCES Endereco(id)
);

-- COMANDO PARA INSERIR DADOS NA TABELA "SALA EMPRESA"
INSERT INTO SalaEmpresa VALUES
(1, 101, 1);

-- TABELA PARA O CONTROLE DOS RACKS QUE FICAM NAS SALAS
CREATE TABLE Rack (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fkRackSala INT,
CONSTRAINT fk_Rack_Sala FOREIGN KEY (fkRackSala) REFERENCES SalaEmpresa(id)
);

-- COMANDO PARA INSERIR DADOS NA TABELA "RACK"
INSERT INTO Rack VALUES
(1, 1),
(2, 1);

-- TABELA PARA O CONTROLE DOS SENSORES
CREATE TABLE Sensor (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
tipo VARCHAR (45),
fkSensorRack INT,
fkSalaEmpresa INT,
CONSTRAINT fk_Sensor_Rack FOREIGN KEY (fkSensorRack) REFERENCES Rack(id),
CONSTRAINT fk_Sala_Empresa FOREIGN KEY (fkSalaEmpresa) REFERENCES SalaEmpresa(id)
);

-- COMANDO PARA INSERIR DADOS NA TABELA "SENSOR"
INSERT INTO Sensor VALUES
(1, "DHT11", "Umidade e Temperatura", 1, 1),
(2, "DHT11", "Umidade e Temperatura", 1, 1),
(3, "DHT11", "Umidade e Temperatura", 1, 1),
(4, "LM35", "Temperatura", 2, 1),
(5, "LM35", "Temperatura", 2, 1),
(6, "LM35", "Temperatura", 2, 1);

-- TABELA PARA O CONTROLE DOS DADOS CAPTADOS PELOS SENSORES
CREATE TABLE Registro (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
temperatura DECIMAL,
umidade DECIMAL,
data_hora DATETIME,
fkRegistroSensor INT,
CONSTRAINT fk_Registro_Sensor FOREIGN KEY (fkRegistroSensor) REFERENCES Sensor(id)
);

-- COMANDO PARA INSERIR DADOS NA TABELA "REGISTRO"
INSERT INTO Registro VALUES
(1, 20.00, 55.00, "2023-11-09 12:11:01", 1),
(2, 21.00, 55.00, "2023-11-09 12:29:02", 2),
(3, 22.00, 55.00, "2023-11-09 12:32:15", 3),
(4, 22.00, NULL, "2023-11-09 12:52:16", 4),
(5, 22.00, NULL, "2023-11-09 12:10:22", 5),
(6, 21.00, NULL, "2023-11-09 12:40:25", 6);

SELECT * FROM EMPRESA;
SELECT * FROM Usuario;
SELECT * FROM Endereco;
SELECT * FROM SalaEmpresa;
SELECT * FROM Rack;
SELECT * FROM Sensor;
SELECT * FROM Registro;