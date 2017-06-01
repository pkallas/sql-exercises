CREATE TABLE student(id INT PRIMARY KEY, name TEXT, grade INT);

    Table "public.student"
 Column |  Type   | Modifiers
--------+---------+-----------
 id     | integer | not null
 name   | text    |
 grade  | integer |
Indexes:
    "student_pkey" PRIMARY KEY, btree (id)
