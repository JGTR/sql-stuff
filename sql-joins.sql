-- projects

CREATE TABLE projects (
  project_id int,
  title varchar(255),
  category varchar(255), 
  goal int, 
  start_date  DATE,
  end_date    DATE
  );

--CHECK ("music" OR "books" OR "charity"),

-- users
CREATE TABLE users (
  user_id int,
  name varchar(255),
  age int
);

-- pledges

CREATE TABLE pledges (
  pledge_id int,
  amount int,
  project_id int,
  user_id int
);


INSERT INTO projects (project_id, title, category, goal, start_date, end_date)
VALUES 
  (1, "Salvation 1", "charity", 10, '20130101', '20130701'),
  (2, "Salvation 2", "charity", 20, '20120101', '20130101'),
  (3, "Salvation 3", "charity", 34, '20130501', '20130801'),
  (4, "Salvation 4", "music", 17, '20130301', '20130705'),
  (5, "Salvation 5", "music", 99, '20130301', '20130701'),
  (6, "Salvation 6", "music", 109, '20130201', '20130801'),
  (7, "Salvation 7", "books", 86, '20130501', '20130601'),
  (8, "Salvation 8", "books", 11, '20130101', '20130701'),
  (9, "Salvation 9", "books", 6, '20130301', '20130801'),
  (10, "Salvation 10", "books", 45, '20130401', '20130701');

INSERT INTO users (user_id, name, age)
VALUES
  (1, "Jess", 57),
  (2, "Rose", 7),
  (3, "Mary", 17),
  (4, "Wilhelm", 43),
  (5, "Dorothea", 31),
  (6, "Gertrude", 23),
  (7, "Margarete", 15),
  (8, "Bobby", 28),
  (9, "Ryan", 21),
  (10, "Jones", 17),
  (11, "Gimp", 43),
  (12, "Bubba", 31),
  (13, "Fett", 17),
  (14, "Ewok", 17),
  (15, "Winner", 43),
  (16, "Loser", 31),
  (17, "Bowie", 23),
  (18, "Cobain", 15),
  (19, "Vicious", 28),
  (20, "Reed", 21);

INSERT INTO pledges (pledge_id, amount, project_id, user_id)
VALUES
  (1, 31, 1, 20),
  (2, 13, 4, 12),
  (3, 24, 1, 13),
  (4, 13, 4, 3),
  (5, 11, 1, 4),
  (6, 5, 3, 5),
  (7, 7, 2, 1),
  (8, 8, 1, 2),
  (9, 9, 7, 9),
  (10, 10, 8, 6),
  (11, 14, 9, 7),
  (12, 15, 1, 8),
  (13, 20, 10, 10),
  (14, 13, 6, 11),
  (15, 12, 1, 12),
  (16, 11, 1, 13),
  (17, 18, 8, 14),
  (18, 18, 9, 15),
  (19, 16, 4, 16),
  (20, 15, 9, 17),
  (21, 19, 3, 18),
  (22, 14, 7, 19),
  (23, 14, 8, 20),
  (24, 51, 9, 20),
  (25, 64, 8, 19),
  (26, 17, 7, 18),
  (27, 4, 6, 4),
  (28, 5, 5, 2),
  (29, 23, 4, 6),
  (30, 32, 3, 9);


-- SELECT the titles of all projects and their pledge amounts

SELECT title, pledges.amount as pledge_amount
FROM projects
JOIN pledges
  on projects.project_id = pledges.project_id 
  GROUP BY title
  ORDER BY pledge_amount DESC;


-- Select the user name, age, and pledge amount for all pledges.

SELECT name, age, SUM(pledges.amount) as pledge_amount
FROM users 
JOIN pledges
  on users.user_id = pledges.user_id
  GROUP BY users.name;


-- Select the titles of all projects that have met their funding goal.
-- Have not figured out how to identify those projects meeting their goal

SELECT title, goal, SUM(pledges.amount) as pledge_amount
FROM projects 
JOIN pledges
  on projects.project_id = pledges.project_id
  GROUP BY projects.title;

-- Select user names and amounts of all pledges. Order them by the amount.

SELECT name, age, SUM(pledges.amount) as pledge_amount
FROM users 
JOIN pledges
  on users.user_id = pledges.user_id
  GROUP BY users.name
  ORDER BY pledge_amount DESC;

-- Select the category names, and pledge amounts of all pledges in the music category

SELECT category, SUM(pledges.amount) as pledge_amount
FROM projects
JOIN pledges
  on projects.project_id = pledges.project_id
  where category="music"
  GROUP BY category;

-- Select the category (I am assuming this means project names) names and the sum total of the pledge amounts of all the pledges in the book category

SELECT title, sum(pledges.amount) as pledge_amount
FROM projects
JOIN pledges
  ON projects.project_id = pledges.project_id
  WHERE category="books"
  GROUP BY projects.title;












