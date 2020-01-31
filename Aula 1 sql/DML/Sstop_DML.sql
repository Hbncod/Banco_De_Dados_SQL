CREATE DATABASE Sstop_Manha;

	CREATE TABLE EstilosMusicais(
	Id_EstiloMusical Int PRIMARY KEY IDENTITY ,
	Nome			 VarChar(200)
	);
	CREATE TABLE Artistas(
	Id_Artistas			Int PRIMARY KEY IDENTITY,
	NomeArtista			VarChar(200),
	Sec_EstiloMusical	Int FOREIGN KEY REFERENCES EstilosMusicais (Id_EstiloMusical)
	);

	SELECT * FROM EstilosMusicais
	SELECT * FROM Artistas

	--Alteracao adicionar nova coluna
	Alter Table Artistas
	ADD DataNascimento Date;

	--Alteracao modificar coluna
	Alter Table EstilosMusicais
	

	alter column Descricao VarChar(200);
	
	--Alteracao coluna Apagar 
	Alter Table Artistas
	Drop Column NomeArtista;

	--APAGAR TABELA
	--Drop Database RoteiroMusicas_Manha;

	--DML Linguagem de manipulacao de dados

INSERT INTO EstilosMusicais ( Nome, Descricao)
Values ('PAGODE', 'Musica PaGod'),
	   ('RAP'	, 'Ritimo e poesia'),
	   ('Funk'  , 'sla'				);

Insert Into Artistas (NomeArtista, Sec_EstiloMusical)
Values ('Zeca Pagodinho',1),
		('Emicida',2);

	SELECT * FROM EstilosMusicais
	SELECT * FROM Artistas


	--UPDATE ALTERAR DADOS DE DENTRO DAS TABELAS

	UPDATE Artistas
	SET NomeArtista = 'Alcione' --Novo "DADO"
	WHERE Id_Artistas = 3;		-- Linha Escolhida ---O ID.

	UPDATE Artistas
	SET Sec_EstiloMusical = 1
	WHERE Id_Artistas = 4;

-- DELETE apagar dados
DELETE FROM Artistas
WHERE Id_Artistas = 3 --APAGA A LINHA REFERENTE.






