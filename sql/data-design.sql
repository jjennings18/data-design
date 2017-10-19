DROP TABLE IF EXISTS profile;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS comment;

  CREATE TABLE profile (
profileId BINARY(20) NOT NULL,
porfilActivationToken CHAR(32),
profileAtHandel VARCHAR(30) NOT NULL,
ProfileEmail VARCHAR(200) NOT NULL,
profileHash VARCHAR(128) NOT NULL,
profilePhone VARCHAR(20) NOT NULL,
profilesalt CHAR(64) NOT NULL,
PRIMARY KEY(profileId)
UNIQUE(profileEmail)
UNIQUE(profileAtHandle)
)


  CREATE TABLE post (
postId BINARY(20) NOT NULL,
postProfileId BINARY(20) NOT NULL,
postTopic VARCHAR(200) NOT NULL,
postContent VARCHAR(4000) NOT NULL,
postDateTime DATETIME(6) NOT NULL,
INDEX(postId)
PRIMARY KEY (postId)
)


  Create TABLE comment (
commentId BINARY(20) NOT NULL,
commentedPostId BINARY(20)
comment VARCHAR (1000)
commentDateTime DATETIME(6)
INDEX(postId)
INDEX(commentId)
PRIMARY KEY(commentId)

FOREIGN KEY(postId) REFERENCES profile (profileId)
)