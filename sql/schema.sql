DROP SCHEMA VeterinariaRamz;
CREATE SCHEMA VeterinariaRamz;
USE VeterinariaRamz;

CREATE TABLE User (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL, 
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(25) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE Mascot (
    id INT NOT NULL AUTO_INCREMENT,
    mascot_name VARCHAR(40) NOT NULL,
    race VARCHAR(40) NOT NULL,
    mascot_type VARCHAR(50) NOT NULL,
    dob DATE(),
    vaccines VARCHAR(100),
    comments VARCHAR(140),
    PRIMARY KEY(id)
    FOREIGN KEY(user_id) REFERENCES User(id)
);

CREATE TABLE Post (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES User(id)
);