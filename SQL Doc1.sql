--1.How many actors are there with the last name ‘Wahlberg’? 
SELECT *
FROM actor;
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
--Two people. Nick Wahlberg and Daryl Wahlberg


--2. How many payments were made between $3.99 and $5.99? 
select *
from payment;
SELECT sum(amount) 
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--5567

--3. What film does the store have the most of? (search in inventory) 
select *
from inventory;
select sum(film_id) 
from inventory;

--Film 200 with 9 


--4. How many customers have the last name ‘William’? 
SELECT *
FROM customer;
SELECT first_name, last_name
FROM actor
WHERE last_name = 'William';
--No customer has the last name “William”. 0

--5. What store employee (get the id) sold the most rentals? 
select *
from rental;

select staff_id, sum(staff_id)
from rental r;
--1 - 8040

--6. How many different district names are there? 
select district, count(district)
from address a 
group by district 
order by district;

-- 378


--7. What film has the most actors in it? (use film_actor table and get film_id) 
select film_id, count(film_id) 
from film_actor 
group by film_id
order by film_id desc;

--film_id 508 - 15 actors



--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
SELECT last_name
FROM customer
WHERE last_name LIKE '__%es';
--13


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 

SELECT customer_id, amount(customer_id)
FROM payment
WHERE amount BETWEEN 4.99 and 5.99

--HAVING customer_id BETWEEN 380 and 430

select*
from payment

--3


--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?

select count(rating), rating
from film
group by rating

select*
from film 

--5 ratings, PG-13 has the most




