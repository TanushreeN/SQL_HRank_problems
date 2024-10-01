/* Not start or ends with vowel  2 queries, both are correct */
____________________________________


/*Query 1 */

SELECT DISTINCT (CITY)
FROM STATION
WHERE CITY NOT LIKE 'A%'
AND CITY NOT LIKE 'E%'
AND CITY NOT LIKE 'I%'
AND CITY NOT LIKE 'O%'
AND CITY NOT LIKE 'U%'
AND CITY NOT LIKE '%a'
AND CITY NOT LIKE '%e'
AND CITY NOT LIKE '%i'
AND CITY NOT LIKE '%o'
AND CITY NOT LIKE '%u';


/*Query 2*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiou]' AND CITY NOT REGEXP '[aeiou]$';

