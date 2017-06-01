sql_exercises=# CREATE TABLE student(id INT PRIMARY KEY, name TEXT, grade INT);
CREATE TABLE
sql_exercises=# \d student
    Table "public.student"
 Column |  Type   | Modifiers
--------+---------+-----------
 id     | integer | not null
 name   | text    |
 grade  | integer |
Indexes:
    "student_pkey" PRIMARY KEY, btree (id)
