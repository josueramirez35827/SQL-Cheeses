-- create database commands, and insert into commands --

create database cheeses_db;
use cheeses_db;

create table cheeses (
cheese_id SERIAL primary key not null,
name TEXT NOT NULL,
country TEXT,
color VARCHAR(50) NOT NULL,
stink_level INT NOT NULL,
);

INSERT INTO cheeses VALUES (DEFAULT, 'Roquefort', 'France', 'yellow', 5);
INSERT INTO cheeses VALUES (DEFAULT, 'Epoisses', 'France', 'orange', 9);
INSERT INTO cheeses VALUES (DEFAULT, 'Charolais', 'France', 'white', 5);
INSERT INTO cheeses VALUES (DEFAULT, 'Maroilles', 'France', 'white', 10);
INSERT INTO cheeses VALUES (DEFAULT, 'Durrus', 'Irish', 'yellow', 2);
INSERT INTO cheeses VALUES (DEFAULT, 'Hooligan', 'American', 'yellow', 3);
INSERT INTO cheeses VALUES (DEFAULT, 'Teleme', 'American', 'white', 2);
INSERT INTO cheeses VALUES (DEFAULT, 'Stichelton', 'English', 'white', 4);
SELECT * FROM cheeses;
