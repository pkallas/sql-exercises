/* For every situation where student A likes student B, but we have no information
about whom B likes (that is, B's id does not appear in the
liker_id column of the like table), return A and B's names and grades. */



SELECT a.name liker_name, a.grade liker_grade, b.name recjector_name, b.grade rejector_grade
	FROM (
    SELECT liker_id, likee_id FROM student_like
      WHERE likee_id NOT IN (SELECT liker_id FROM student_like)
		) uninterested
	JOIN student a ON a.id = uninterested.liker_id
	JOIN student b ON b.id = uninterested.likee_id;

  liker_name | liker_grade | rejector_name | rejector_grade
 ------------+-------------+------------+-------------
  Alexis     |          11 | Kris       |          10
  Brittany   |          10 | Kris       |          10
  Austin     |          11 | Jordan     |          12
  John       |          12 | Haley      |          10
 (4 rows)
