CREATE DATABASE fatec_news;

CREATE TABLE carr (
  id_carr INT(11) NOT NULL AUTO_INCREMENT,
  descricao_titulo VARCHAR(80) DEFAULT NULL,
  descricao_carr VARCHAR(200) DEFAULT NULL,
  imagem_carr TEXT NOT NULL,
  PRIMARY KEY (id_carr)
);

CREATE TABLE noticias (
  id_noticia INT(11) NOT NULL AUTO_INCREMENT,
  data_hora DATETIME NOT NULL,
  descricao_titulo VARCHAR(80) NOT NULL,
  descricao_resumida TEXT NOT NULL,
  descricao_completa TEXT NOT NULL,
  imagem_index TEXT,
  imagem_post TEXT,

  PRIMARY KEY (id_noticia),
  FOREIGN KEY (id_noticia_tipo) REFERENCES noticias_tipos (id_noticia_tipo),
  FOREIGN KEY (id_carr) REFERENCES carr (id_carr)
);

CREATE TABLE noticias_tipos (
  id_noticia_tipo INT(11) NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(80) NOT NULL,
  PRIMARY KEY (id_noticia_tipo)
);

CREATE TABLE usuarios (
  id_usuario INT(11) NOT NULL AUTO_INCREMENT,
  login VARCHAR(40) NOT NULL,
  nome VARCHAR(80) NOT NULL,
  email VARCHAR(100) NOT NULL,
  senha VARCHAR(40) NOT NULL,
  PRIMARY KEY (id_usuario)
);