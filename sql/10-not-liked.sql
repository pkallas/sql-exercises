/* Find all students who do not appear in the like table
(as a student who likes or is liked) and return their names and grades.
Sort by grade, then by name within each grade. */

SELECT name, grade FROM student
  WHERE id NOT IN
    (SELECT liker_id FROM student_like)
  AND id NOT IN
    (SELECT likee_id FROM student_like)
ORDER BY grade, name;

  name   | grade
---------+-------
 Jordan  |     9
 Tiffany |     9
 Logan   |    12
(3 rows)
