-- CREATE TABLE author (
--     id serial PRIMARY KEY,
--     name varchar(25)
-- );

-- CREATE TABLE article (
--     id serial PRIMARY KEY,
--     title varchar,
--     author_id integer REFERENCES author (id)
-- );

-- psql restaurant -f restaurant.sql

-- INSERT INTO author VALUES(
--     DEFAULT, 
--     'JK Rowling'
-- );

-- INSERT INTO author VALUES (DEFAULT, 'Michael Dao'),
-- (DEFAULT, 'Aerosmith');
-- INSERT INTO article VALUES (DEFAULT, 'Why Dumbledore Is Gay', 1),
--  (DEFAULT, 'Hermione Is Not White', 2),
--  (DEFAULT, 'Snape is All Grey', 1),
--  (DEFAULT, 'Jewish Wizards at Hogwarts', 3),
--  (DEFAULT, 'Sorry for Lupin But..', 1),
--  (DEFAULT, 'Sorry for Killing Snape', 1),
--  (DEFAULT, 'The T in Voldemort Is Silent', 2),
--  (DEFAULT, 'Hogwarts: No Tuition Fee', 3);


-- -- COMBINING BOTH TABLES BASED ON THE FOREIGN KEY
-- SELECT * FROM article, author WHERE article.author_id = author.id;
-- -- THESE TWO ARE THE SAME BUT MAKE SURE YOU'RE USING THE AUTHOR ID OF THE ARTICLE TABLE TO MATCH THE AUTHOR ID OF THE AUTHOR TABLE
-- -- INNER JOIN EXAMPLE
-- SELECT * FROM article INNER JOIN author ON article.author_id = author.id;

-- INSERT INTO article VALUES (DEFAULT, 'Hagrid Cant Produce a Patronus', 1),
-- (DEFAULT, 'Dumbledore is Death', 2),
-- (DEFAULT, 'Regrets of Killing', 3),
-- (DEFAULT, 'Harry Potter Changed My Life', 1);

-- INSERT INTO author VALUES (DEFAULT, 'Black Sabbath');

-- SELECT * FROM article RIGHT OUTER JOIN author ON article.author_id = author.id;

-- SELECT * FROM article LEFT OUTER JOIN author ON article.author_id = author.id;

-- SELECT * FROM article FULL OUTER JOIN author ON article.author_id = author.id;

-- SELECT * FROM article RIGHT OUTER JOIN author ON aritcle.author_id = author.id;

--HOW MANY ARTICLES HAS EACH AUTHOR WRITTEN?
SELECT --THIS SHOWS WHAT TO PUT ON THE SELECTED VIEW TABLE
    author.id, 
    author.name, 
    count(article.id) 
FROM 
    article
INNER JOIN --USING INNER JOIN TO SHOW THE MIDDLE OF THE TWO COMPARISON CIRCLES
    author ON article.author_id = author.id
GROUP BY --USES THE COUNT TO GROUP BY AUTHOR.ID SINCE IT'S EASIER TO USE ID TO GROUP THAN THEIR NAMES
    author.id;

-- CREATE TABLE groups(
--     id serial PRIMARY KEY,
--     name varchar(100)
-- );

-- CREATE TABLE member(
--     id serial PRIMARY KEY,
--     name varchar(25)
-- );

-- CREATE TABLE membership(
--     id serial PRIMARY KEY,
--     group_id integer REFERENCES groups(id),
--     member_id integer REFERENCES member(id)
-- );

-- INSERT INTO groups VALUES
-- (DEFAULT, 'Gryffindor'),
-- (DEFAULT, 'Hufflepuff'),
-- (DEFAULT, 'Slytherin'),
-- (DEFAULT, 'Ravenclaw');

-- INSERT INTO member VALUES
-- (DEFAULT, 'Harry Potter'),
-- (DEFAULT, 'Hermione Granger'),
-- (DEFAULT, 'Ron Weasley'),
-- (DEFAULT, 'Draco Malfoy'),
-- (DEFAULT, 'Lord Voldemort'),
-- (DEFAULT, 'Rubeus Hagrid'),
-- (DEFAULT, 'Sirius Black'),
-- (DEFAULT, 'Ginny Weasley');

-- INSERT INTO membership VALUES
-- (DEFAULT, 1, 1),
-- (DEFAULT, 2, 1),
-- (DEFAULT, 3, 2),
-- (DEFAULT, 4, 3),
-- (DEFAULT, 1, 4),
-- (DEFAULT, 2, 5),
-- (DEFAULT, 4, 6);


-- SELECT * FROM groups INNER JOIN membership ON groups_id = membership.group_id;