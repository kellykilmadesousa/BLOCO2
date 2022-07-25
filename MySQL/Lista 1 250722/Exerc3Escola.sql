CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(255),
serie VARCHAR(255),
turno VARCHAR(255),
nota DECIMAL(8,2), 
ativo BOOLEAN 
);

SELECT * FROM tb_alunos where nota > 7.0;
SELECT * FROM tb_alunos where nota < 7.0;
UPDATE tb_alunos SET nota = 6.8 WHERE id = 5;

INSERT INTO tb_alunos(nome_aluno, serie, turno, nota,ativo)VALUE("Sandra Deyse", "3ª", "manhã",8.5,true);
INSERT INTO tb_alunos(nome_aluno, serie, turno, nota,ativo)VALUE("Roberto Felipe", "5ª", "manhã",7.5,true);
INSERT INTO tb_alunos(nome_aluno, serie, turno, nota,ativo)VALUE("José Paulo", "3ª", "manhã",8.0,true);
INSERT INTO tb_alunos(nome_aluno, serie, turno, nota,ativo)VALUE("Patrícia Bezerra", "6ª", "manhã",8.3,true);
INSERT INTO tb_alunos(nome_aluno, serie, turno, nota,ativo)VALUE("Simone Laura", "6ª", "manhã",6.0,true);
INSERT INTO tb_alunos(nome_aluno, serie, turno, nota,ativo)VALUE("Pedro José", "5ª", "manhã",8.5,true);
INSERT INTO tb_alunos(nome_aluno, serie, turno, nota,ativo)VALUE("Camila Carla", "3ª", "manhã",6.5,true);
INSERT INTO tb_alunos(nome_aluno, serie, turno, nota,ativo)VALUE("Geyse Fernanda", "6ª", "manhã",7.8,true);