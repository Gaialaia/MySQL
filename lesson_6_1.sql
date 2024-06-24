
USE lesson_6;

-- CREATE TABLE en (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(11)
-- );

-- INSERT INTO en (name) VALUES 
-- ('Jasmin'),
-- ('Nurchan'),
-- ('Dunya'),
-- ('Catherine'),
-- ('Malena'),
-- ('Natalia'),
-- ('Thorun');

SELECT * FROM en;
SELECT id FROM en WHERE MOD(id, 2) = 0;
