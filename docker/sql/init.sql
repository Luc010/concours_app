-- Create a new database called 'afpa_db' if it does not exist already
CREATE DATABASE IF NOT EXISTS afpa_db CHARACTER SET utf8 COLLATE utf8_general_ci;
USE afpa_db;
-- Drop the table if it already exists
DROP TABLE IF EXISTS users;
CREATE TABLE `user` (
    `user_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `login` varchar(250),
    `password` varchar(250),
    `firstname` varchar(250),
    `lastname` varchar(250),
    `birthday` datetime,
    `isman` boolean,
    `civility` varchar(30),
    `email` varchar(250),
    `adress_street` varchar(250),
    `adress_code` varchar(250),
    `adress_city` varchar(250),
    `phone` varchar(250),
    `social_security_number` varchar(250)
);

ALTER TABLE user
  ADD UNIQUE KEY login_UNIQUE (`login`);

insert into user(login, firstname, lastname) values
    ('p.dupont','pierre','dupont'),
    ('paul.dupont','paul','dupont'),
    ('j.dupont','jack','dupont');