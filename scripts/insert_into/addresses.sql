-- insert addresses
INSERT INTO addresses(no,name,city_id)
SELECT 100, 'Highland Avenue', id
FROM cities
WHERE name = 'Somerville'
;
