SHOW DATABASES;

#The original database is 'students' and the only table under 'students' is 'tekcamp01'
DROP DATABASE `tc1-Victor-Betts`;
CREATE DATABASE `tc1-Victor-Betts`;
USE `tc1-Victor-Betts`;
CREATE TABLE tekcampers SELECT * FROM students.tekcamp01;
SELECT * FROM tekcampers ORDER BY first_name;
INSERT INTO tekcampers (id, first_name, last_name, gender, education) VALUES (28, 'Aaron', 'White', 'M', NULL),
(29, 'Cody', 'Clark', 'M', NULL), (30, 'Devon', 'Brewster', 'M', NULL), (31, 'Gotham', 'Katta', 'M', NULL),
(32, 'John', 'Bozarov', 'M', NULL), (33, 'John', 'Kol', 'M', NULL), (34, 'Justin', 'Cheng', 'M', NULL),
(35, 'Kevin', 'Keesee', 'M', NULL), (36, 'Monica', 'Howard', 'F', NULL), (37, 'Tyler', 'Clements', 'M', NULL);
SELECT * FROM tekcampers ORDER BY first_name;
DELETE FROM tekcampers WHERE id IN (26, 9, 20);
SELECT * FROM tekcampers;
UPDATE tekcampers SET gender = 'F' WHERE id IN (1, 3, 4, 5, 10, 11, 13, 17, 20, 27);
UPDATE tekcampers SET gender = 'M' WHERE gender is NULL;
SELECT * FROM tekcampers;
UPDATE tekcampers SET education = 'Bachelors Degree' WHERE last_name IN ('Bozarov', 'Swigert', 'Rice', 'Moreno', 'Castiglione', 'Ulysse','Katta', 'Radhakrishnan', 'Kim');
UPDATE tekcampers SET education = 'Some college' WHERE last_name IN ('Barbosa', 'Ladd', 'Gonzalez', 'Betts', 'Clark', 'Torres', 'Cheng');
UPDATE tekcampers SET education = 'Associates Degree' WHERE last_name IN ('Shane', 'Waters');
UPDATE tekcampers SET education = 'Masters Degree' WHERE last_name IN ('Choat', 'Murthy','Golden');
UPDATE tekcampers SET education = 'High school diploma' WHERE last_name IN ('Ibanez', 'Keesee', 'Johnson'); 
UPDATE tekcampers SET education = 'Doctorate' WHERE last_name IN ('Sieffert'); 
UPDATE tekcampers SET education = NULL WHERE last_name IN ('Bates', 'Brooks', 'Muppuru');
SELECT * FROM tekcampers;
SELECT * FROM tekcampers WHERE LENGTH(last_name) > 7;
SELECT * FROM tekcampers ORDER BY first_name;
SELECT * FROM tekcampers ORDER BY last_name;
SELECT * FROM tekcampers WHERE gender = 'M';
SELECT * FROM tekcampers WHERE gender = 'F';
SELECT * FROM tekcampers WHERE education = 'Masters degree';
SELECT * FROM tekcampers WHERE education = 'Bachelors degree';
SELECT * FROM tekcampers WHERE education = 'Associates degree';
SELECT * FROM tekcampers WHERE education NOT IN ('Masters degree', 'Bachelors degree', 'Associates degree', 'Doctorate');
CREATE TABLE `ta-Dylan-Fellows` SELECT * FROM tekcampers WHERE last_name IN ('Torres', 'Ulysse', 'Kol', 'Kim', 'Castiglione', 
'Golden', 'Sieffert', 'Betts', 'Murthy', 'Ibanez', 'Muppuru', 'Radhakrishnan');
CREATE TABLE hobbies (last_name VARCHAR(50), hobbies VARCHAR(50));
INSERT INTO hobbies VALUES ('Swigert', 'reading'), ('Sieffert', 'motorcycle riding'), ('Castiglione', 'video games'), ('Rice', 'golf'),
('Chavez', 'cattle rustling'), ('Murthy', 'gardening'), ('Betts', 'reading'), ('Shane', 'aerial yoga'), ('Katta', 'running'), 
('Keesee', 'video games'), ('Ibanez', 'working out'), ('Ladd', 'pickle ball'), ('Radhakrishnan', 'doing engineering projects with kids'),
('Barbosa', 'jiu jitsu'), ('Kim', 'writing'), ('Clark', 'cooking'), ('Waters', 'eating'), ('Torres', 'video games'), ('Ulysse', 'listening to music'),
('Johnson', 'hockey'), ('Bozarov', 'soccer');
SELECT * FROM `ta-Dylan-Fellows` as TA INNER JOIN hobbies ON hobbies.last_name = TA.last_name;
ALTER TABLE tekcampers ADD (bootcamp VARCHAR(50));
ALTER TABLE `ta-Dylan-Fellows` ADD (bootcamp VARCHAR(50));