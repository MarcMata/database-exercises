USE codeup_test_db;

SELECT name as 'The name of all albums by Pink Floyd' FROM albums WHERE artist = 'pink floyd';

SELECT release_date as 'The year the album was released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre as 'The genre for Nevermind' FROM albums WHERE name = 'Nevermind';

SELECT name as 'Which albums were released in the 1990s' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT name as 'Which albums had less than 20 million certified sales' FROM albums WHERE sales < 20;

SELECT name as 'All the albums with a genre of "Rock"' FROM albums WHERE genre = 'Rock';
# how to view all with rock in the name
SELECT name as 'All the albums with a genre of "Rock" with a twist' FROM albums WHERE genre LIKE '%rock%';

