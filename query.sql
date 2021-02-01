USE guided_inquiry;

-- VERYEASY
INSERT INTO car (make, model, year)
VALUES ("Chevy", "Impala", 2019),
("Chevy", "Corvette", 2020),
("Toyota", "Camry", 2020),
("Honda", "Fit", 2018),
("GMC", "Acadia", 2020);

-- TRUNCATE TABLE car;
SELECT * from car;

-- EASY
INSERT INTO books (title, publish, first_name, last_name)
VALUES ("Narnia", "2000-01-17", "C.S", "Lewis"),
("The Hobbit", "1937-9-21", "J.R.R", "Tolkien"),
("The Hobbit", "1937-9-21", "J.R.R", "Tolkien"),
("The Hobbit", "1937-9-21", "J.R.R", "Tolkien"),
("The Hobbit", "1937-9-21", "J.R.R", "Tolkien");

DELETE FROM books 
WHERE title = "The Hobbit";

-- TRUNCATE TABLE books;
SELECT * FROM books;

-- MEDIUM
INSERT INTO movies (title, release_date, rating)
VALUES 
("Narnia", "2000-01-17", 8),
("The Hobbit", "1937-9-21", 7),
("The Fellowship of the Ring", "2001-12-19", 8),
("The Twin Towers", "2002-12-18", 8),
("The Return of the King", "2003-12-17", 10),
("Top Gun", "1986-5-16", 9),
("Goodfellas", "1990-9-19", 9.5),
("The Last Samurai", "2003-12-1", 9.5),
("Spiderman", "2002-5-3", 7.5),
("Scorpian King", "2002-4-17", 9);

-- TRUNCATE TABLE movies;
SELECT * FROM movies
WHERE title LIKE '%s%'
ORDER BY release_date;

-- HARD
ALTER TABLE movies
ADD COLUMN director_firstname VARCHAR(255),
ADD COLUMN director_lastname VARCHAR(255);

SELECT CONCAT(director_firstname,' ',director_lastname)
AS director_fullname
FROM movies;

INSERT INTO movies (director_firstname, director_lastname)
VALUES 
("a", 'a'),
('a', 'r'),
('s', 'v'),
('x', 'c');

SELECT *
FROM movies
ORDER BY director_lastname asc;

DELETE FROM movies
WHERE director_lastname
BETWEEN 'r' AND  'z';

SELECT * FROM movies 
LIMIT 3;

-- VERY HARD
INSERT INTO car (make, model, year)
VALUES ("Chevy", "Impala", 2019),
("Chevy", "Corvette", 2020),
("Toyota", "Camry", 2020);

ALTER TABLE  car
ADD COLUMN price INT,
ADD COLUMN color VARCHAR(50);

UPDATE car SET price = 19000;
UPDATE car SET color = "blue";

SELECT CONCAT(make,' ', model)
AS make_model
FROM car;

SELECT 
    make, 
    COUNT(make)
FROM
    car
GROUP BY make
HAVING COUNT(make) > 1;

SELECT * FROM car;