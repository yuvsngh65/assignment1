use mavenmovies;
-- 1)Identify the primary keys and foreign keys in maven movies db. Discuss the differences
SELECT TABLE_NAME, COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME = 'PRIMARY'
  AND TABLE_SCHEMA = 'mavenmovies';
-- 2List Details of all Actors
select * from actor;

-- 3 List all Customer information from Database.
select * from customer;

-- 4 List Different Countries
select distinct country from country;

-- 5 Display all active customers.
select * from customer where active =1;

-- 6 List of all rental IDs for customer with ID 1.
select customer_id , rental_id from rental where customer_id =1;

-- 7 Display all the films whose rental duration is greater than 5 .
select film_id ,title,rental_duration  from film where rental_duration>5;

-- 8 List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(*) as total_film from film where replacement_cost between 15 and 20;

select count(*) as total_no_of_film from film where replacement_cost >15 and replacement_cost <20;

-- 9 Find the number of films whose rental rate is less than $1.
select count(film_id) as no_of_films from film where rental_rate < 1;
select count(*) as no_of_films from film where rental_rate < 1;

-- 10 Display the count of unique first names of actors.
select count(distinct first_name) as first_name_count from actor;

-- 11 Display the first 10 records from the customer table .
select * from CUSTOMER  limit 10;

-- 12 Display the first 3 records from the customer table whose first name starts with ‘b’.
select first_name  from customer where first_name  like 'b%' limit 3;

-- 13 Display the names of the first 5 movies which are rated as ‘G’.
select title,rating from film where rating='G' limit 5;

-- 14 Find all the customers whose first name starts with a
select first_name from customer where first_name like 'a%';

-- 15 Find all the customers whose first name ends with a
select first_name from customer where first_name like '%a';

-- 16 Display the list of first 4 cities which start and end with ‘a’ .
select city from city where city like 'a%a';

-- 17 Find all customers whose first name have "NI" in any position.-- 19 Find all customers whose first name starts with "a" and are at least 5 characters in length.
select first_name from customer where first_name like 'a%' and length(first_name)>=5;

-- 20 Find all customers whose first name starts with "a" and ends with "o".
select first_name from customer where first_name like "a%o";

-- 21 Get the films with pg and pg-13 rating using IN operator.
select title,rating from film where rating in ("pg","pg-13");

-- 22 Get the films with length between 50 to 100 using between operator.
select title,length from film where length between 50 and 100;

-- 23 Get the top 50 actors using limit operator.
select * from actor order by actor_id desc limit 50;

-- 24 Get the distinct film ids from inventory table.
select distinct film_id from invent


-- 18 Find all customers whose first name have "r" in the second position
select first_name from customer where first_name like "_r%";
