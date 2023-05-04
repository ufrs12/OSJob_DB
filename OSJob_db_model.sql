-- companies definition

CREATE TABLE companies (id INTEGER PRIMARY KEY AUTOINCREMENT, f_name VARCHAR (300) UNIQUE NOT NULL, s_name VARCHAR (100) NOT NULL UNIQUE);


-- departs definition

CREATE TABLE departs (id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, f_name VARCHAR (500) UNIQUE NOT NULL, s_name VARCHAR (100) UNIQUE NOT NULL, comp_id INTEGER NOT NULL REFERENCES companies (id), parent_dep INTEGER REFERENCES departs (id));


-- functions definition

CREATE TABLE functions (id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, f_name VARCHAR (200), s_name VARCHAR (50), comp_id INTEGER REFERENCES companies (id), parent_dep INTEGER REFERENCES departs (id));


-- staff definition

CREATE TABLE staff (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, surname VARCHAR (25) NOT NULL, name VARCHAR (20) NOT NULL, patronymic VARCHAR (30), s_name VARCHAR (30) NOT NULL, funct_id INTEGER REFERENCES functions (id) NOT NULL, telega VARCHAR (20), adopted DATE (25) NOT NULL, fired DATE (25));