DROP TABLE IF EXISTS profile;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS comment;

CREATE TABLE profile (
  -- primary key
  profileId BINARY(20) NOT NULL,
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
  postId BINARY(20) NOT NULL,
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
  commentId BINARY(20) NOT NULL,
  -- foreign key
  commentProfileId BINARY(20) NOT NULL,
  commentpostId Binary(20) NOT NULL,
  commentCommentId VARCHAR (1000) NOT NULL,
  commentDateTime DATETIME(6) NOT NULL,
  INDEX(commentPostId),
  INDEX(commentId),
  -- defined primary key
  PRIMARY KEY(commentId),
  -- defined foreign key and relation
  FOREIGN KEY(commentPostId) REFERENCES post (postId)
);

