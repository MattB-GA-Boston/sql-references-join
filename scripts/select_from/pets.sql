-- read rows of data about pets
SELECT p.surname, p.given_name, count(*)
  FROM people p
  INNER JOIN pets pt ON pt.owner_id = p.id
    WHERE pt.kind = 'dog'
      GROUP BY p.surname, p.given_name
        HAVING count(*) > 3
UNION
SELECT p.surname, p.given_name, count(*)
  FROM people p
  INNER JOIN pets pt ON pt.owner_id = p.id
    WHERE pt.kind = 'bird'
      GROUP BY p.surname, p.given_name
        HAVING count(*) > 4
UNION
SELECT p.surname, p.given_name, count(*)
  FROM people p
  INNER JOIN pets pt ON pt.owner_id = p.id
    WHERE pt.kind = 'cat'
      GROUP BY p.surname, p.given_name
        HAVING count(*) > 5
UNION
SELECT p.surname, p.given_name, count(*)
  FROM people p
  INNER JOIN pets pt ON pt.owner_id = p.id
    WHERE pt.kind = 'fish'
      GROUP BY p.surname, p.given_name
        HAVING count(*) > 20
;
