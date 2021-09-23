-- CREA BASE DE DATOS
CREATE SCHEMA IF NOT EXISTS `notas_db`;
USE `notas_db`;

-- TABLA DE CATEGORIAS
CREATE TABLE notas_db.categories (
	id INT NOT NULL AUTO_INCREMENT,
	name varchar(80) NOT NULL,
	CONSTRAINT categories_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

-- Agrega 5 Registros De Prueba
INSERT INTO notas_db.categories (name)
VALUES ('Musica');
INSERT INTO notas_db.categories (name)
VALUES ('Deportes');
INSERT INTO notas_db.categories (name)
VALUES ('Politica');
INSERT INTO notas_db.categories (name)
VALUES ('Cine');
INSERT INTO notas_db.categories (name)
VALUES ('Programación');
INSERT INTO notas_db.categories (name)
VALUES ('Estudio');
INSERT INTO notas_db.categories (name)
VALUES ('Videojuegos');
INSERT INTO notas_db.categories (name)
VALUES ('Trabajo');
INSERT INTO notas_db.categories (name)
VALUES ('Teatro');
INSERT INTO notas_db.categories (name)
VALUES ('Otros');


-- TABLA DE NOTAS
CREATE TABLE notas_db.notes (
	id INT NOT NULL AUTO_INCREMENT,
	title varchar(100) NOT NULL,
	create_date DATE NOT NULL,
	update_date DATE NULL,
	description TEXT NOT NULL,
	allowdelete TINYINT DEFAULT 0 NOT NULL,
	category_id INT NOT NULL,
	CONSTRAINT notes_pk PRIMARY KEY (id),
	CONSTRAINT notes_categories_fk FOREIGN KEY (category_id) REFERENCES notas_db.categories(id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

--  Agrega 10 Registros De Prueba Para Notas
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',2);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 2','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',4);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 3','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',3);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 4','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',2);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 5','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',2);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 6','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',5);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 7','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',1);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 8','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',5);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 9','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',5);
INSERT INTO notas_db.notes (title,create_date,description,category_id)
VALUES ('Prueba 10','2021-09-21','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat odio laboriosam eaque enim sint nam! A minus provident sunt voluptates ex, dolore vero dolor cumque doloribus harum libero, ad at?',1);


-- TABLA DE USAURIOS
CREATE TABLE notas_db.users (
	id INT NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	email varchar(100) NOT NULL UNIQUE,
	note_id INT NOT NULL,
	CONSTRAINT users_pk PRIMARY KEY (id),
	CONSTRAINT users_notes_fk FOREIGN KEY (note_id) REFERENCES notas_db.notes(id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

-- Agrega Los 10 Registros De Prueba De Usuarios

INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 1','usuario@gmail.com',1);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 2','usuario2@gmail.com',3);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 3','usuario3@gmail.com',2);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 4','usuario4@gmail.com',4);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 5','usuario5@gmail.com',5);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 6','usuario6@gmail.com',9);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 7','usuario7@gmail.com',6);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 8','usuario8@gmail.com',7);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 9','usuario9@gmail.com',8);
INSERT INTO notas_db.users (name,email,note_id)
VALUES ('usuario 10','usuario10@gmail.com',10);

