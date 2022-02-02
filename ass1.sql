-- COMP3311 21T3 Assignment 1
--
-- Queries and Functions
-- Written by: YOUR NAME
--

-- This is just an example
-- Load it again when we announce that it is complete

-- Q1: something

create or replace view q1(brewery)
as
	SELECT name
	FROM breweries
	WHERE founded = (SELECT min(founded) FROM breweries)
;

-- Q2: something else

create or replace view q2(beer)
as	
	SELECT beers.name
	FROM brewed_by b1
	JOIN brewed_by b2 ON b1.beer = b2.beer 
	AND b1.brewery <> b2.brewery
	JOIN beers ON b1.beer = beers.id
	GROUP BY beers.name
	HAVING count(*) > 1	
;

etc. etc. etc.

-- Q8: last function

create or replace function
   Q8(Arguments) returns ReturnType
as $$
...
$$ language plpgsql;
:
