DROP TABLE IF EXISTS space_cowboys;

CREATE TABLE space_cowboys(
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
bounty_value INT2,
homeworld VARCHAR(255),
favourite_weapon VARCHAR(255)
);