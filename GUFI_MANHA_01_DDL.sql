-- CRIA O BANCO DE DADOS COM O NOME GUFI
CREATE DATABASE gufiManha;

-- Define o banco de dados que sera utilizado
USE gufiManha;


-- Criação das tabelas
CREATE TABLE tipoUsuario 
	(
		idTipoUsuario         INT PRIMARY KEY IDENTITY,
		tituloTipoUsuario     VARCHAR (255) NOT NULL UNIQUE
	);

CREATE TABLE tipoEvento
	(
		idTipoEvento          INT PRIMARY KEY IDENTITY,
		tituloTipoEvento      VARCHAR (255) NOT NULL UNIQUE
	);

CREATE TABLE Instituicao
	(
		idInstituicao         INT PRIMARY KEY IDENTITY,
		CNPJ				  CHAR(14) NOT NULL UNIQUE,
		nomeFantasia          VARCHAR(255) NOT NULL UNIQUE,
		endereco              VARCHAR(255) NOT NULL UNIQUE
	);
	
CREATE TABLE Usuario
	(
		idUsuario             INT PRIMARY KEY IDENTITY,
		nome                  VARCHAR(255) NOT NULL,
		email				  VARCHAR(255) NOT NULL UNIQUE,
		senha				  VARCHAR(255) NOT NULL,
		dataCadastro          DATETIME2,
		genero				  VARCHAR(255)
		idTipoUsuario         INT FOREIGN KEY REFERENCES tipoUsuario (idTipoUsuario)
	);


SELECT * FROM tipoUsuario;
SELECT * FROM tipoEvento;