---------------------------------------------------

--       World Population SQL Practice 2 

---------------------------------------------------

-- How many entries from Africa? 
SELECT COUNT(*)
FROM countries 
WHERE continent = 'Africa';

 -- Total Population of Oceania in 2005 
 SELECT SUM(population) AS '2005 Oceania Population'
 FROM population_years 
 JOIN countries 
	ON population_years.country_id = countries.id
WHERE countries.continent = 'Oceania' AND population_years.year = '2005'; 

-- Average Population of SA countries in 2003 
SELECT ROUND(AVG(population_years.population), 2) AS 'Avg. 2003 Population' 
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE countries.continent = 'South America' AND population_years.year = '2003';

-- Country with smallest 2007 population
SELECT countries.name, MIN(population_years.population) AS 'Pop.'
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE population_years.year = '2007';

-- Average Poland Population
SELECT ROUND(AVG(population_years.population), 2) AS 'Avg. Pop' 
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE countries.name = 'Poland';

-- How many countries with 'The' in their name
SELECT COUNT(*)
FROM countries
WHERE name LIKE '%The%';

SELECT name
FROM countries
WHERE name LIKE '%the%'; 

-- Total population of each continent in 2010 
SELECT countries.continent AS 'Continent', SUM(population_years.population) AS 'Tot. Pop.'
FROM population_years
JOIN countries
	ON population_years.country_id = countries.id
WHERE population_years.year = '2010' 
GROUP BY countries.continent
ORDER BY 2 DESC;

	


