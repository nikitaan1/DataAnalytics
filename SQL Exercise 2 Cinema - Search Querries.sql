-- Movies with raiting over 9

select title, rating 
from movie
where rating > 9;

-- Customers that spend over $20

select first_name, last_name, total_amount
from customer c
join customer_order co 
	on c.customer_id = co.customer_id 
where total_amount >= 20;

-- Number of cinemas:

select cinema_id, count(*)
from cinema
group by cinema_id 