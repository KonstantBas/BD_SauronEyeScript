CREATE TABLE Fraction (
	Fraction_id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE, 
	PRIMARY KEY(Fraction_id)
);

CREATE TABLE Army ( --ИСПРАВИТЬ В ДАТАЛОГИЧЕСКОЙ МОДЕЛИ
	army_id INT NOT NULL,
	army_name varchar(30) NOT NULL UNIQUE,
	fraction_id INT NOT NULL,
	units varchar(30) NOT NULL,
	heroes varchar(30) NOT NULL,
	PRIMARY KEY(army_id),
	FOREIGN KEY (fraction_id) REFERNCES Fraction
);

CREATE TABLE Unit ( --ИСПРАВИТЬ В ДАТАЛОГИЧЕСКОЙ МОДЕЛИ

	unit_id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	army_id INT NOT NULL UNIQUE,
	
	power INT NOT NULL,
	
	PRIMARY KEY(unit_id),
	FOREIGN KEY(army_id) REFERNCES Army
	
);

CREATE TABLE Strenght (
	strenght_id INT NOT NULL UNIQUE,
	Strenght_name varchar(30) NOT NULL UNIQUE,
	target_id INT NOT NULL UNIQUE,
	power INT NOT NULL,
	
	PRIMARY KEY(strenght_id),
	FOREIGN KEY(unit_id) REFERNCES unit

);

CREATE TABLE Hero(
	Hero_id INT NOT NULL UNIQUE,
	Hero_name varchar(30) NOT NULL UNIQUE,
	ability_id INT NOT NULL UNIQUE,
	artifact_id INT NOT NULL UNIQUE,
	PRIMARY KEY (Hero_id),
	FOREIGN KEY (army_id) REFERNCES army
);

CREATE TABLE artifact (    -- ИСПРАВИТЬ В ДАТАЛОГИЧЕСКОЙ МОДЕЛИ
	artifact_id INT NOT NULL UNIQUE,
	power INT NOT NULL ,
	artifact_name varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY(artifact_id),
	FOREIGN KEY (artifact_id) REFERNCES HERO
);

CREATE TABLE History (
	Battle_id INT NOT NULL UNIQUE,
	army1_id INT NOT NULL ,
	army2_id INT NOT NULL ,
	location_id INT NOT NULL ,
	result bool NOT NULL,
	
	PRIMARY KEY(Battle_id),
	
);

CREATE TABLE Location (
	Location_id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	type_id INT NOT NULL UNIQUE,
	fort_id INT NOT NULL UNIQUE,
	PRIMARY KEY(Location_id),
	
);

CREATE TABLE Fort (
	Fort_id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	Location_id INT NOT NULL UNIQUE,
	defenceScore INT NOT NULL,
	PRIMARY KEY(Fort_id),
	FOREIGN KEY (fort_id) REFERNCES Location

);



