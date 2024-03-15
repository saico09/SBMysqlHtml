drop table if exists videojuego;

CREATE TABLE videojuego (
	id int primary key auto_increment,
	nombre varchar(200) not null,
	descripcion varchar(3000),
	image_url varchar(500) 
);

INSERT INTO videojuego
(nombre, descripcion, image_url) values
("God of War 4", "Nueva aventura de Kratos", "https://pics.filmaffinity.com/God_of_War-693015917-large.jpg"),
("Grand Theft Auto V", "Atrévete a entrar en Los Santos", "https://i.blogs.es/2c9c70/gta-20v-20portada-20grande/450_1000.webp"),
("Red Dead Redemption 2", "Vive la épica historia del oeste", "https://i.blogs.es/juegos/13424/red_dead_3__nombre_temporal_/fotos/maestras/red_dead_3__nombre_temporal_-4030936.jpg"),
("Starcraft 2", "Domina el campo de batalla en el espacio", "https://media.vandal.net/m/9604/starcraft-ii-legacy-of-the-void-20151111113556_1.jpg");