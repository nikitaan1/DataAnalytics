
-- Exercise 1 
select count(last_name) as 'Wahlberg Count'
from actor
where last_name like 'Wahlberg';

-- Exercise 2
select *
from payment
where amount between 3.99 and 5.99;

-- Exercise 3 (not ready)
select film_id, count(film_id) as "Movie_count"
from inventory
where store_id = 1
group by film_id
order by "Movie_count" desc limit 1


-- Exercise 4
select count(last_name)
from customers
where last_name = 'William';

-- Exercise 5
select staff_id, COUNT(rental_id) as "Number"
from rental
group by staff_id
order by COUNT(rental_id) desc;

-- Exercise 6 
select (distinct(district))
from address;

-- Exercise 7
select film_id, COUNT(actor_id) as "Actor"
from film_actor
group by film_id
order by film_id;

-- Exercise 8
select *
from customer
where store_id = 1 and last_name like '%es'
order by last_name;

-- Exercise 9
select count(amount), amount 
from payment
where customer_id between 380 and 430
group by amount having count(rental_id) > 250
order by amount; 

-- Exercise 10
select distinct rating, COUNT(rating)
from film
group by rating
order by COUNT(rating) desc;
