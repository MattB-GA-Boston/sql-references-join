-- read rows of data about people
-- SELECT COUNT(*) as num, gender
-- FROM people
-- GROUP BY gender
-- HAVING num > 1202;

-- SELECT COUNT(*)
-- FROM people
-- WHERE born_on BETWEEN '1990-01--1' AND '1999-12-31'
-- GROUP BY SUBSTR(dob, 1, 4)
-- ORDER BY SUBSTR(dob, 1, 4);

-- SELECT id, surname, dob
-- FROM people
-- WHERE given_name LIKE 'Sam%'
-- ;

-- SELECT COUNT(*), c.name
-- FROM people p
-- INNER JOIN cities c
--   ON p.place_of_birth_id = c.id
-- GROUP BY c.name
-- HAVING COUNT(*) > 1
-- ;

-- SELECT p.surname, p.given_name, c.name, c.country
-- FROM people p
-- INNER JOIN cities c
--   ON p.place_of_birth_id = c.id
-- WHERE c.name IN ('Birmingham', 'Minneapolis', 'Stolberg')
-- ;

SELECT p.surname, a.name AS street, c.name AS city, c.country
FROM people AS p
INNER JOIN addresses AS a
  ON p.address_id = a.id
INNER JOIN cities AS c
  ON a.city_id = c.id
WHERE c.country != 'DE'
ORDER BY c.country, c.name, a.name, p.surname
LIMIT 10
OFFSET 20
;
