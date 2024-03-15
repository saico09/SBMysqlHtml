
--
-- Base de datos: `videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego`
--
drop table videojuego;
CREATE or replace TABLE distribuidor ( id int PRIMARY KEY AUTO_INCREMENT, nombre VARCHAR(200), sitio_web VARCHAR(500) );

INSERT INTO distribuidor 
(id, nombre, sitio_web) values
(1, 'Santa Monica', 'https://sms.playstation.com'),
(2, 'Rockstar', 'https://www.rockstargames.com/es/'),
(3, 'Blizzard', 'https://www.blizzard.com/es-es/'),
(4, 'Sony Interactive Entertainment', 'https://www.playstation.com/'),
(5, 'Nintendo', 'https://www.nintendo.com/es/'),
(6, 'Naughty Dog', 'https://www.naughtydog.com/');

CREATE OR REPLACE TABLE `videojuego` (
  `id` int(11) PRIMARY KEY auto_increment,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(3000) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL
);

ALTER TABLE videojuego ADD COLUMN distribuidor_id int, ADD FOREIGN KEY (distribuidor_id) REFERENCES distribuidor(id);

--
-- Volcado de datos para la tabla `videojuego`
--

INSERT INTO `videojuego` (`nombre`, `descripcion`, `image_url`, distribuidor_id) VALUES
('God of War 4', 'Nueva aventura de Kratos', 'https://files.soniccdn.com/files/2019/04/30/god%20of%20war.jpg', 1),
('Grand Theft Auto V', 'Atrévete a entrar en Los Santos', 'https://i.blogs.es/2c9c70/gta-20v-20portada-20grande/450_1000.webp', 2),
('Red Dead Redemption 2', 'Vive la épica historia del oeste', 'https://i.blogs.es/juegos/13424/red_dead_3__nombre_temporal_/fotos/maestras/red_dead_3__nombre_temporal_-4030936.jpg', 2),
('Starcraft 2', 'Domina el campo de batalla en el espacio', 'https://media.vandal.net/m/9604/starcraft-ii-legacy-of-the-void-20151111113556_1.jpg', 3),
('Horizon', 'Aventura en un futuro distópico', 'https://image.api.playstation.com/vulcan/ap/rnd/202107/3100/1dy5w3SNiJnXjP8YvmydCL9X.png',4),
('Zelda: Breath of the Wild', 'Acompaña a Link en esta nueva aventura', 'https://assets-prd.ignimgs.com/2022/06/14/zelda-breath-of-the-wild-1655249167687.jpg',5),
('The Last of Us Part II', 'No se no lo jugue', 'https://image.api.playstation.com/vulcan/img/rnd/202010/2618/w48z6bzefZPrRcJHc7L8SO66.png',6)
;





