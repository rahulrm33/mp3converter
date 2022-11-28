CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Auth123';   // doubt that how the command links to mysql --> native mysql (root@localhost)

CREATE DATABASE auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

USE auth;

CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) VALUES ('georgio@email.com', 'Admin123');
  