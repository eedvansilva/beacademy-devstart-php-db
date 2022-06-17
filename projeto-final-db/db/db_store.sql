
--Criar O banco de dados--
CREATE DATABASE db_store;

--Selecionar o banco--
USE db_store;


--Criar Tabela--

CREATE TABLE tb_category(

    id INT (11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (30) NOT NULL, 
    description  VARCHAR (100) NOT NULL
);

INSERT INTO tb_category(name, description)
VALUES
 ('Informartica', 'Produtos de Informatica e acessororios para computador'),
 ('Escritorio', 'Canetas , Cadernos, Folhas e etc' ),
 ('Eletronicos', 'Tvs, som portatil, Caixas de Som, etc');


 CREATE TABLE tb_product(

    id INT (11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (30) NOT NULL, 
    description  VARCHAR (100) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    value FLOAT (5,2)NOT NULL,
    category_id INT (11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO tb_product(name, description, photo, value, category_id, quantity, created_at)

VALUES
('Teclado2', 'teclado blbl blbl', 'https://m.media-amazon.com/images/I/51QC0TU46RL._AC_SL1000_.jpg', 299.29,1,50,'2022-06-15 10:57:00'),
('Teclado3', 'teclado blbl blbl', 'https://m.media-amazon.com/images/I/51QC0TU46RL._AC_SL1000_.jpg', 299.29,1,50,'2022-06-15 10:57:00'),
('Teclado3', 'teclado blbl blbl', 'https://m.media-amazon.com/images/I/51QC0TU46RL._AC_SL1000_.jpg', 299.29,1,50,'2022-06-15 10:57:00');
