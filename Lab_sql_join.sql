use sakila;
-- List the number of films per category.
select category.name, count(film_id) as number_of_films from category join film_category on category.category_id = film_category.category_id group by category.name;
-- List the number of films per category.
select first_name, last_name, address from staff a join address b on a.address_id = b.address_id;
select * from payment;
-- Display the total amount rung up by each staff member in August 2005.
select s.staff_id, s.last_name, count(amount) as amount_rung_up from staff as s join payment as p on s.staff_id = p.staff_id where extract(year_month from p.payment_date) = '200508' 
group by s.staff_id, s.last_name;
-- List all films and the number of actors who are listed for each film.
select f.film_id, f.title, count(distinct(actor_id)) as number_of_actors from film as f join film_actor as a on f.film_id = a.film_id group by f.film_id, f.title;
-- Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.
select c.customer_id, c.last_name, count(amount) as total_payment from customer as c join payment as p on c.customer_id = p.customer_id group by c.customer_id, c.last_name order by c.last_name;
