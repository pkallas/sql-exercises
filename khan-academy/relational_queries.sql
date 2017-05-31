-- Solution SQL for the project from the Relational Queries course ("Famous people")

/* In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists. Authors: What books did they write? */

CREATE TABLE authors (id INTEGER PRIMARY KEY AUTOINCREMENT, fullname TEXT);

INSERT INTO authors (fullname) VALUES ("Harry Turtledove");
INSERT INTO authors (fullname) VALUES ("Timothy Zahn");
INSERT INTO authors (fullname) VALUES ("J. K. Rowling");
INSERT INTO authors (fullname) VALUES ("George R. R. Martin");
INSERT INTO authors (fullname) VALUES ("William Shakespeare");
INSERT INTO authors (fullname) VALUES ("Jane Austin");
INSERT INTO authors (fullname) VALUES ("Homer");
INSERT INTO authors (fullname) VALUES ("J. R. R. Tolkien");
INSERT INTO authors (fullname) VALUES ("Ernest Hemingway");
INSERT INTO authors (fullname) VALUES ("Stephen King");
INSERT INTO authors (fullname) VALUES ("Mark Twain");
INSERT INTO authors (fullname) VALUES ("George Orwell");
INSERT INTO authors (fullname) VALUES ("Charles Dickens");
INSERT INTO authors (fullname) VALUES ("Edgar Allen Poe");
INSERT INTO authors (fullname) VALUES ("C. S. Lewis");

CREATE TABLE books (id INTEGER PRIMARY KEY AUTOINCREMENT, person_id INTEGER, title TEXT);

INSERT INTO books (person_id, title) VALUES (1, "Guns of the South");
INSERT INTO books (person_id, title) VALUES (1, "How Few Remain");
INSERT INTO books (person_id, title) VALUES (1, "Settling Accounts: Into Darkness");
INSERT INTO books (person_id, title) VALUES (1, "Days of Infamy");
INSERT INTO books (person_id, title) VALUES (2, "Thrawn");
INSERT INTO books (person_id, title) VALUES (2, "Heir to the Empire");
INSERT INTO books (person_id, title) VALUES (2, "Dark Force Rising");
INSERT INTO books (person_id, title) VALUES (2, "The Last Command");
INSERT INTO books (person_id, title) VALUES (3, "Harry Potter and the Sorcerer's Stone");
INSERT INTO books (person_id, title) VALUES (3, "Harry Potter and the Chamber of Secrets");
INSERT INTO books (person_id, title) VALUES (3, "Harry Potter and the Prisoner of Azkaban");
INSERT INTO books (person_id, title) VALUES (3, "Harry Potter and the Goblet of Fire");
INSERT INTO books (person_id, title) VALUES (4, "Game of Thrones");
INSERT INTO books (person_id, title) VALUES (4, "A Clash of Kings");
INSERT INTO books (person_id, title) VALUES (4, "A Storm of Swords");
INSERT INTO books (person_id, title) VALUES (4, "A Feast For Crows");
INSERT INTO books (person_id, title) VALUES (4, "A Dance With Dragons");
INSERT INTO books (person_id, title) VALUES (5, "King Lear IV");
INSERT INTO books (person_id, title) VALUES (5, "Romeo and Juliet");
INSERT INTO books (person_id, title) VALUES (5, "Hamlet");
INSERT INTO books (person_id, title) VALUES (5, "A Midsummer Night's Dream");
INSERT INTO books (person_id, title) VALUES (6, "Pride and Prejudice");
INSERT INTO books (person_id, title) VALUES (6, "Sense and Sensibility");
INSERT INTO books (person_id, title) VALUES (7, "The Iliad");
INSERT INTO books (person_id, title) VALUES (7, "The Oddyssey");
INSERT INTO books (person_id, title) VALUES (8, "The Lord of the Rings: The Fellowship of the Ring");
INSERT INTO books (person_id, title) VALUES (8, "The Lord of the Rings: The Two Towers");
INSERT INTO books (person_id, title) VALUES (8, "The Lord of the Rings: The Return of the King");
INSERT INTO books (person_id, title) VALUES (8, "The Hobbit");
INSERT INTO books (person_id, title) VALUES (9, "The Old Man and the Sea");
INSERT INTO books (person_id, title) VALUES (9, "For Whom the Bell Tolls");
INSERT INTO books (person_id, title) VALUES (9, "A Farewell to Arms");
INSERT INTO books (person_id, title) VALUES (10, "The Shining");
INSERT INTO books (person_id, title) VALUES (10, "It");
INSERT INTO books (person_id, title) VALUES (10, "Carrie");
INSERT INTO books (person_id, title) VALUES (11, "The Adventures of Huckleberry Finn");
INSERT INTO books (person_id, title) VALUES (11, "The Adventures of Tom Sawyer");
INSERT INTO books (person_id, title) VALUES (12, "1984");
INSERT INTO books (person_id, title) VALUES (12, "Animal Farm");
INSERT INTO books (person_id, title) VALUES (13, "Oliver Twist");
INSERT INTO books (person_id, title) VALUES (13, "David Copperfield");
INSERT INTO books (person_id, title) VALUES (14, "The Raven");
INSERT INTO books (person_id, title) VALUES (14, "The Masque of the Read Death");
INSERT INTO books (person_id, title) VALUES (14, "The Telltale Heart");
INSERT INTO books (person_id, title) VALUES (15, "The Chronicles of Narnia: The Lion, The Witch, and the Wardrobe");
INSERT INTO books (person_id, title) VALUES (15, "The Great Divorce");

CREATE TABLE information (id INTEGER PRIMARY KEY AUTOINCREMENT, person_id INTEGER, age INTEGER, genre TEXT);

INSERT INTO information (person_id, age, genre) VALUES (1, 67, "Alternate History");
INSERT INTO information (person_id, age, genre) VALUES (2, 65, "Science Fiction");
INSERT INTO information (person_id, age, genre) VALUES (3, 51, "Fantasy");
INSERT INTO information (person_id, age, genre) VALUES (4, 68, "Fantasy");
INSERT INTO information (person_id, age, genre) VALUES (5, 52, "Romance, Comedy, Tragedy, Plays");
INSERT INTO information (person_id, age, genre) VALUES (6, 42, "Romance");
INSERT INTO information (person_id, genre) VALUES (7, "Epic Poem");
INSERT INTO information (person_id, age, genre) VALUES (8, 81, "Fantasy");
INSERT INTO information (person_id, age, genre) VALUES (9, 61, "Fiction");
INSERT INTO information (person_id, age, genre) VALUES (10, 69, "Horror");
INSERT INTO information (person_id, age, genre) VALUES (11, 75, "Fiction");
INSERT INTO information (person_id, age, genre) VALUES (12, 47, "Fiction, Science Fiction");
INSERT INTO information (person_id, age, genre) VALUES (13, 58, "Fiction");
INSERT INTO information (person_id, age, genre) VALUES (14, 40, "Horror, Poems, Short Stories");
INSERT INTO information (person_id, age, genre) VALUES (15, 64, "Fiction, Religion");

SELECT authors.fullname, books.title FROM authors
    JOIN books
    ON books.person_id = authors.id;

SELECT authors.fullname, information.age, information.genre FROM authors
    JOIN information
    ON information.person_id = authors.id;
