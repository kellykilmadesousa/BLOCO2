CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	vegano BOOLEAN NOT NULL,
	tradicional BOOLEAN NOT NULL
);
CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255) NOT NULL,
    tamanho CHAR NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    cebola BOOLEAN NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(vegano, tradicional)
VALUES (true, false),(false,true),(true,false),(true, false),(false, true);

SELECT * FROM tb_pizzas;
INSERT INTO tb_pizzas(sabor,tamanho,valor,cebola,categoria_id)VALUES("mussarela","M",55.00,true,3);
INSERT INTO tb_pizzas(sabor,tamanho,valor,cebola,categoria_id)VALUES("mussarela","P",45.00,true,5);
INSERT INTO tb_pizzas(sabor,tamanho,valor,cebola,categoria_id)VALUES("calabresa","G",70.00,false,4);
INSERT INTO tb_pizzas(sabor,tamanho,valor,cebola,categoria_id)VALUES("4 queijos","M",75.00,true,3);
INSERT INTO tb_pizzas(sabor,tamanho,valor,cebola,categoria_id)VALUES("Bacon","M",55.00,true,2);
INSERT INTO tb_pizzas(sabor,tamanho,valor,cebola,categoria_id)VALUES("3 queijos","P",40.00,true,5);
INSERT INTO tb_pizzas(sabor,tamanho,valor,cebola,categoria_id)VALUES("frango","P",40.00,false,4);
INSERT INTO tb_pizzas(sabor,tamanho,valor,cebola,categoria_id)VALUES("Portuguesa","M",78.00,true,1);

SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100; -- valor > 50 AND valor < 100
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 3;