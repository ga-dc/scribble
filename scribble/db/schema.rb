DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  email TEXT
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  email TEXT,
  post_id INTEGER

);
