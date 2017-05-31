-- Solution SQL for the project from the Modifying databases with SQL course ("App impersonator")

/* Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.

List of High Scores for arcade game*/

CREATE TABLE galaga_high_scores (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, highscore INTEGER);

INSERT INTO galaga_high_scores (username, highscore) VALUES ("PKK", 10000);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("NL", 25000);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("MLK", 50000);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("GEK", 1000000);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("NEK", 250000);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("ALD", 50000);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("JMR", 75000);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("CLK", 2000);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("YMN", 57988);
INSERT INTO galaga_high_scores (username, highscore) VALUES ("POL", 5748295);

UPDATE galaga_high_scores SET highscore = 847561 WHERE id = 1;
UPDATE galaga_high_scores SET username = "JAM" WHERE id = 2;
UPDATE galaga_high_scores SET highscore = 2000000 WHERE id = 4;

DELETE FROM galaga_high_scores WHERE id = 8;
