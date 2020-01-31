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





