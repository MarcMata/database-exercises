USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'pink floyd';

SELECT release_date as 'The year the album was released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT * FROM albums WHERE sales < 20;

SELECT * FROM albums WHERE genre = 'Rock';
# how to view all with rock in the name
SELECT * FROM albums WHERE genre LIKE '%rock%';

