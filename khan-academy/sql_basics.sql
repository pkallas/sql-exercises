-- Solution SQL for the project from the SQL Basics course ("Design a store database")

/* Video Game Store
ITEMS: Steins;Gate(1), Witcher(2), KOTOR(3), Stellaris(4), Star Wars Battlefront(5), Dragon Age(6), Mass Effect(7), Pokemon(8),
Hearts of Iron(9), Gears of War(10), Mario Kart(11), Final Fantasy(12), Bravely Default(13), Project Diva(14), Battlefield(15)
COLUMNS: ID (1), Name(2), Platform (3), Amount(4), Price(5) */

CREATE TABLE videogamestore (id INTEGER PRIMARY KEY, name TEXT, platform TEXT, amount INTEGER, price INTEGER);

INSERT INTO videogamestore VALUES (1, "Steins;Gate", "PC", 10, 20);
INSERT INTO videogamestore VALUES (2, "KOTOR", "PC", 6, 10);
INSERT INTO videogamestore VALUES (3, "Witcher 3", "PC", 7, 40);
INSERT INTO videogamestore VALUES (4, "Stellaris", "PC", 58, 40);
INSERT INTO videogamestore VALUES (5, "Star Wars Battlefront", "PS2", 32, 5);
INSERT INTO videogamestore VALUES (6, "Dragon Age: Origins", "XBOX 360", 18, 20);
INSERT INTO videogamestore VALUES (7, "Mass Effect 3", "XBOX 360", 47, 15);
INSERT INTO videogamestore VALUES (8, "Pokemon Moon", "3DS", 25, 30);
INSERT INTO videogamestore VALUES (9, "Hearts of Iron", "PC", 6, 30);
INSERT INTO videogamestore VALUES (10, "Gears of War 3", "XBOX 360", 16, 10);
INSERT INTO videogamestore VALUES (11, "Mario Kart", "Switch", 68, 60);
INSERT INTO videogamestore VALUES (12, "Final Fantasy", "PS4", 36, 40);
INSERT INTO videogamestore VALUES (13, "Bravely Default", "3DS", 14, 20);
INSERT INTO videogamestore VALUES (14, "Project Diva", "PS4", 3, 30);
INSERT INTO videogamestore VALUES (15, "Battlefield One", "PC", 46, 60);

SELECT * FROM videogamestore ORDER BY price;

SELECT SUM(amount) FROM videogamestore;

SELECT name FROM videogamestore
  WHERE name LIKE ('%S');

SELECT * FROM videogamestore
  WHERE price = 60 ORDER BY name;
