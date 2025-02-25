USE sakila;


SELECT * FROM film;


SELECT film_id, release_year #recuriment only one column
FROM film;

SELECT film_id AS id
FROM film;

#where - filter the data 

SELECT * FROM  film
WHERE rental_rate > 4;    #filtering the data=  where

#LIMIT - restrict no. of rows - .head

SELECT *FROM film LIMIT 5;


#ORDER BY - DESCENDING, ASENDING 

SELECT * FROM film 
ORDER BY rental_rate;

SELECT * FROM film 
ORDER BY rental_rate DESC;

SELECT * FROM film 
ORDER BY rental_duration 
LIMIT 5;

#DISTINCT - .unique()

SELECT DISTINCT rating FROM film;

#GROUPBY 

SELECT rating, COUNT(*) AS total_movie
FROM film
GROUP BY rating;

#total movie only
SELECT  COUNT(*) AS total_movie
FROM film;

#HAVING - always use with group by 

SELECT rating, COUNT(*) AS total_movie
FROM film
GROUP BY rating 
HAVING count(*) > 200;

SELECT rating, COUNT(*) AS total_movie
FROM film
GROUP BY rating 
HAVING total_movie > 200;

SELECT rating, COUNT(*) AS total_movie
FROM film
GROUP BY rating 
HAVING total_movie > 200
ORDER BY total_movie DESC
LIMIT 1;







