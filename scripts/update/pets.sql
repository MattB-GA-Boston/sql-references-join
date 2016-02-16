-- update rows of data about pets
UPDATE pets
SET owner_id = 7
WHERE kind = 'fish'
  AND name LIKE 'S%';

UPDATE pets
SET owner_id = 11
WHERE kind = 'bird';

UPDATE pets
SET owner_id = 21
WHERE kind = 'cat';

UPDATE pets
SET owner_id = 42
WHERE kind = 'dog';
