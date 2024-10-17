CREATE DATABASE IF NOT EXISTS todo_database;

USE todo_database;

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    completed BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

INSERT INTO todos (title) VALUES
('Finish Docker setup'),
('Create initial database');

CREATE USER IF NOT EXISTS 'todouser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON todo_database.* TO 'todouser'@'%';
FLUSH PRIVILEGES;
