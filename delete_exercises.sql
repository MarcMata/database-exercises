USE codeup_test_db;

# SELECT name as 'Albums released after 1991' FROM albums WHERE release_date > 1990;
DELETE FROM albums WHERE release_date > 1990;

# SELECT name as 'Albums with the genre disco' FROM albums WHERE genre LIKE 'disco';
DELETE FROM albums WHERE genre LIKE 'disco';

# SELECT name as 'Albums by ''Whitney Houston' FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';

#18 ALBUMS LEFT AFTER DELETES