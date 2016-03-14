
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  name TEXT,
  author TEXT,
  author_email TEXT,
  post_date timestamp,
  post TEXT,
  post_tag TEXT,
  category TEXT
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  comment_time timestamp,
  comment_email TEXT,
  comment TEXT,
  post_id INT
);
