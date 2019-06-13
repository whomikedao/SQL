

-- INSERT INTO student VALUES (
--     DEFAULT, 'Michael', 'www.google.com', 'whomikedao', 2, 'F', '1962-04-13', FALSE
-- );

-- INSERT INTO student (name, graduated) VALUES (
--     'dingdong', FALSE
-- );

-- INSERT INTO student (name, github_username) VALUES (
--     'chingchong', 'whomikedao'
-- );

-- UPDATE student SET website = 'www.facebook.com' WHERE id = 2;

-- DELETE FROM student WHERE id = 4;

-- CREATE TABLE student2 (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar(20),
--     website varchar,
--     github_username varchar UNIQUE NOT NULL,
--     points integer DEFAULT 0 CHECK (points >= 0),
--     gender char(1),
--     cohort_start_date date NOT NULL,
--     graduated boolean DEFAULT FALSE
-- );

-- INSERT INTO student2 VALUES (
--     DEFAULT, 'chineseman', 'china.com', 'chao', 1, 'M', '1887-07-04'
-- );

-- CREATE TABLE articles (
--     id SERIAL PRIMARY KEY,
--     name varchar (100)
-- );

-- INSERT INTO articles VALUES 
-- (DEFAULT, 'alfie'),
-- (DEFAULT,'michael'),
-- (DEFAULT,'chris'),
-- (DEFAULT,'jerome'),
-- (DEFAULT,'sabrina'),
-- (DEFAULT,'garret'),
-- (DEFAULT,'deron'),
-- (DEFAULT,'ollie'),
-- (DEFAULT,'glenn'),
-- (DEFAULT,'tarek');

-- SELECT * from articles WHERE 

-- INSERT INTO student2 VALUES (
--     DEFAULT, 'chineseman', 'china.com', 'chao', 1, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'chinesewoman', 'china.com', 'cow', 5, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'koreanman', 'china.com', 'lana', 2, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'koreanwoman', 'china.com', 'del', 9, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'vietcong', 'china.com', 'ray', 8, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'vietnameseman', 'china.com', 'chance', 6, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'viet woman', 'china.com', 'the', 3, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'pinoys', 'china.com', 'rapper', 3, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'pinays', 'china.com', 'kanye', 2, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'japaneseman', 'china.com', 'west', 4, 'M', '1887-07-04'
-- );
-- INSERT INTO student2 VALUES (
--     DEFAULT, 'japanesewoman', 'china.com', 'sucks', 12, 'M', '1887-07-04'
-- );

-- SELECT * from student2 WHERE points > 5;


-- ALTER TABLE articles ADD last_name varchar;

-- ALTER TABLE student2 MODIFY COLUMN gender varchar(4);