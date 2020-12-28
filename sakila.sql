select  customer.first_name, customer.last_name, customer.email, address.address 
from customer 
inner join address on customer.address_id=address.address_id 
inner join city on address.city_id= city.city_id 
where city.city_id=312;

select film.title as Título, film.description, film.release_year as "Año de estreno", film.special_features as "Características especiales", film.rating, category.name as Categoría 
from film 
inner join film_category on film.film_id=film_category.film_id 
inner join category on film_category.category_id=category.category_id 
where category.category_id=5;

select actor.first_name as Actor, film.title as Película, film.description, film.release_year as "Año de estreno" 
from actor 
inner join film_actor on actor.actor_id=film_actor.actor_id 
inner join film on film.film_id= film_actor.film_id 
where actor.actor_id=5;

select  customer.first_name, customer.last_name, customer.email, address.address 
from customer 
inner join address on address.address_id= customer.address_id 
inner join city on city.city_id=address.city_id 
where city.city_id in (1,42,312,459) and customer.store_id=1;

select film.title as Título, film.description, film.release_year as "Año de estreno", film.special_features as "Características especiales", film.rating 
from film 
inner join film_actor on film_actor.film_id= film.film_id 
where film.special_features like '%behind the scenes%' and film.rating='G' and film_actor.actor_id=15;

select film.title, film.film_id, actor.actor_id, actor.first_name 
from film 
inner join film_actor on film.film_id = film_actor.film_id 
inner join  actor on actor.actor_id  = film_actor.actor_id 
where film.film_id = 369;

select film.title as Título, film.description, film.release_year as "Año de estreno", film.special_features as "Características especiales", category.name as Categoría, film.rental_rate 
from film 
inner join film_category on film.film_id=film_category.film_id 
inner join category on film_category.category_id=category.category_id 
where film.rental_rate=2.99 and category.category_id=7;

select film.title as Título, film.description, film.release_year as "Año de estreno", film.special_features as "Características especiales", film.rating, category.name as Categoría, actor.first_name, actor.last_name 
from film
inner join film_actor on film.film_id = film_actor.film_id 
inner join  actor on actor.actor_id  = film_actor.actor_id
inner join film_category on film.film_id=film_category.film_id 
inner join category on film_category.category_id=category.category_id
where actor.actor_id=23 and category.category_id=1;
