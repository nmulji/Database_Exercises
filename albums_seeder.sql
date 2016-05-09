USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', '1982', '48', 'Pop, Rock, R&B'),
       ('Eagles', 'Their Greatest Hits', '1976', '32', 'Rock, Soft Rock, Folk Rock'),
       ('AC/DC', 'Back in Black', '1980', '25', 'Hard Rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', '1973', '22', 'Progressive Rock'),
       ('Whitney Houston', 'The Bodyguard', '1992', '27', 'Soundtrack/R&B, Soul, Pop'),
       ('Meat Loaf', 'Bat Out of Hell', '1977', '20', 'Hard Rock, Progressive Rock'),
       ('Bee Gees', 'Saturday Night Fever', '1977', '19', 'Disco'),
       ('Fleetwood Mac', 'Rumours', '1977', '27', 'Soft Rock'),
       ('Led Zeppelin', 'Led Zeppelin IV', '1971', '29', 'Hard Rock, Heavy Metal'),
       ('Shania Twain', 'Come On Over', '1997', '29', 'Country, Pop');