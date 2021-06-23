-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

SELECT city, SUM(amount)
FROM city
INNER JOIN address
ON address.city_id = city.city_id
INNER JOIN customer
ON customer.address_id = address.address_id
INNER JOIN rental
ON rental.customer_id = customer.customer_id
INNER JOIN payment
ON rental.rental_id = payment.rental_id
GROUP BY city
ORDER BY sum DESC
LIMIT 10


