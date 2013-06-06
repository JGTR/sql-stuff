CREATE TABLE listings (
listings_id INT,
user varchar(255),
home_type varchar(255),
room_type varchar(255),
accomodates INT
);


INSERT INTO listings
VALUES 
(1, "John", "house", "shared room", 2),
(2, "Joe", "apt", "entire", 3),
(3, "Jim", "b&b", "shared room", 4),
(4, "Jeremiah", "house", "shared room", 1),
(5, "Jeremy", "house", "shared room", 1),
(6, "Johnathan", "house", "entire", 4),
(7, "Johnny", "apt", "shared room", 3),
(8, "Sue", "house", "shared room", 1),
(9, "Sarah", "other", "entire", 7),
(10, "Suzanne", "apt", "shared room", 20);


#Quiz:
# 1. How many people does Joe's place accomodate?
SELECT accomodates FROM listings WHERE user="Joe";

# 2. What type of place does Suzanne have?
SELECT home_type FROM listings WHERE user="Suzanne";

# 3. What type of room does Johnathan have?
SELECT room_type FROM listings WHERE user="Johnathan";

# 4. Which users have places that can accomodate just 2 people?
SELECT user FROM listings WHERE accomodates=2;

# 5. What type of home does Jeremy offer?
SELECT home_type FROM listings WHERE user="Jeremy";
