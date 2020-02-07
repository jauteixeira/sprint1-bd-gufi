USE gufiManha;

--DQL - LINGUAGEM DE CONSULTA DE DADOS

--SELE플O DOS USUARIOS CADASTRADOS 
SELECT idUsuario, nome, email, senha, dataCadastro, genero, tipoUsuario.idTipoUsuario
FROM Usuario
INNER JOIN tipoUsuario ON Usuario.idTipoUsuario = tipoUsuario.idTipoUsuario;

--SELEC홒 DAS INSTITUI합ES 
SELECT * FROM Instituicao

--SELE플O DOS TIPOS DE EVENTOS
SELECT * FROM tipoEvento

--SELE플O DOS EVENTOS
SELECT nomeEvento, dataEvento, descricao, acessoLivre, Instituicao.nomeFantasia, tipoEvento.tituloTipoEvento
FROM Evento
INNER JOIN Instituicao ON Evento.idInstituicao = Instituicao.idInstituicao
INNER JOIN tipoEvento ON Evento.idTipoEvento = tipoEvento.idTipoEvento;

--SELE플O DOS EVENTOS PUBLICOS
SELECT nomeEvento, dataEvento, descricao, acessoLivre, Instituicao.nomeFantasia, tipoEvento.idTipoEvento
FROM Evento
INNER JOIN Instituicao ON Evento.idInstituicao = Instituicao.idInstituicao
INNER JOIN tipoEvento ON Evento.idTipoEvento = tipoEvento.idTipoEvento
WHERE acessoLivre = 1;

--SELE플O DOS EVENTOS QUE UM DETERMINADO USUARIO PARTICIPA
SELECT Evento.nomeEvento, tipoEvento.tituloTipoEvento, Evento.dataEvento, Evento.acessoLivre, Evento.descricao, Usuario.nome, Instituicao.nomeFantasia
FROM Presenca
INNER JOIN Usuario ON Presenca.idUsuario = Usuario.idUsuario
INNER JOIN Evento ON Presenca.idEvento = Evento.idEvento
INNER JOIN tipoEvento ON Evento.idTipoEvento = tipoEvento.idTipoEvento
INNER JOIN Instituicao ON Evento.idInstituicao = Instituicao.idInstituicao
WHERE Presenca.idUsuario = 3;