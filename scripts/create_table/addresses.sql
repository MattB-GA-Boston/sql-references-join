-- create addresses table
CREATE TABLE addresses(
  id SERIAL PRIMARY KEY,
  no INTEGER,
  name VARCHAR, -- CHARACTER VARYING
  city_id INTEGER,
  FOREIGN KEY (city_id) REFERENCES cities(id)
);
