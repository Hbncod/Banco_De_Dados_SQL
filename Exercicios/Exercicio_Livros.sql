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
Values ('João Cleber'),
		('José de alencar'),
		('Alek'),
		('Pericles'),
		('Maicon');

Insert INTO Generos ( Nome)
Values ('Ficção'),
		('Aventura'),
		('Romance'),
		('Terror'),
		('Comédia');

Insert Livros (Titulo, Id_Genero, Id_Autor)
Values ('os 7 leões',2,4),
		('A Branca de neve',3,3),
		('Hora de aventura',1,5),
		('Hora do terror',4,1),
		('Os trapalhões',5,2);

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