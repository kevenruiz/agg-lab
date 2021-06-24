-- rank of film category by times rented
-- include the name, count, and rank

SELECT
	name,
	COUNT(rental.rental_id),
	RANK() OVER (ORDER BY COUNT(rental.rental_id) DESC)
FROM
	category
INNER JOIN film_category
ON film_category.category_id = category.category_id
INNER JOIN film
ON film.film_id = film_category.film_id
INNER JOIN inventory
ON inventory.film_id = film.film_id
INNER JOIN rental
ON rental.inventory_id = inventory.inventory_id
GROUP BY category.name