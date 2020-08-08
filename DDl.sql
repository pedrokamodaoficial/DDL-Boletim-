/*DDL's Criamos o Banco*/

CREATE DATABASE boletim;
GO

/*usamos o banco efetivamente*/
USE boletim;
GO

/* Excluir o banco*/
/*DROP DATABASE boletim;*/

/* Criamosa tabela Aluno*/
/* IDENTITY -> Gera os IDs automaticamente de forma sequencial */
CREATE TABLE aluno (
	idAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL, 
	Ra VARCHAR(20), 
	Idade INT
);

/* Criamos a tabela materia*/
CREATE TABLE materia(
	IdMateria INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50) NOT NULL,  
);

/* Criamos a tabela Trabalho */
CREATE TABLE trabalho(
	IdTrabalho INT PRIMARY KEY IDENTITY NOT NULL,
	Nota DECIMAL,

	-- Chamamos nossas chaves estrangeiras (Foreign Keys)
	IdAluno INT FOREIGN KEY REFERENCES aluno (IdAluno),
	IdMateria INT FOREIGN KEY REFERENCES materia (IdMateria)
);

/* Incluimos a coluna esquecida: DataEntrega */
ALTER TABLE trabalho ADD DataEntrega DATETIME; 

/* Criamos uma coluna de teste para excluirmos depois */
ALTER TABLE trabalho ADD teste INT; 

--Excluimos a coluna
ALTER TABLE trabalho DROP COLUMN teste;
