
CREATE TABLE `airlines` (
  `Airline_id` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Airline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `airlines` VALUES (1,'Alaska Airlines');


DROP TABLE IF EXISTS `airports`;

CREATE TABLE `airports` (
  `Code` varchar(10) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL

INSERT INTO `airports` VALUES ('LAX','Los Angeles Intl Airport','Los Angeles'),('SFO','San Francisco Intl Airport','San Francisco');


CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `confirmation_number` varchar(20) DEFAULT NULL,
  `passenger_id` int DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `passenger_id` (`passenger_id`),
  KEY `flight_id` (`flight_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`Passenger_id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`)

  INSERT INTO `bookings` VALUES (1,'TAEGKX',1,1,357.60),(2,'TAEGKX',1,2,357.60),(3,'TAEGKX',2,1,357.60),(4,'TAEGKX',2,2,357.60);


DROP TABLE IF EXISTS `flights`;

CREATE TABLE `flights` (
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `flight_date` date DEFAULT NULL,
  `from_city` varchar(50) DEFAULT NULL,
  `to_city` varchar(50) DEFAULT NULL,
  `flight_number` varchar(20) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` varchar(20) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `distance_miles` int DEFAULT NULL,
  `airline` varchar(50) DEFAULT NULL,
  `travel_class` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)


INSERT INTO `flights` VALUES (1,'2019-04-05','Los Angeles','San Francisco','1490','08:20:00','09:25:00 PM','1h15m',236,'Alaska Airlines','Economy'),(2,'2019-04-07','San Francisco','Los Angeles','1473','14:00:00','15:15:00 PM','1h15m',236,'Alaska Airlines','Economy');



DROP TABLE IF EXISTS `passengers`;
;
CREATE TABLE `passengers` (
  `Passenger_id` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `ticket_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Passenger_id`)

INSERT INTO `passengers` VALUES (1,'John Smith','0177200658'),(2,'Jennifer Smith','0178410326');


DROP TABLE IF EXISTS `ticket_flights`;

CREATE TABLE `ticket_flights` (
  `ticket_id` int DEFAULT NULL,
  `flight_id` int DEFAULT NULL

INSERT INTO `ticket_flights` VALUES (1,1),(1,2),(2,1),(2,2);


DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `booking_id` int DEFAULT NULL,
  `passenger_id` int DEFAULT NULL,
  `ticket_number` varchar(20) DEFAULT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `tickets` VALUES (1,1,'0177200658',358),(1,2,'0178410326',358);

