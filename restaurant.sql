-- CREATE TABLE restaurant (
--     name varchar,
--     distance integer,
--     stars integer,
--     category varchar,
--     favorite_dish varchar,
--     does_takeout char(1),
--     last_time_you_ate_there date
-- );

-- INSERT INTO restaurant VALUES
-- ('mcdonalds', 2.3, 4, 'fast food', 'hot n spicy', 'y', '1887-04-05'),
-- ('burger king', 4, 2, 'fast food', 'whopper', 'y', '1887-05-06'),
-- ('wendys', 7, 5, 'fast food', 'double dave', 'y', '1887-04-26'),
-- ('in n out', 3, 4, 'fast food', 'double double', 'y', '1887-02-28'),
-- ('five guys', 3, 5, 'fast food', 'cheeseburger', 'y', '1887-04-13'),
-- ('tornado burger', 12, 5, 'fast food', 'tornado burger', 'y', '1887-12-05'),
-- ('whataburger', 5, 4, 'fast food', 'double meat whataburger', 'y', '1887-11-22'),
-- ('hopdoddy', 6, 3, 'fast food', 'hopshit', 'y', '1887-08-07'),
-- ('shake shack', 7, 2, 'fast food', 'burger', 'y', '1887-01-01'),
-- ('jacks grille', 8, 4, 'fast food', 'elk burger', 'y', '1887-03-15'),
-- ('fuddruckers', 9, 3, 'fast food', '1/4 burger', 'y', '1887-12-25'),
-- ('burger house', 26, 3, 'fast food', '1/4 burger', 'y', '1887-07-24'),
-- ('steak n shake', 7, 2, 'fast food', 'burger', 'y', '1887-09-01');


-- The names of the restaurants that you gave a 5 stars to
-- SELECT * FROM restaurant where stars = 5;

-- -- The favorite dishes of all 5-star restaurants
-- SELECT favorite_dish FROM restaurant where stars = 5;

-- -- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
-- ALTER TABLE restaurant ADD id SERIAL PRIMARY KEY;
-- SELECT id FROM restaurant WHERE name ilike '%burger%'

-- -- restaurants in the category of 'BBQ'
-- SELECT * FROM restaurant WHERE category = 'BBQ';

-- -- restaurants that do take out
-- ALTER TABLE restaurant ALTER COLUMN does_takeout boolean DEFAULT FALSE;
-- UPDATE restaurant SET does_takeout = TRUE;
-- SELECT * FROM restaurant WHERE does_takeout == TRUE;


-- -- restaurants that do take out and is in the category of 'BBQ'
-- SELECT * FROM restaurant WHERE does_takeout = TRUE AND category = 'BBQ';

-- -- restaurants within 2 miles
-- SELECT * FROM restaurant WHERE distance <= 2;

-- -- restaurants you haven't ate at in the last week
-- SELECT * FROM restaurant WHERE last_time_you_ate_there > '2019-06-01';

-- -- restaurants you haven't ate at in the last week and has 5 stars
-- SELECT * FROM restaurant WHERE last_time_you_ate_there > '2019-06-01' AND stars = 5;


-- AGGREGRATION
-- list restaurants by the closest distance.
-- SELECT * FROM restaurant ORDER BY distance;

-- list the top 2 restaurants by distance.
-- SELECT * FROM restaurant ORDER BY distance LIMIT 2;

-- list the top 2 restaurants by stars.
-- SELECT * FROM restaurant ORDER BY stars DESC LIMIT 2 ;

-- list the top 2 restaurants by stars where the distance is less than 2 miles.
-- SELECT * FROM restaurant WHERE distance <= 2 ORDER BY stars DESC LIMIT 2;

-- count the number of restaurants in the db.
-- SELECT COUNT(*) FROM restaurant;

-- count the number of restaurants by category.
-- SELECT stars, count(*) FROM restaurant GROUP BY stars;

-- get the average stars per restaurant by category.
-- SELECT category, AVG(stars) FROM restaurant GROUP BY category;

-- get the max stars of a restaurant by category.
-- SELECT category, MAX(stars) FROM restaurant GROUP BY category;