/* For each student A who likes a student B where the two are not friends, find
if they have a friend C in common (who can introduce them!).
For all such trios, return the name and grade of A, B, and C. */

SELECT s1.id1, s1.id2
  FROM
  (
    SELECT a.liker_id, a.likee_id
      FROM student_like a
      JOIN student_like b
      ON a.liker_id = b.likee_id OR b.liker_id = a.likee_id
  ) pairs
  JOIN friend s1 ON s1.id1 = pairs.liker_id
  JOIN friend s2 ON s2.id2 = pairs.likee_id
  WHERE pairs.liker_id NOT IN (SELECT s1.id1 FROM friend s1)
  AND pairs.likee_id NOT IN (SELECT s2.id2 FROM friend s2);
