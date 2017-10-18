  CREATE TABLE profile (
profileId BINARY(20)
profileAtHandel VARCHAR(30)
ProfileEmail VARCHAR(200)
profilePhone VARCHAR(20)
PRIMARY KEY(profileId)
)
  CREATE TABLE post (
postId BINARY(20)
postTopic VARCHAR(1000)
postDateTime DATETIME(6)
INDEX(postId)
PRIMARY KEY (postId)
)


  Create TABLE comment (
commentId BINARY(20)
commentedPostId BINARY(20)
comment VARCHAR (1000)
commentDateTime DATETIME(6)
INDEX(postId)
INDEX(commentId)
PRIMARY KEY(commentId)

FOREIGN KEY(postId) REFERENCES profile (profileId)
)