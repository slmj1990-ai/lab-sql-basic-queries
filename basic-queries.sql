USE sakila;

SHOW TABLES;

-- obtener datos e las tablas: actor,fil y costumer --
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- titulos de todas las peliculas
SELECT title
FROM film;

-- Idiomas usados en las pelis
SELECT name AS language
FROM language;

-- empleados del staff
SELECT first_name
FROM staff;


-- años de estreno unicos 
SELECT DISTINCT release_year
FROM film;

-- numero de tiendas 
SELECT COUNT(*) AS numero_de_tiendas
FROM store;

-- peliculas disponibles para alquilar
SELECT COUNT(DISTINCT film_id) AS peliculas_disponibles
FROM inventory;

-- peliculas que han sido alquiladas
SELECT COUNT(DISTINCT inventory_id) AS peliculas_alquiladas
FROM rental;

-- apellidos distintos
SELECT COUNT(DISTINCT last_name) AS apellidos_distintos
FROM actor;

-- top ten peliculas mas largas
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- filtro de todos los nombres Scarlett 
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS: buscando Armageddon en el titulo
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- numero de peliculas con contenido detras de escenas
SELECT COUNT(*) AS numero_de_peliculas
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
