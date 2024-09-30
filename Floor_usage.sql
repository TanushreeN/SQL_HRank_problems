/*( QUE : Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
  Note: CITY.CountryCode and COUNTRY.Code are matching key columns.)
----------------------------------------------------- */

/* SOLUTION: */

SELECT COUNTRY.Continent,  Floor(AVG(CITY.Population)) AS AveragePopulation
FROM CITY
INNER JOIN COUNTRY ON  CITY.CountryCode = COUNTRY.Code
group by COUNTRY.Continent;

/*-----------------------------------------------

OUTPUT:

Asia 693038
Europe 175138
Oceania 109189
South America 147435
Africa 274439         */
