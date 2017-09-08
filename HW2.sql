DROP TABLE countries;
DROP TABLE borders;

CREATE TABLE countries (name VARCHAR(20), latitude VARCHAR(10), longitude VARCHAR(10),
area INT, population INT, gdp_in_bill REAL, gdpYear INT);

CREATE TABLE borders(name VARCHAR(20),border VARCHAR(20));

INSERT INTO countries (name,latitude,longitude,area,population,gdp_in_bill,gdpyear) 
VALUES 	('Germany','51 00 N','9 00 E',357022,80594017,3979,2016),
	('Netherlands','52 30 N','5 45 E',41543,17084719,870.8,2016),
	('Belgium','50 50 N','4 00 E',30528,11491346,508.6,2016),
	('Luxembourg','49 45 N','6 10 E',2586,594130,58.74,2016),
	('Poland','52 00 N','20 00 E',312685,38476269,1052,2017),
	('Czech_republic','49 45 N','15 30 E',78867,10674723,350,2016),
	('Austria','47 20 N','13 20 E',83871,8754413,416.6,2016),
	('France','46 00 N','2 00 S',643801,62814233,2699,2016),
	('Switzerland','47 00 N','8 00 E',41277,8236303,496.3,2016);
SELECT *
FROM countries;

INSERT INTO borders (name,border) 
VALUES 	('Germany','Netherlands'),
	('Germany','Belgium'),
	('Germany','Luxembourg'),
	('Germany','Poland'),
	('Germany','Czech_republic'),
 	('Germany','Austria'),
 	('Germany','France'),
 	('Germany','Switzerland'),
	('Netherlands','Germany'),
	('Netherlands','Belgium'),
 	('Netherlands','France'),
	('Belgium','France'),
	('Belgium','Germany'),
 	('Belgium','Luxembourg'),
 	('Belgium','Netherlands'),
 	('Luxembourg','Belgium'),
	('Luxembourg','France'),
	('Luxembourg','Germany'),
 	('Poland','Germany'),
	('Poland','Czech_republic'),
 	('Czech_republic','Germany'),
 	('Czech_republic','Poland'),
	('Czech_republic','Austria'),
	('Austria','Germany'),
	('Austria','Czech_republic'),
	('Austria','Switzerland'),
	('France','Belgium'),
 	('France','Luxembourg'),
	('France','Germany'),
	('France','Switzerland'),
	('Switzerland','Austria'),
	('Switzerland','France'),
	('Switzerland','Germany');
SELECT *
FROM borders;

SELECT border 
FROM borders
WHERE name = 'Germany';

SELECT name 
FROM countries 
WHERE population > 35000000;

SELECT border                                                                                                                             FROM countries                                                                                                                                   INNER JOIN borders                                                                                                                               ON borders.border = countries.name                                                                                                               WHERE borders.name = 'Germany' AND population > 35000000;