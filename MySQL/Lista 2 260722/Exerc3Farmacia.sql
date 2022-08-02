CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255)
);
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
valor DECIMAL (8,2),
fabricante VARCHAR(255),
validade DATE,
categoria_id BIGINT,

FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(categoria)VALUES("dor de cabeça"),("resfriado"),("gastrite"),("cólica"),("insônia");

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(nome_produto,valor,fabricante,validade,categoria_id)VALUES("alegra",55.00,"blablabla","2023-06-20",2);
INSERT INTO tb_produtos(nome_produto,valor,fabricante,validade,categoria_id)VALUES("buscopan",26.00,"blablabla","2023-06-20",4);
INSERT INTO tb_produtos(nome_produto,valor,fabricante,validade,categoria_id)VALUES("multigrip",15.00,"blablabla","2023-06-20",2);
INSERT INTO tb_produtos(nome_produto,valor,fabricante,validade,categoria_id)VALUES("simeticona",60.00,"blablabla","2023-06-20",3);
INSERT INTO tb_produtos(nome_produto,valor,fabricante,validade,categoria_id)VALUES("dorflex",19.00,"blablabla","2023-06-20",1);
INSERT INTO tb_produtos(nome_produto,valor,fabricante,validade,categoria_id)VALUES("dipirona",12.00,"blablabla","2023-06-20",2);
INSERT INTO tb_produtos(nome_produto,valor,fabricante,validade,categoria_id)VALUES("rivotril",20.00,"blablabla","2023-06-20",5);

SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor < 50.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id WHERE tb_produtos.id = 2;