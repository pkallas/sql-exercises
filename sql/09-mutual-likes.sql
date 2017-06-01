/* For every pair of students who both like each other, return the name
and grade of both students. Include each pair only once,
with the two names in alphabetical order. */

SELECT a.name liker_name, a.grade liker_grade, b.name likee_name, b.grade likee_grade
	FROM (
		SELECT a.liker_id, a.likee_id
			FROM student_like a
			JOIN student_like b
			ON a.liker_id = b.likee_id AND b.liker_id = a.likee_id
		) mutual
	JOIN student a ON a.id = mutual.liker_id
	JOIN student b ON b.id = mutual.likee_id
	WHERE a.name < b.name
	ORDER BY a.name;

  liker_name | liker_grade | likee_name | likee_grade
  ------------+-------------+------------+-------------
   Cassandra  |           9 | Gabriel    |           9
   Jessica    |          11 | Kyle       |          12
  (2 rows)
