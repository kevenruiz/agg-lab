-- customer ranking by total film time watched
-- similar to exercise 6


SELECT email,
RANK() OVER (ORDER BY SUM(length) DESC)
FROM film
INNER JOIN inventory
ON film.film_id = inventory.film_id
INNER JOIN rental
ON inventory.inventory_id = rental.inventory_id
INNER JOIN customer
ON rental.customer_id = customer.customer_id
GROUP BY email
