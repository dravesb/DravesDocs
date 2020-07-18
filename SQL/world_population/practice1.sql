---------------------------------------------------

--       World Population SQL Practice 1 

---------------------------------------------------

SELECT DISTINCT year 
FROM population_years
LIMIT 10;


SELECT population 
FROM population_years
WHERE country = 'Gabon' 
ORDER BY population DESC
LIMIT 1;

SELECT country, population 
FROM population_years
WHERE year = '2005'
ORDER BY population 
LIMIT 10;   

SELECT DISTINCT country 
FROM population_years
WHERE year = '2010' AND population > 100;

SELECT DISTINCT country
FROM population_years
WHERE country LIKE '% Islands %'; 

SELECT * 
FROM population_years
WHERE country = 'Indonesia' AND year = '2000' 
OR country = 'Indonesia' AND year = '2010'; 







