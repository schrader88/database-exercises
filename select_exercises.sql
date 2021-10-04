USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

# Both lines below will accomplish the same thing. Standard practice?

SELECT * FROM albums WHERE release_date > 1990 && albums.release_date < 2000;
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT * FROM albums WHERE sales < 20;

SELECT * FROM albums WHERE genre = 'Rock';