select *
from imdb

--  Top 10 highest-rated movies

select top 10 title, year, rating, votes
from imdb
order by rating desc;

-- Top 10 movies by IMDb votes

select top 10 title, rating, votes
from imdb
order by votes desc;

-- Average rating by genre

select genre, avg(rating) as average_rating
from imdb
group by genre
order by average_rating desc;

-- Number of movies by year

select year, count(*) as movie_count
from imdb
group by year
order by year;

-- Highest grossing movies

select top 10 title, year, gross
from imdb
where gross is not null 
order by gross desc;

-- Directors with the most movies

select director, count(*) as movie_count
from imdb
group by director
order by movie_count desc;

-- Movies with rating of 9.0 or higher

select title, year, rating, genre
from imdb
where rating >= 9.0
order by rating desc;

-- Movies with rating between 8.5 and 9.0

select title, year, rating, genre
from imdb
where rating > 8.4
and rating < 9.0
order by rating desc;

-- Longest movies

select top 10 title, runtime, rating, year
from imdb
order by runtime desc;

-- How many movies does the leading actor appear in?

select star1, count(*) as movie_count
from imdb
group by star1
order by movie_count desc;

-- Average rating by year

select year, count(*) as movie_count, avg(rating) as average_rating
from imdb
group by year
order by year;

-- Highest-rated movie

select top 1 title, year, rating
from imdb 
order by rating desc;

-- Which movies has SRK as an actor?

select title, year, rating
from imdb
where star1 = 'Shah Rukh Khan'
	or star2 = 'Shah Rukh Khan'
	or star3 = 'Shah Rukh Khan'
	or star4 = 'Shah Rukh Khan';

-- Actors that have worked with Chris Evans

select title, star1, star2, star3, star4
from imdb
where star1 = 'Chris Evans'

-- Actors that have worked with SRK

select title, star1, star2, star3, star4
from imdb
where star1 = 'Shah Rukh Khan'

-- Actors that have worked with Tom Hanks

select title, star1, star2, star3, star4
from imdb
where star1 = 'Tom Hanks'

-- Directors and genres

select director, genre, count(*) as movie_count
from imdb
group by director, genre
order by movie_count desc;
