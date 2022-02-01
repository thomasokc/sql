--1. How many actors are there with the last name 'Wahlberg'?
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer, 2

-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer, 5607

-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT (film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- Answer, 72 different titles occur 8 times? When just counting titles in individual stores the number is bigger

-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- Answer, None

-- 5. What store employee (get the id) sold the most rentals? 
SELECT staff_id, COUNT(staff_id)
FROM payment
GROUP BY staff_id
ORDER BY COUNT (staff_id) DESC;
-- Answer, 2

-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
-- Answer, 378

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT  film_id, COUNT(actor_id) AS total_actors
FROM film_actor 
GROUP BY film_id
ORDER BY total_actors DESC;
-- Answer, Film ID 508

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT (last_name), store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
HAVING store_id = 1;
-- Answer, 13

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT *
FROM payment;

SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250
-- Answer, 2.99, 4.99, and 0.99

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(DISTINCT film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT (film_id) DESC;
-- Answer, 5 catagories with PG-13 occuring the most







