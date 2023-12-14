DROP DATABASE IF EXISTS create_shipping_ABE;

CREATE DATABASE create_shipping_ABE;

USE create_shipping_ABE;

CREATE TABLE Port
(port_ID VARCHAR(20) PRIMARY KEY,
name VARCHAR(20),
city VARCHAR(20),
country VARCHAR(20));

CREATE TABLE Ship
(ship_ID VARCHAR(20) PRIMARY KEY,
name VARCHAR(20),
displacement DECIMAL(5,2),
captain_name VARCHAR(20),
crew_count INT NOT NULL,
home_port VARCHAR(20),
year_built YEAR NOT NULL,
FOREIGN KEY (home_port) REFERENCES Port(port_ID));

CREATE TABLE Container
(container_ID VARCHAR(20) PRIMARY KEY,
height DECIMAL(10,2) NOT NULL,
width DECIMAL(10,2) NOT NULL,
length DECIMAL(10,2) NOT NULL,
weight DECIMAL(10,2) NOT NULL,
ship_ID VARCHAR(20),
FOREIGN KEY (ship_ID) REFERENCES Ship(ship_ID));


