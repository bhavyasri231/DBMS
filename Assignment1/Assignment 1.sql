--1.Find out the PG-13 rated comedy movies. DO NOT use the film_list table.

select title from film,category where category.name="Comedy" and film.rating = "PG-13";


--2. Find out the top 3 rented horror movies.

select top 3 rental_rate from film where film_id in (select film_id from film_category where category_id =(select category_id from film_category where category_id = (select category_id from category where name ="Horror")));


--3.Find out the list of customers from India who have rented sports movies.

select count(customer_id) from rental where inventory_id in(select inventory_id from inventory where film_id in (select film_id from film_category where category_id in(select category_id from film_category where category_id in(select category_id from category where name = "Sports"))));


--4.Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies.

select count(customer_id) from customer,customer_list,film where country = "canada" and film_id in(select film_id from film_actor where actor_id =(select actor_id from actor where first_name = "NICK" and last_name="WAHLBERG"));


--5. Find out the number of movies in which “SEAN WILLIAMS” acted.

select count(film_id) as NumOfFilms from film_actor where actor_id = (select actor_id from actor where first_name = "SEAN" and last_name = "WILLIAMS");
