/* Question 1 */

/*
with provincesCTE (country, count)
as (select country, count(*)
from province
group by country
having count(*)>10),

populationCTE (country)
as (select country
from city, country
where country.capital = city.name
and city.population>5000000),

countriesCTE (country)
as (select provincesCTE.country
from provincesCTE
join populationCTE
on provincesCTE.country = populationCTE.country)

select continent, count(*)
from encompasses, countriesCTE
where countriesCTE.country = encompasses.country
group by continent;
*/

/* Question 2 */

/*
WITH cities_over_3M AS (
  SELECT c.name city, c.country, c.province, c.population
  FROM city c
  WHERE c.population > 3000000
),
landlocked_cities_over_3M AS (
  SELECT DISTINCT c.city, c.country, c.province, c.population
  FROM located l
  JOIN cities_over_3M c
  ON c.city = l.city
  WHERE l.river IS NULL
  AND l.lake IS NULL
  AND l.sea IS NULL
)

SELECT (
  1.0 * (SELECT COUNT(*) FROM landlocked_cities_over_3M) / (SELECT COUNT(*) FROM cities_over_3M)
) ratio;
*/

/* Question 3 */

/*
with averageCTE (avg) as (
select round(avg(total)) 
from (
select count(*) as total 
from geo_mountain 
group by country) as totalNumCountries),

numMountainsCTE (count) as (
select count(*) as count 
from geo_mountain 
group by country 
order by count asc),

mountainsAboveAvgCTE (count) as (
select * 
from numMountainsCTE 
where count >= (select * from averageCTE)),

intermediateCTE (numcountries, nummountains) as (
select count(*) as numcountries, count
from mountainsAboveAvgCTE
group by count),

maxCountriesCTE (max) as (
select MAX(numcountries) 
from intermediateCTE)

select * 
from intermediateCTE 
group by numcountries, nummountains 
having MAX(numcountries)=(select * from maxCountriesCTE);
*/

/* Question 4 */

/*
WITH borders_count AS (
SELECT c.name country, COUNT(*) borders
  FROM borders b
  JOIN country c
  ON c.code IN (b.country1, b.country2)
  GROUP BY c.name
)

SELECT *
FROM borders_count bc
WHERE bc.borders = (SELECT MIN(bc.borders) FROM borders_count bc);
*/

/* Question 5 */

/*
with mountainInfo (country, mountain_name, coordinates, elevation) as (
select distinct country, name, coordinates, elevation
from mountain
join geo_mountain on name=mountain),

includeContinent (continent, country, mountain_name, coordinates, elevation) as (
select continent, mountainInfo.country, mountain_name, coordinates, elevation
from mountainInfo
join encompasses on mountainInfo.country=encompasses.country
where mountainInfo.country = encompasses.country),

distancefromcenter (continent, mountain_name, distance) as (
select continent, mountain_name, ((coordinates).latitude * (coordinates).latitude + (coordinates).longitude * (coordinates).longitude) as distance
from includeContinent),

distancebycontinent (continent, distance) as (
select continent, min(distance)
from distancefromcenter
group by continent),

finalmountains (continent, mountain_name) as (
select distancefromcenter.continent, mountain_name
from distancefromcenter
join distancebycontinent on distancefromcenter.continent=distancebycontinent.continent and
distancefromcenter.distance = distancebycontinent.distance)

select finalmountains.continent, country, finalmountains.mountain_name, elevation
from finalmountains
join includeContinent on finalmountains.continent=includeContinent.continent and
finalmountains.mountain_name = includeContinent.mountain_name;
*/

/* Question 6 */

/*
WITH slices AS (
  SELECT
    CASE
      WHEN c.latitude > 0 AND c.longitude > 0 THEN 'slice_1'
      WHEN c.latitude > 0 AND c.longitude < 0 THEN 'slice_2'
      WHEN c.latitude < 0 AND c.longitude > 0 THEN 'slice_3'
      ELSE 'slice_4'
    END slice, SUM(c.population) pop
  FROM city c
  GROUP BY slice
)

SELECT (
  SELECT s.slice
  FROM slices s
  WHERE s.pop = (
  SELECT MIN(s.pop)
  FROM slices s
  )
) dividend, (
  SELECT s.slice
  FROM slices s
  WHERE s.pop = (
    SELECT MAX(s.pop)
    FROM slices s
  )
) divisor, 1.0 * MIN(s.pop) / MAX(s.pop) ratio
FROM slices s;
*/

/* Question 7 */

/*
WITH countries_and_gdp_capita AS (
  SELECT en.continent, c.name country, e.gdp / c.population gdp_per_capita, percent_rank() OVER (PARTITION BY en.continent ORDER BY e.gdp DESC) rank
  FROM economy e
  JOIN encompasses en
  ON e.country = en.country
  JOIN country c
  ON e.country = c.code
  WHERE e.gdp IS NOT NULL
),
richest_countries_per_continent AS (
  SELECT cgc.continent, cgc.country, cgc.gdp_per_capita
  FROM countries_and_gdp_capita cgc
  WHERE cgc.rank <= 0.2
),
poorest_richest_countries AS (
  SELECT DISTINCT t.continent, rc.country
  FROM (
    SELECT rc.continent, MIN(rc.gdp_per_capita) gdp_per_capita
    FROM richest_countries_per_continent rc
    GROUP BY rc.continent
  ) t
  JOIN richest_countries_per_continent rc
  ON t.gdp_per_capita = rc.gdp_per_capita
)

SELECT *
FROM poorest_richest_countries;
*/

/* Question 8 */

/*
WITH RECURSIVE landborders (n, country) AS (
  SELECT (1) AS n,
    CASE WHEN country1 = 'S' THEN country2
    ELSE country1
    END AS country
  FROM borders
  WHERE country1 = 'S'
  OR country2 = 'S'

  UNION

  SELECT n + 1 as n,
    CASE WHEN b.country1 = l.country THEN b.country2
    ELSE b.country1
    END AS country
  FROM borders b
  JOIN landborders l
    ON (b.country1 = l.country OR b.country2 = l.country)
    AND (b.country1 <> 'S' AND b.country2 <> 'S')
  WHERE n<5
)

SELECT country, MIN(n) as crossings
FROM landborders
GROUP BY country
ORDER BY crossings;
*/

/* Question 9 */

/*
WITH 
RECURSIVE branches AS (
  SELECT r.name root_river, r.name river, r.name::text river_branch, r.length, 1 numrivers
  FROM river r
  WHERE r.river IS NULL 
  UNION
  SELECT b.root_river, r.name river, (b.river_branch || '-' || r.name) river_branch, b.length + r.length,
  b.numrivers + 1
  FROM river r
  JOIN branches b
  ON b.river = r.river
),
top_numrivers AS (
  SELECT b.root_river, MAX(b.length) totlength
  FROM branches b
  WHERE b.root_river IN ('Nile', 'Amazonas', 'Yangtze', 'Rhein', 'Donau', 'Mississippi')
  GROUP BY b.root_river
)

SELECT rank() OVER (ORDER BY b.numrivers ASC) rank, b.river_branch path, b.numrivers, tn.totlength
FROM top_numrivers tn
JOIN branches b
ON tn.totlength = b.length AND tn.root_river = b.root_river;
*/
