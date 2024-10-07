CREATE TABLE airport_details(a_id INT,a_name VARCHAR(30),a_city VARCHAR(30),a_state VARCHAR(30),a_country VARCHAR(20),a_no_of_flights INT,a_no_of_runways INT,a_no_of_employee INT,a_flight_category VARCHAR(20),a_ticket_category VARCHAR(20));
INSERT INTO airport_details VALUES(1,'Kannur','Mattannur','Kerala','India',20,5,81138,'International','Business'),
(2,'Manglore','Kenjar','Karnataka','India',15,5,628206,'International','Economy'),
(3,'Kochin','Kochi','Kerala','India',10,6,197531,'International','Premium'),
(4,'Mysore','Mysore','Karnataka','India',5,1,6543210,'Domestic','Economy'),
(5,'Tirupati','Andra','Andrapradesh','India',3,1,3218906,'International','Premium'),
(6,'Selam','Selam','TamilNadu','India',4,2,9789543,'Domestic','Economy'),
(7,'Nedumba','Trivandrum','Kerala','India',20,3,4897654,'International','Premium'),
(8,'Banglore','Banglore','Karnataka','India',10,4,29794534,'International','Bussiness'),
(9,'Swami','Raipur','Chhattisgarh','India',4,1,70985656,'Domestic','Economy'),
(10,'Daporijo','Daporijo','Andrapradesh','India',4,1,6578426,'Domestic','Economy'),
(11,'Manohar','Mopa','Goa','India',6,2,8790860,'International','Premium'),
(12,'DXB International','Jablani','Goa','Dubai',6,2,98099767,'International','Bussiness');
SELECT * FROM airport_details;

SELECT * FROM airport_details where a_state='karnataka' AND a_country='India' AND a_ticket_category='economy';

SELECT * FROM airport_details WHERE a_name= 'kannur' OR a_no_of_flights ='20' OR a_flight_category='International';

SELECT * FROM airport_details WHERE a_id IN (1,2,5);

SELECT * FROM airport_details WHERE a_id NOT IN (2,6,8,11);


Task 2:


CREATE TABLE olympic_games (id INT ,year INT,city VARCHAR(50),country VARCHAR(50),sports_item VARCHAR(50),number_of_events INT,number_of_athletes INT,number_of_countries INT,team_name VARCHAR(100),venue VARCHAR(100));

INSERT INTO olympic_games (id, year, city, country, sports_item, number_of_events, number_of_athletes, number_of_countries, team_name, venue)VALUES
(1, 1984, 'Los Angeles', 'United States', 'Fencing', 221, 6829, 140, 'Team USA', 'Coliseum'),
(2, 1988, 'Seoul', 'South Korea', 'Weightlifting', 263, 8450, 160, 'Team Korea', 'Olympic Stadium'),
(3, 1992, 'Barcelona', 'Spain', 'Basketball', 257, 9356, 169, 'Team Spain', 'Olympic Stadium'),
(4, 1996, 'Atlanta', 'United States', 'Boxing', 271, 10400, 197, 'Team USA', 'Centennial Stadium'),
(5, 2000, 'Sydney', 'Australia', 'Rowing', 300, 10300, 199, 'Team Australia', 'Stadium Australia'),
(6, 2004, 'Athens', 'Greece', 'Cycling', 301, 10600, 202, 'Team Greece', 'Olympic Stadium'),
(7, 2008, 'Beijing', 'China', 'Athletics', 302, 11000, 204, 'Team China', 'National Stadium'),
(8, 2012, 'London', 'United Kingdom', 'Athletics', 302, 10500, 205, 'Team Great Britain', 'Olympic Stadium'),
(9, 2016, 'Rio de Janeiro', 'Brazil', 'Swimming', 306, 11200, 207, 'Team Brazil', 'Maracanã Stadium'),
(10, 2020, 'Tokyo', 'Japan', 'Gymnastics', 339, 11400, 206, 'Team Japan', 'Olympic Stadium'),
(11, 2024, 'Paris', 'France', 'Athletics', 32, 10000, 206, 'Team France', 'Stade de France'),
(12, 2028, 'Los Angeles', 'United States', 'Surfing', 32, 10000, 206, 'Team USA', 'Venice Beach');


select * from  olympic_games;


SELECT * FROM olympic_games WHERE year > 2000 AND number_of_countries > 200;

SELECT * FROM olympic_games WHERE sports_item = 'Athletics' OR country = 'United States';

SELECT * FROM olympic_games WHERE city IN ('London', 'Tokyo', 'Rio de Janeiro');

SELECT * FROM olympic_games WHERE sports_item NOT IN ('Athletics', 'Swimming', 'Gymnastics');






