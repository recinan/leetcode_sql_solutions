/* 620. Not Boring Movies*/
SELECT C.id ,C.movie, C.description, C.rating
FROM Cinema C
WHERE C.id % 2 = 1 AND C.description != 'boring'
ORDER BY C.rating DESC