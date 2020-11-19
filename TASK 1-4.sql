USE sakila;
SELECT * FROM actor;
SELECT * FROM actor WHERE last_name = 'CAGE';
SELECT * FROM actor WHERE first_name <> 'NICK' AND first_name <> 'ZERO';
SELECT * FROM actor WHERE first_name IN ('NICK', 'JOHNNY', 'JAMES', 'MORGAN', 'WHOOPI');
SELECT * FROM actor WHERE actor_id BETWEEN 50 AND 150;
SELECT * FROM actor WHERE first_name LIKE 'C%';
SELECT * FROM actor ORDER BY first_name ASC;
SELECT * FROM actor ORDER BY last_name DESC;
SELECT COUNT(*) FROM actor;
SELECT COUNT(DISTINCT first_name) FROM actor;
SELECT category_id FROM category WHERE name = "horror";
SELECT film_id FROM film_category where category_id = (SELECT category_id FROM category WHERE name = "horror");
SELECT * FROM film where film_id in (SELECT film_id FROM film_category where category_id = (SELECT category_id FROM category WHERE name = "horror"));
SELECT title as name, description FROM film where film_id in (SELECT film_id FROM film_category where category_id = (SELECT category_id FROM category WHERE name = "horror"));

# Task 2
INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ('201', 'THIAS','PETERSEN','2020-01-09 14.01');

insert INTO film_actor ( actor_id, film_id, last_update)
VALUES ('201', '309', '2020-12-23 14.44'),
	('201', '323', '2020-12-23 14.09'),
	('201', '355', '2020-12-23 14.09'),
        ('201', '398', '2020-12-23 14.09'),
        ('201', '311', '2020-12-23 14.09'); 

UPDATE actor
SET first_name = 'Meyer', last_name = 'Bravo'
WHERE actor_id = 201;

SET FOREIGN_KEY_CHECKS=0;
DELETE FROM actor WHERE actor_id = 201;	
SET FOREIGN_KEY_CHECKS=1;
SELECT * FROM actor;

#TASK 3
SELECT * FROM category;
SELECT * FROM film JOIN film_category ON film.film_id = film_category.film_id WHERE category_id = 11;

#TASK 4
		