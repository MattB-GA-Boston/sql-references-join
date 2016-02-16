-- update rows of data about people
-- UPDATE people
-- SET weight = weight - 1
-- WHERE given_name LIKE 'Sam%'
-- ;

-- UPDATE people AS p
-- SET place_of_birth_id = c.id
-- FROM cities AS c
-- WHERE c.id = p.id
-- ;

UPDATE people AS p
SET address_id = a.id
FROM addresses AS a
WHERE a.id = p.id
;
