CREATE DATABASE bd_restaurante;

USE bd_restaurante;

CREATE TABLE tb_comanda (
    pk_id_comanda INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    status_comanda BOOLEAN NOT NULL
);

CREATE TABLE tb_produto (
  pk_id_produto INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  preco_produto DOUBLE NOT NULL,
  nome_produto VARCHAR(100) NOT NULL,
  categoria_produto VARCHAR(100) NOT NULL
);

CREATE TABLE tb_pedido (
    pk_id_pedido INTEGER PRIMARY KEY,
    qtd_itens INTEGER,
    fk_Produto_pk_id_produto INTEGER,
    fk_Comanda_pk_id_comanda INTEGER
);

ALTER TABLE tb_pedido ADD CONSTRAINT fk_tb_pedido
    FOREIGN KEY (fk_Produto_pk_id_produto)
    REFERENCES tb_produto (pk_id_produto);

ALTER TABLE tb_pedido ADD CONSTRAINT fk_tb_pedido_2
    FOREIGN KEY (fk_Comanda_pk_id_comanda)
    REFERENCES tb_comanda (pk_id_comanda);




