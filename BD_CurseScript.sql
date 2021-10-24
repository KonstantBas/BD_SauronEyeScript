CREATE TABLE Fraction (
	id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE, 
	PRIMARY KEY(id)
);

CREATE TABLE Army (
	id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	fraction_id INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (fraction_id) REFERENCES Fraction (id)
);

CREATE TABLE Unit (
	id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	army_id INT NOT NULL,
	power INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(army_id) REFERENCES Army (id)
);

CREATE TABLE Strength (
	id INT NOT NULL UNIQUE,
	strength_name varchar(30) NOT NULL UNIQUE,
	target_id INT NOT NULL UNIQUE,
	unit_id INT NOT NULL UNIQUE,
	power INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(unit_id) REFERENCES Unit (id)
);

CREATE TABLE Hero(
	id INT NOT NULL UNIQUE,
	hero_name varchar(30) NOT NULL UNIQUE,
	abillity_id INT NOT NULL UNIQUE,
	artifact_id INT NOT NULL UNIQUE,
	army_id INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (army_id) REFERENCES Army (id)
);

CREATE TABLE Artifact (
	id INT NOT NULL UNIQUE,
	hero_id INT NOT NULL,
	power INT NOT NULL,
	name varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY(id),
	FOREIGN KEY (hero_id) REFERENCES Hero (id)
);

CREATE TABLE Abillity (
	id INT NOT NULL UNIQUE,
	hero_id INT NOT NULL,
	power INT NOT NULL,
	name varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY(id),
	FOREIGN KEY (hero_id) REFERENCES Hero (id)
);

CREATE TABLE History (
	id INT NOT NULL UNIQUE,
	army1_id INT NOT NULL,
	army2_id INT NOT NULL,
	location_id INT NOT NULL,
	winner_army_id INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (winner_army_id) REFERENCES Army (id)
);

CREATE TABLE Location ( -- Локация может существовать без форта, но форт без локации - нет
	id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	type_id INT NOT NULL UNIQUE,
	fort_id INT,
	PRIMARY KEY(id)
);

CREATE TABLE Fort (
	id INT NOT NULL UNIQUE,
	name varchar(30) NOT NULL UNIQUE,
	location_id INT NOT NULL UNIQUE,
	defence_score INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (location_id) REFERENCES Location (id)
);
