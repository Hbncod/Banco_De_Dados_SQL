--DDL linguagem de definicao de dados

--Comando para criar banco de dados
CREATE DATABASE RoteiroLivros;
--Entrar no banco de dados
 USE RoteiroLivros;
 CREATE TABLE Generos (
	Id_Genero INT PRIMARY KEY IDENTITY NOT NULL,
	Nome      VARCHAR(200) NOT NULL
);
CREATE TABLE Autores (
	Id_Autor  INT PRIMARY KEY IDENTITY NOT NULL,
	nomeAutor VARCHAR(200)
);
 CREATE TABLE Livros (
	Id_Livro  INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo	  VARCHAR(255),
	Id_Genero INT FOREIGN KEY REFERENCES Generos (Id_Genero),
	Id_Autor  INT FOREIGN KEY REFERENCES Autores (Id_Autor)
);

--DQL comando de consulta

SELECT * FROM Autores
SELECT * FROM Livros
SELECT * FROM Generos
