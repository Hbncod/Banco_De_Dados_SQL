CREATE DATABASE Optus_Manhã;
	CREATE TABLE TiposUsuario(
	Id_TipoUsuario INT PRIMARY KEY IDENTITY,
	Tipo			VarChar(5) --Errei// criei em outro banco ksjs
	);

	Create Table Usuarios(
		Id_Usuario		Int Primary Key Identity,
		Nome			VarChar(200),
		FK_TipoUsuario	Int Foreign Key References TiposUsuario (Id_TipoUsuario)
	); 

	Create Table Artistas(
		Id_Artista	Int Primary Key Identity,
		Nome		VarChar(200)
		);
	Create Table Estilos(
		Id_Estilo	Int Primary Key Identity,
		Nome		VarChar(200)
		);

	Create Table Albuns(
		Id_Album		Int Primary Key Identity,
		Nome			VarChar(200),
		DataLancamento	Date,
		QtdMinutos		Int,
		Visualizacao	BigInt,
		Fk_Artista		Int Foreign Key References Artistas (Id_Artista),
		Fk_Estilo		Int Foreign Key References Estilos	(Id_Estilo)
		);

	--DML Linguagem de manipulacao de dados

	Insert Into TiposUsuario(Tipo)
	Values ('Adm'),
			('Comum');
	Insert Into Usuarios(Nome,FK_TipoUsuario)
	Values	('Henrique',2),
			('Gabriel',3),
			('Eduardo',3),
			('Leandro',3),
			('Leonardo',3);			
SELECT * FROM Usuarios
SELECT * FROM TiposUsuario
	
	Insert Into Artistas(Nome)
	Values	('Emicida'),
			('Coruja Bc1'),
			('Kamau'),
			('Rashid'),
			('Amiri');

	Insert Into Estilos (Nome)
	Values	('Rock'),
			('Funk'),
			('Rap'),
			('Pagode'),
			('Pop');

	Insert Into Albuns (Nome, DataLancamento, QtdMinutos, Visualizacao, Fk_Artista,Fk_Estilo)
	Values	('AmarElo','02/03/2017',143,220,1,3),
			('NDDN','02/03/2017',143,220,2,3),
			('Non Ducor Duco','02/03/2017',143,220,3,3),
			('Crise','02/03/2017',143,220,4,3),
			('NFDK','02/03/2017',143,220,5,3);
			--ALTERAR Datas, Minutos e Visualizações :)