CREATE DATABASE OnSpot2;
USE OnSpot2;

SELECT * FROM empresa;
SELECT * FROM usuario;

-- TABELA PARA CONTROLE E CADASTRO DE EMPRESAS CLIENTES
CREATE TABLE Empresa(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45),
  email VARCHAR(45),
  razaoSocial VARCHAR(45),
  telefone VARCHAR(45),
  cnpj CHAR(14)
);

INSERT INTO empresa VALUES
(1, 'sptech', 'sptech@school', 'faculdade', '11989121266', '01234567891234');

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

INSERT INTO endereco VALUES
(null,	'Avenida Paulista','1010', 'bela vista', 'sao paulo', 'sp', '04428010', 1);

-- TABELA PARA CONTROLE E LOGIN DE CLEINTES 
CREATE TABLE Usuario(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(50),
  nome VARCHAR(45),
  cpf char(14),
  senha VARCHAR(45),
  fkEmpresa INT,
  CONSTRAINT fk_Empresa FOREIGN KEY (fkEmpresa) REFERENCES Empresa(id)
);

INSERT INTO usuario VALUES 
(null, 'v@email.com', 'victor',	'46673001836', '123', 1);

-- TABELA PARA IDENTIFICAR AS SALAS DISPONIVEIS NAS EMPRESAS
CREATE TABLE SalaEmpresa(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  numero VARCHAR(15),
  fkSalaUnidade INT,
  CONSTRAINT fk_Sala_Unidade FOREIGN KEY (fkSalaUnidade) REFERENCES Endereco(id)
);
SELECT * FROM endereco;


INSERT INTO salaempresa VALUES
(null, '1adsb', 1);

SELECT * FROM salaempresa;

-- TABELA PARA O CONTROLE DOS RACKS QUE FICAM NAS SALAS
CREATE TABLE Rack (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fkRackSala INT,
CONSTRAINT fk_Rack_Sala FOREIGN KEY (fkRackSala) REFERENCES SalaEmpresa(id)
);
INSERT INTO rack VALUES
(null, 1);

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

INSERT INTO Sensor VALUES
(null, 'dht11', 'temperatura', 1, 1);

-- TABELA PARA O CONTROLE DOS DADOS CAPTADOS PELOS SENSORES
CREATE TABLE Registro (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
temperatura DECIMAL,
umidade DECIMAL,
data_hora DATETIME,
fkRegistroSensor INT,
CONSTRAINT fk_Registro_Sensor FOREIGN KEY (fkRegistroSensor) REFERENCES Sensor(id)
);

SELECT * FROM Registro;

create user 'insertOnSpot'@'10.18.32.236' identified by 'OnSpotUser';

grant all privileges on OnSpot2.* to 'insertOnSpot'@'10.18.32.236';

flush privileges;





