USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE artist = 'Michael Jackson';
SELECT genre FROM albums WHERE artist = 'Shania Twain';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE sales < 20000000;
SELECT * FROM albums WHERE genre LIKE 'Rock%';
