-- add or remove columns about people
ALTER TABLE pets
  ADD COLUMN owner_id INTEGER REFERENCES people(id)
;
