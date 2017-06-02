/* Find the name and grade of all students who are liked by more than one
other student. */

SELECT likee_id, name, grade FROM student_like
  JOIN student ON id = likee_id
  GROUP BY likee_id, name, grade HAVING count(*) > 1;

  likee_id |   name    | grade
  ----------+-----------+-------
       1709 | Cassandra |     9
       1468 | Kris      |    10
  (2 rows)
