-- List all the customers who live in Texas

select *
from customer c
join address a 
	on c.address_id = a.address_id 
where a.district = 'Texas';


-- Get all the payments above $6.99 with the customer's full name

select first_name, last_name, amount
from payment p 
join customer c 
	on p.customer_id = c.customer_id 
where amount > 6.99
order by amount desc;


-- Show all customers names who have made payments over $175

select first_name, last_name, amount
from customer c 
join order_ o 
	on c.customer_id = o.customer_id 
where amount > 175;

-- List all customers that live in Nepal

select *
from customer c
join address a 
	on c.address_id = a.address_id 
where a.district = 'Nepal';

-- Which staff member had the most transactions?

select s.staff_id, first_name, last_name, count(*) as Sales
from staff s
join payment p
	on s.staff_id = p.staff_id 
group by s.staff_id
order by count(*) desc;

-- How many movies of each rating are there?

select movie_rating, count(*) as Num_of_raitings
from movies
group by movie_rating;

-- Show all customers who have made a single payment above $6.99

select first_name, last_name, amount, count(distinct amount) 
from order_ o 
join customer c 
	on o.order_id = c.customer_id 
group by first_name, last_name, amount
having amount > 6.99;


-- How many free rentals our company give away?

select count(*) as number_of_free_rentals
from rental r
join payment p
 on r.rental_id = p.rental_id
group by amount 
having amount = 0;
 






