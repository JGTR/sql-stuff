#1

CREATE TABLE flights (
flight_id INT,
airline varchar(255),
d_time INT,
duration INT,
wifi_available varchar(255),
price INT,
stops INT
);

#2

INSERT INTO flights
VALUES 
(1, "AA", 9, 12, "yes", 1000, 0),
(2, "AA", 14, 12, "no", 2000, 1),
(3, "AA", 18, 12, "yes", 2000, 1),
(4, "AA", 22, 12, "no", 1000, 0),
(5, "UA", 10, 12, "yes", 3000, 2),
(6, "UA", 15, 12, "no", 3000, 0),
(7, "UA", 19, 12, "no", 2000, 0),
(8, "VA", 23, 12, "yes", 3000, 2),
(9, "VA", 10, 12, "no", 2000, 0),
(10, "VA", 12, 12, "no", 1000, 3);


#Answering questions

#1
SELECT price FROM flights WHERE flight_id=1;

#2
SELECT d_time FROM flights WHERE flight_id=1;
SELECT SUM(d_time + duration) FROM flights WHERE flight_id=1;

#3
SELECT * FROM flights WHERE stops=1;

#4
SELECT * FROM flights where airline="AA";

#5
COUNT SELECT flight_id from FLIGHTS WHERE airline="AA";

#6
# Filter for all flights that have wifi and place them in new table
# Filter newtable down to unique values for airlines into new table
# Count values in new table
