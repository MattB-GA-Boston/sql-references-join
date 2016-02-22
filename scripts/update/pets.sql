-- update rows of data about pets
UPDATE pets as p
  SET owner_id = o.id
    FROM people AS o
      WHERE o.id = p.id
;

UPDATE pets AS p
  SET owner_id = 1
    WHERE p.id >= 1 AND p.id < 10
;
UPDATE pets as p
  SET owner_id = 3
    WHERE p.id >= 10 AND p.id < 20
;
