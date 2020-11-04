DROP DATABASE ig_clone;
CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE USERS (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (username) VALUES
('BlueTheCat'),
('CharlieBrown'),
('ColtSteele');

CREATE TABLE photos (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  image_url VARCHAR(255) NOT NULL,
  user_id INTEGER NOT NULL,
  create_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(user_id) REFERENCES users(id)
);
