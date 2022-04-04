-- 1.Find out the number of documentaries with deleted scenes.

select count(*) as NumOfDocumentory from film where special_features = "Deleted Scenes";



--2.Find out the number of sci-fi movies rented by the store managed by Jon Stephens.

select count(*) from film_list where category = "sci-fi" and FID = (select film_id from inventory where inventory_id = (select inventory_id from rental where staff_id =(select id from staff_list where name = "Joe Stephens")));



--3.Find out the total sales from Animation movies.

select total_sales from sales_by_film_category s where s.category = "Animation";



--4.Find out the top 3 rented category of movies by “PATRICIA JOHNSON”.

select top 3 rental_rate from film,category where group by category order by rental_rate desc and film_id in (select film_id from inventory where inventory_id =(select inventory_id from rental where customer_id =(select ID from customer_list where name = "PATRICIA JOHNSON")));


--5.Find out the number of R rated movies rented by “SUSAN WILSON”.

select count(*) from film where rating = "R" and film_id = (select film_id from inventory where inventory_id = (select inventory_id from rental where customer_
id = (select id from customer_list where name = "SUSAN WILSON")));



