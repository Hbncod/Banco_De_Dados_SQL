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

			SELECT * FROM Artistas
			SELECT * FROM Albuns
			SELECT * FROM Usuarios

			--Alterar um nome de artista
			Update Artistas
			Set Nome = 'José'
			Where Id_Artista=3;

			Update Usuarios
			Set FK_TipoUsuario = 2
			Where Id_Usuario = 3;

			Update Albuns
			Set Visualizacao = 500
			Where Id_Album = 4

			Delete From Albuns
			Where Id_Album = 3

			Delete From Albuns
			Where Id_Album >= 2;

			Update Albuns
			Set Album_Bom = 1
			Where Id_Album in (1,7,9,10)

			Update Albuns
			Set Album_Bom = 0 Where Id_Album in (6, 8)

			Update Albuns
			set QtdMinutos = 30
			Where Id_Album Between 6 And 9;

			Update Albuns
			Set Nome = 'Trocou'
			Where Id_Album In (6,8);


			Alter Table Albuns
			Add Album_Bom bit;

		--	Insert Into Albuns (Id_Album)  EU PRECISO ALTERAR E NÃO INSERIR!!!
			--Values	(1),
			--		(0),
			--	(1),
			--	(0),
			--(1),
			--(1);


			-- DQL Linguagem de Consulta de dados

			Select * From Artistas
			Select Nome From Artistas

			Select Nome, Album_Bom From Albuns
			--							Or Significa Ou
			Where (Album_Bom is null) Or ( Nome = 'NDDN');

			--Filtro de Texto (LIKE)

			Select Id_Album, Nome From Albuns
			Where Nome LIKE '%A%'; -- % significa q após, o "N" ainda existe texto; ele também pode ser usado antes da palavra ou em sua volta, significando q há texto em volta dela.
			
			--Ordenação

			Select Id_Album, Nome, Visualizacao From Albuns
			Order By Visualizacao;

			Select Id_Album, Nome, Visualizacao From Albuns
			Order By Visualizacao Desc; --desc = do maior para o menor
			
			Select Id_Album, Nome, Visualizacao From Albuns
			Order By Visualizacao, DataLancamento; -- DataLancamento está sendo usado como termo de desempate.

			--Count .. Ele Conta o número de dados. Obs: Ele não somará algo q esteja nulo.

			Select Count(Id_Album) From Albuns;



			--SELECIONAR OS ALBUNS DO MESMO ARTISA

			Select Nome, Fk_Artista From Albuns
			Where Fk_Artista = 1;

			--SELECIONAR OS ALBUNS LANÇADOS NA MESMA DATA

			Select Nome, DataLancamento From Albuns
			Where DataLancamento = '01/02/2001';
			
			--SELECIONAR OS ARTISTAS DO MESMO ESTILO MUSICAL

			Select Nome, Fk_Estilo From Albuns
			Where Fk_Estilo = 3;

			-- SELECIONAR ALBUNS E ARTISTAS E ORDENAR A DATA DE LANCAMENTO DA MAIS RECENTE PARA MAIS ANTIGA.

			Select Nome, Fk_Artista, DataLancamento From Albuns
			Order By DataLancamento Desc;
