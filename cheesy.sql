-- cheeses_db update, delete, and find --

--Find all the cheeses
SELECT * FROM cheeses;

--Find all the French cheeses
SELECT * FROM cheeses WHERE country LIKE '%France%';

--Find all the English cheeses
SELECT * FROM cheeses WHERE country LIKE '%English%';

--Find all cheeses with a stink level of 2
SELECT * FROM cheeses WHERE stink_level = 2;

--Find all cheeses with a stink level of 10
SELECT * FROM cheeses WHERE stink_level = 10;

--Find all French cheeses with a stink level of 5
SELECT * FROM cheeses WHERE country = 'France' AND stink_level = 5;

--Find all Irish cheeses with a stink level of 6
SELECT * FROM cheeses WHERE country = 'Irish' AND stink_level = 6;

--Find all cheeses with a stink level of at least 4, but no greater than 8
SELECT * FROM cheeses WHERE stink_level BETWEEN 4 AND 8;

--Find all American and English cheeses.
SELECT * FROM cheeses WHERE country = 'American' OR country = 'English';

--Find all cheeses that are not from France.
SELECT * FROM cheeses WHERE country NOT LIKE '%France%';


--Change the stink level of Roquefort to 3
UPDATE cheeses SET stink_level = 3 WHERE name = 'Roquefort';

--Change the color of Teleme to "mauve"
UPDATE cheeses SET color = 'mauve' WHERE name = 'Teleme';

--Delete the Hooligan cheese
DELETE FROM cheeses WHERE name = 'Hooligan';

--Change the stink level of Stichelton to be 7
UPDATE cheeses SET stink_level = 7 WHERE name = 'Stichelton';

--Add the cheese "Monterey Jack", an American cheese with a stink level of 0
INSERT INTO cheeses VALUES (DEFAULT 'Monterey Jack', 'American', 0);

--Add a column named animal_milk with a datatype of VARCHAR(50) to the cheeses table
ALTER TABLE cheeses ADD animal_milk VARCHAR(50) NOT NULL;

--Add a column named pasteurized with a boolean datatype to the cheeses table
ALTER TABLE cheeses ADD pasteurized BOOLEAN NOT NULL;

--Add the new cheese data (see table below)
UPDATE cheeses SET animal_milk = 'cow', pasteurized = true WHERE name = 'Epoisses';
UPDATE cheeses SET animal_milk = 'goat', pasteurized = false WHERE name = 'Charolais';
UPDATE cheeses SET animal_milk = 'cow', pasteurized = false WHERE name = 'Maroilles';
UPDATE cheeses SET animal_milk = 'cow', pasteurized = false WHERE name = 'Durrus';
UPDATE cheeses SET animal_milk = 'sheep', pasteurized = false WHERE name = 'Roquefort';
UPDATE cheeses SET animal_milk = 'cow', pasteurized = true WHERE name = 'Teleme';
UPDATE cheeses SET animal_milk = 'cow', pasteurized = true WHERE name = 'Stichelton';
UPDATE cheeses SET animal_milk = 'cow', pasteurized = true WHERE name = 'Monterey Jack';

--Change "Monterey Jack" to "Pepper Jack"
UPDATE cheeses SET name = 'Pepper Jack' WHERE name = 'Monterey Jack';

