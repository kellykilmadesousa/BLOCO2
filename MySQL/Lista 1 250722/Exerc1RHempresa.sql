CREATE DATABASE db_RHempresa;
USE db_RHempresa;
CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_colaborador VARCHAR(255),
setor VARCHAR(255),
data_nascimento DATE,
salario DECIMAL(8,2), 
ativo BOOLEAN 
);

SELECT * FROM tb_colaboradores where salario >= 2000;
SELECT * FROM tb_colaboradores where salario <= 2000;
UPDATE tb_colaboradores SET salario = 1995 WHERE id = 5;

INSERT INTO tb_colaboradores(nome_colaborador, setor, data_nascimento, salario,ativo)VALUE("Mario Jose", "Design", "1968-06-15",3600,true);
INSERT INTO tb_colaboradores(nome_colaborador, setor, data_nascimento, salario,ativo)VALUE("Eduarda Louise", "Design", "1999-02-04",4500,true);
INSERT INTO tb_colaboradores(nome_colaborador, setor, data_nascimento, salario,ativo)VALUE("Sandra Maria", "Publicidade", "1993-05-23",2500,true);
INSERT INTO tb_colaboradores(nome_colaborador, setor, data_nascimento, salario,ativo)VALUE("Laura Silva", "Comunicação", "1988-06-10",1900,true);
INSERT INTO tb_colaboradores(nome_colaborador, setor, data_nascimento, salario,ativo)VALUE("Millena Carneiro", "Comunicação", "1958-05-8",1950,true);