USE codeup_test_db;

SHOW INDEXES FROM albums;

ALTER TABLE albums DROP INDEX unique_album;

ALTER TABLE albums ADD UNIQUE unique_album(artist, name);

SHOW INDEXES FROM albums;
