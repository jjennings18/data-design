-- Select for Entities
SELECT * FROM profile;
SELECT  * FROM post;
SELECT * FROM comment;

-- Update for Entities
UPDATE profile SET profilePhone = "6192088596";
UPDATE post SET postContent = "Hello World";
UPDATE comment SET commentContent = "MySQL is a lot of work";

-- Delete for Entities
DELETE FROM profile WHERE profileEmail;
DELETE FROM post WHERE postTopic;
DELETE FROM comment WHERE commentContent;

-- Insert for Entities
INSERT INTO profile VALUES ();
INSERT INTO post VALUES ();
INSERT INTO comment VALUES ();