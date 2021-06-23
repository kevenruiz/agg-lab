-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT country,
       AVG(amount)
FROM country
INNER JOIN city
ON country.country_id = city.country_id
INNER JOIN address 
ON city.city_id = address.city_id
INNER JOIN customer
ON customer.address_id = address.address_id
INNER JOIN rental
ON customer.customer_id = rental.customer_id
INNER JOIN payment
ON rental.rental_id = payment.rental_id
GROUP BY country
ORDER BY AVG DESC
LIMIT 10

