DROP DATABASE IF EXISTS chat;

CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  /* Describe your table here.*/
  id              INT unsigned NOT NULL AUTO_INCREMENT,
  username        INT NOT NULL,
  PRIMARY KEY     (id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id              INT unsigned NOT NULL AUTO_INCREMENT,
  message         VARCHAR(150) NOT NULL,
  roomname        VARCHAR(20) NOT NULL,
  username_id     INT unsigned,
  PRIMARY KEY     (id),
  FOREIGN KEY (username_id)    REFERENCES users(id)
);



/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

