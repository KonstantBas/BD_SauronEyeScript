CREATE TABLE Fraction (
	fraction_id SERIAL,
	name varchar(30) NOT NULL UNIQUE, 
	PRIMARY KEY(fraction_id)
);

CREATE TABLE Army ( 
	army_id INT SERIAL,
	army_name varchar(30) NOT NULL UNIQUE,
	fraction_id INT NOT NULL,
	race varchar(30) NOT NULL,
	commander varchar(30) NOT NULL,
	PRIMARY KEY(army_id),
	FOREIGN KEY (fraction_id) REFERENCES Fraction (fraction_id)
);

CREATE TABLE Unit (
	unit_id SERIAL,
	name varchar(30) NOT NULL UNIQUE,
	army_id INT NOT NULL,
	power INT NOT NULL,
	PRIMARY KEY(unit_id),
	FOREIGN KEY(army_id) REFERENCES Army (army_id)
);

CREATE TABLE Strength (
	strength_id SERIAL,
	strength_name varchar(30) NOT NULL UNIQUE,
	target_id INT NOT NULL UNIQUE,
	unit_id INT NOT NULL UNIQUE,
	power INT NOT NULL,
	PRIMARY KEY(strength_id),
	FOREIGN KEY(unit_id) REFERENCES Unit (unit_id),
	FOREIGN KEY(target_id) REFERENCES Unit (unit_id)

);

CREATE TABLE Hero(
	hero_id SERIAL,
	hero_name varchar(30) NOT NULL UNIQUE,
	ability_id INT,
	artifact_id INT,
	army_id INT NOT NULL,
	PRIMARY KEY (hero_id),
	FOREIGN KEY (army_id) REFERENCES Army (army_id)
);

CREATE TABLE Artifact (
	artifact_id SERIAL,
	hero_id INT NOT NULL,
	power INT NOT NULL,
	artifact_name varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY(artifact_id),
	FOREIGN KEY (hero_id) REFERENCES Hero (hero_id)
);

CREATE TABLE Ability (
	ability_id SERIAL,
	hero_id INT NOT NULL,
	power INT NOT NULL,
	ability_name varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY(ability_id),
	FOREIGN KEY (hero_id) REFERENCES Hero (hero_id)
);

CREATE TABLE History (
	battle_id SERIAL,
	army1_id INT NOT NULL,
	army2_id INT NOT NULL,
	location_id INT NOT NULL,
	result bool NOT NULL,
	PRIMARY KEY(battle_id)
);

CREATE TABLE Location (
	location_id SERIAL,
	name varchar(30) NOT NULL UNIQUE,
	type_id INT NOT NULL UNIQUE,
	fort_id INT,
	PRIMARY KEY(location_id),
	FOREIGN KEY (fort_id) REFERENCES Fort (fort_id)
);

CREATE TABLE Fort (
	fort_id SERIAL,
	name varchar(30) NOT NULL UNIQUE,
	location_id INT NOT NULL UNIQUE,
	defence_score INT NOT NULL,
	PRIMARY KEY(fort_id),
	FOREIGN KEY (location_id) REFERENCES location (location_id)
);
