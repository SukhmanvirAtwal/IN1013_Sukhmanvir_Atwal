DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

CREATE TABLE petPet 
    (
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45) NOT NULL,
    species VARCHAR(45) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    birth DATE NOT NULL,
    death DATE,
);

CREATE TABLE petEvent 
(
    petname VARCHAR(20) NOT NULL,
    eventdate DATE NOT NULL,
    eventtype VARCHAR(15) NOT NULL,
    remark VARCHAR(255),
    PRIMARY KEY (petname, eventdate),
    FOREIGN KEY (petname) REFERENCES petPet(petname) ON DELETE CASCADE
);