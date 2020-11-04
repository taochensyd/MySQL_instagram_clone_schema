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

INSERT INTO photos (image_url, user_id) VALUES
('/alskjd76', 1),
('/lkajsd98', 2),
('/90jddlkj', 2);

-- SELECT photos
-- FROM photos
-- JOIN users
--   ON photos.user_id = user.id;

CREATE TABLE comments (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  coment_text VARCHAR(255) NOT NULL,
  photo_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  create_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(photo_id) REFERENCES photos(id)
);

INSERT INTO comments(comment_text, user_id, photo_id) VALUES
('Meow!', 1, 2),
('Amazing Shot!', 3, 2),
('I <3 This', 2, 1);

CREATE TABLE likes (
  photo_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  create_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(photo_id) REFERENCES photos(id),
  PRIMARY KEY (user_id, photo_id)
);
