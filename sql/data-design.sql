DROP TABLE IF EXISTS profile;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS comment;

CREATE TABLE profile (
  -- primary key
	profileId BINARY(16) NOT NULL,
	porfilActivationToken CHAR(32),
	profileAtHandle VARCHAR(30) NOT NULL,
	ProfileEmail VARCHAR(200) NOT NULL,
	profileHash VARCHAR(128) NOT NULL,
	profilePhone VARCHAR(20) NOT NULL,
	profilesalt CHAR(64) NOT NULL,
	-- unique index made to avoid duplicates of profileEmail and profileHandle
	UNIQUE(profileEmail),
	UNIQUE(profileAtHandle),
	-- defined primary key
	PRIMARY KEY(profileId)
);


CREATE TABLE post (
	-- primary key
	postId BINARY(16) NOT NULL,
	-- foreign key
	postProfileId BINARY(20) NOT NULL,
	postTopic VARCHAR(200) NOT NULL,
	postContent VARCHAR(4000) NOT NULL,
	postDateTime DATETIME(6) NOT NULL,
	INDEX(postId),
	-- defind foreign key and relation
	FOREIGN KEY (postProfileId) REFERENCES profile(profileId),
	-- defind primary key
	PRIMARY KEY (postId)
);


Create TABLE comment (
	-- primary key
	commentId BINARY(16) NOT NULL,
	-- foreign key
	commentProfileId BINARY(16) NOT NULL,
	commentpostId Binary(16) NOT NULL,
	commentContent VARCHAR (1000) NOT NULL,
	commentDateTime DATETIME(6) NOT NULL,
	INDEX(commentPostId),
	-- defined primary key
	PRIMARY KEY(commentId),
	-- defined foreign key and relation
	FOREIGN KEY(commentPostId) REFERENCES post (postId),
	FOREIGN KEY(commentProfileId) REFERENCES profile (profileId)
);



INSERT INTO profile (profileId, profileActivationToken, profileAtHandle,
							profileEmail, profileHash, profileSalt, profilePhone)
VALUES (
	-- generated UUID for profile ID converted to binary format
	UNHEX(REPLACE("c0610dba-5116-4267-b9e1-57648eb2acc4", "-", "")),
	-- activation token
	"11ccfb9bf715af1c5a00330888470fa0",
	-- at handle
	"@Bobby23",
	-- email
	"Bob123@gmail.com",
	-- hash
	"5cdb3042291015982db2e30d5df9746a772fb0b42c8ba1084d9bb321fe92ad6b08d43fa31360063b664270d06ce836de0dadbc56469fbc
	c8326bl5fd587a8fb8",
	-- salt
	"fab776b9416e74e4715f296f2e77b1fc8b00cee20d192975db6fc76b9694d7d0",
	-- phone
	"2813308004"
);

INSERT INTO post (postId, postProfileId, postTopic, postContent, postDate)
VALUES (
	-- generated UUID for post ID converted to binary format
	UNHEX(REPLACE("da55da7e-54d4-4b3d-9702-42528cd9ecc7", "-", "")),
	-- post profile ID
	UNHEX(REPLACE("c0610dba-5116-4267-b9e1-57648eb2acc4", "-", "")),
	-- post topic
	"",
	-- post content
	"",
	-- post date
	""
);

INSERT INTO comment (commentId, commentProfileId, commentPostId, commentContent, commentDate)
VALUES (
	-- comment id
	UNHEX(REPLACE("a396ee69-be98-4e06-88e1-34620d0ae751", "-", "")),
	-- comment profile id
	UNHEX(REPLACE("c0610dba-5116-4267-b9e1-57648eb2acc4", "-", "")),
	-- comment post id
	UNHEX(REPLACE("da55da7e-54d4-4b3d-9702-42528cd9ecc7", "-", "")),
	-- comment content id
	"",
	-- comment date
	""
);
-- update phone number of profile id
UPDATE profile
SET profilePhone = "2813308004"
WHERE profileId = "c0610dba-5116-4267-b9e1-57648eb2acc4";

-- update post content of post id
UPDATE post
SET postContent = "What is the best cell phone service in the area?"
WHERE postId = "da55da7e-54d4-4b3d-9702-42528cd9ecc7";

-- update comment content of post id
UPDATE comment
SET commentContent = "Verizon"
WHERE commentPostId = "a396ee69-be98-4e06-88e1-34620d0ae751";

-- select profile handle from profile salt
SELECT profileAtHandle
FROM profile
WHERE profileId = "UNHEX(REPLACE("c0610dba-5116-4267-b9e1-57648eb2acc4", "-", ""))";

-- select post topic from post content
SELECT postTopic
FROM post
WHERE profileId = "UNHEX(REPLACE("c0610d1ba-5116-4267-b9e1-57648eb2acc4", "-", ""))";

-- select comment post id from comment profile id
SELECT commentPostId
FROM comment
WHERE commentProfileId = "c0610dba-5116-4267-b9e1-57648eb2acc4";

-- delete email from profile entity
DELETE FROM profile
WHERE profileEmail = "bob123@gmail.com";

-- delete empty date from post entity
DELETE FROM post
WHERE postId = "da55da7e-54d4-4b3d-9702-42528cd9ecc7";

-- delete empty date from comment entity
DELETE FROM comment
WHERE commentId = "a396ee69-be98-4e06-88e1-34620d0ae751";

