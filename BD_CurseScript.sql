CREATE TABLE Fraction (
	fraction_id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE, 
	PRIMARY KEY(fraction_id)
);

CREATE TABLE Army ( 
	army_id INT NOT NULL UNIQUE,
	army_name varchar(30) NOT NULL UNIQUE,
	fraction_id INT NOT NULL,
	units varchar(30) NOT NULL,
	commander varchar(30) NOT NULL,
	PRIMARY KEY(army_id),
	FOREIGN KEY (fraction_id) REFERENCES Fraction (fraction_id)
);

CREATE TABLE Unit ( --ИСПРАВИТЬ В ДАТАЛОГИЧЕСКОЙ МОДЕЛИ

	unit_id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	army_id INT NOT NULL ,

	power INT NOT NULL,

	PRIMARY KEY(unit_id),
	FOREIGN KEY(army_id) REFERENCES Army (army_id)

);

CREATE TABLE Strenght (
	strenght_id INT NOT NULL UNIQUE,
	strenght_name varchar(30) NOT NULL UNIQUE,
	target_id INT NOT NULL UNIQUE,
	unit_id INT NOT NULL UNIQUE,
	power INT NOT NULL,

	PRIMARY KEY(strenght_id),
	FOREIGN KEY(unit_id) REFERENCES Unit (unit_id)

);

CREATE TABLE Hero(
	hero_id INT NOT NULL UNIQUE,
	Hero_name varchar(30) NOT NULL UNIQUE,
	ability_id INT NOT NULL UNIQUE,
	artifact_id INT NOT NULL UNIQUE,
	army_id INT NOT NULL,
	PRIMARY KEY (hero_id),
	FOREIGN KEY (army_id) REFERENCES army (army_id)
);

CREATE TABLE artifact (    -- ИСПРАВИТЬ В ДАТАЛОГИЧЕСКОЙ МОДЕЛИ
	artifact_id INT NOT NULL UNIQUE,
	hero_id INT NOT NULL ,
	power INT NOT NULL ,

	artifact_name varchar(30) NOT NULL UNIQUE,

	PRIMARY KEY(artifact_id),
	FOREIGN KEY (hero_id) REFERENCES Hero (hero_id)
);

CREATE TABLE Ability (
	ability_id INT NOT NULL UNIQUE,
	hero_id INT NOT NULL ,
	power INT NOT NULL ,

	ability_name varchar(30) NOT NULL UNIQUE,

	PRIMARY KEY(ability_id),
	FOREIGN KEY (hero_id) REFERENCES Hero (hero_id)
);

CREATE TABLE History (
	battle_id INT NOT NULL UNIQUE,
	army1_id INT NOT NULL ,
	army2_id INT NOT NULL ,
	location_id INT NOT NULL ,
	result bool NOT NULL,

	PRIMARY KEY(battle_id)

);

CREATE TABLE Location (
	location_id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	type_id INT NOT NULL UNIQUE,
	fort_id INT NOT NULL UNIQUE,
	PRIMARY KEY(location_id)

);

CREATE TABLE Fort (
	fort_id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	location_id INT NOT NULL UNIQUE,
	defence_score INT NOT NULL,
	PRIMARY KEY(fort_id),
	FOREIGN KEY (location_id) REFERENCES location (location_id)

);
