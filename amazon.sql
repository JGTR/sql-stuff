#1

CREATE TABLE dvds (
DVD_id INT,
name varchar(255),
price varchar(255)
);


#2

INSERT INTO dvds
VALUES 
(1, "Hackers", 19),
(2, "Sneakers", 15),
(3, "Fight Club", 10),
(4, "Amadeus", 15),
(5, "Godfather", 35),
(6, "Star Wars", 30),
(7, "Star Trek", 20),
(8, "Stargate", 12),
(9, "Hellraiser", 7),
(10, "Lord of the Rings", 20);

#3 Most expensive
SELECT TITLE from dvds WHERE  (MAX(price) FROM dvds);

SELECT *
  FROM dvds
  ORDER BY price DESC LIMIT 1;

#4 Sum of two DVDs
SELECT SUM(price) FROM dvds WHERE name="Fight Club" OR name="Hackers";



#5 Return titles of DVDs
SELECT name FROM dvds;


#6 Create product review table

CREATE TABLE reviews (
review_id INT,
content TEXT,
DVD_id int
);

#7 Create 5 product reviews

INSERT INTO reviews
VALUES 
(1, "Good", 4),
(2, "Great", 4),
(3, "Sublime", 3),
(4, "Fun", 3),
(5, "Awesome", 3);

#8 Select a DVD then select all its product reviews
SELECT * FROM dvds WHERE dvd_id=4;
SELECT * FROM reviews WHERE dvd_id=4;


#9 Select a product review, then select all the product reviews that correspond to the first product review DVD
SELECT dvd_id FROM reviews WHERE review_id=1;
SELECT * FROM reviews WHERE dvd_id=4;



