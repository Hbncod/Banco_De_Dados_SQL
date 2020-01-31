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

--DML Linguagem de manipulacao de dados

Insert INTO Autores (nomeAutor)
Values ('Jo�o Cleber'),
		('Jos� de alencar'),
		('Alek'),
		('Pericles'),
		('Maicon');

Insert INTO Generos ( Nome)
Values ('Fic��o'),
		('Aventura'),
		('Romance'),
		('Terror'),
		('Com�dia');

Insert Livros (Titulo, Id_Genero, Id_Autor)
Values ('os 7 le�es',2,4),
		('A Branca de neve',3,3),
		('Hora de aventura',1,5),
		('Hora do terror',4,1),
		('Os trapalh�es',5,2);

Update Generos
SET Nome = 'Suspense'
WHERE Id_Genero = 4;

Update Livros
Set Id_Genero = 3
Where Id_Livro = 3;

Update Livros
Set Id_Autor = 4
Where Id_Livro = 5; 

Delete From Autores
Where Id_Autor = 2;

--APAGA TODOS OS DADOS DA TABELA 

--TRUNCATE TABLE "NOME DA TABELA";
--====================================

--SELECIONAR TODOS OS AUTORES;
SELECT * FROM Autores

--SELECIONAR TODOS OS GENEROS;
SELECT * FROM Generos

--SELECIONAR TODOS OS LIVROS;
SELECT * FROM Livros;
--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS AUTORES
Select Titulo, Id_Autor  From Livros
--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS GENEROS
Select Titulo, Id_Genero From Livros
--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS AUTORES E GENEROS
Select Titulo, Id_Autor, Id_Genero From Livros;