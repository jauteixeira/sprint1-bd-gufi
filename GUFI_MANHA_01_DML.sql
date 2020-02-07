USE gufiManha;

--DML - INSERÇÃO DE DADOS

INSERT INTO tipoUsuario (tituloTipoUsuario)
VALUES ('Administrador'),
	   ('Usuario Comum');


INSERT INTO tipoEvento (tituloTipoEvento)
VALUES ('C#'),
	   ('React'),
	   ('SQL');


INSERT INTO Instituicao (CNPJ, nomeFantasia, endereco)
VALUES ('11111111111111', 'Escola SENAI de Informatica', 'Alameda Barão de Limeira 538');


INSERT INTO Usuario (nome, email, senha, dataCadastro, genero)
VALUES ('Administrador', 'adm@adm.com', 'adm123', '2020-02-06 06:01:31', 'Não Informado'),
	   ('Carol', 'carol@email.com', 'carol123', '2020-02-06 07:48:01', 'Feminino'),
	   ('Saulo', 'saulo@email.com', 'saulo123', '2020-02-07 10:30:34', 'Masculino');


INSERT INTO Evento (nomeEvento, dataEvento, descricao, acessoLivre, idInstituicao, idTipoEvento)
VALUES ('Orientação a Objetos', '2020-02-07 11:00:00', 'Conceito sobre os pilares da programação a objetos', 1, 2, 1),
	   ('Ciclo da Vida', '2020-02-08 13:30:00', 'Como utilizar os ciclos da vida com a biblioteca ReactJS', 0, 2, 2),
	   ('Introdução a SQL', '2020-02-09 14:00:00', 'Comandos basicos utilizando SQL Server', 1, 2, 3);


INSERT INTO Presenca (idUsuario, idEvento, situacao)
VALUES (2, 4, 'Não informado'),
	   (2, 5, 'Confirmado'),
	   (3, 6, 'Não informado');



