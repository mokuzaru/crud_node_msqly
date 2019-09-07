CREATE DATABASE database_links;

USE database_links;

--User TABLE
CREATE TABLE users(
  id INT(11) NOT NULL,
  username VARCHAR(16) NOT NULL,
  password VARCHAR(60) NOT NULL,
  fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
  ADD PRYMARY KEY (id);

ALTER TABLE users
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT = 2;

DESCRIBE users;


--Links TABLE
CREATE TABLE links(
  id INT(11) NOT NULL,
  title VARCHAR (150) NOT NULL,
  url VARCHAR (255) NOT NULL,
  description TEXT,
  user_id INT(11),
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAIN fk_user FOREING KEY (user_id) REFERENCES users(id)

)

ALTER TABLE Links
  ADD PRIMARY KEY (id);

  ALTER TABLE links
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT = 2;
