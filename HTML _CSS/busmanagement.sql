-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 07:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `br_includes_bs`
--

CREATE TABLE `br_includes_bs` (
  `Route_Number` int(11) NOT NULL,
  `Station_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `br_includes_bs`
--

INSERT INTO `br_includes_bs` (`Route_Number`, `Station_ID`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `br_needs_bs`
--

CREATE TABLE `br_needs_bs` (
  `Route_Number` int(11) NOT NULL,
  `BusStop_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `br_needs_bs`
--

INSERT INTO `br_needs_bs` (`Route_Number`, `BusStop_ID`) VALUES
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `Bus_Number` int(11) NOT NULL,
  `Seating_capacity` int(11) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Ticket_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`Bus_Number`, `Seating_capacity`, `Model`, `Ticket_Number`) VALUES
(1, 40, 'Random Model', 2);

-- --------------------------------------------------------

--
-- Table structure for table `businessman`
--

CREATE TABLE `businessman` (
  `Business_name` varchar(255) DEFAULT NULL,
  `Business_type` varchar(255) DEFAULT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus_reservation`
--

CREATE TABLE `bus_reservation` (
  `Reservation_ID` int(11) NOT NULL,
  `Seat_Number` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_reservation`
--

INSERT INTO `bus_reservation` (`Reservation_ID`, `Seat_Number`, `Date`) VALUES
(2, 8, '2023-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `bus_routes`
--

CREATE TABLE `bus_routes` (
  `Route_Number` int(11) NOT NULL,
  `Starting_Point` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Fare` decimal(10,2) DEFAULT NULL,
  `Schedule_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_routes`
--

INSERT INTO `bus_routes` (`Route_Number`, `Starting_Point`, `Destination`, `Distance`, `Fare`, `Schedule_ID`) VALUES
(2, 'Bus Stop 2', 'Bus Stop 1', 15, 7.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bus_schedule`
--

CREATE TABLE `bus_schedule` (
  `Schedule_ID` int(11) NOT NULL,
  `Arrival_Time` time DEFAULT NULL,
  `Departure_Time` time DEFAULT NULL,
  `Ticket_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_schedule`
--

INSERT INTO `bus_schedule` (`Schedule_ID`, `Arrival_Time`, `Departure_Time`, `Ticket_Number`) VALUES
(2, '09:30:00', '10:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bus_stations`
--

CREATE TABLE `bus_stations` (
  `Station_ID` int(11) NOT NULL,
  `Station_Name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_stations`
--

INSERT INTO `bus_stations` (`Station_ID`, `Station_Name`, `Location`) VALUES
(1, 'Primary Station', 'Main Road'),
(2, 'Secondary Bus Station', 'Suburb');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops`
--

CREATE TABLE `bus_stops` (
  `BusStop_ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_stops`
--

INSERT INTO `bus_stops` (`BusStop_ID`, `Name`, `Location`) VALUES
(3, 'Bus Stop 3', 'East Suburb');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `Discount_ID` int(11) NOT NULL,
  `Discount_Type` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Ticket_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`Discount_ID`, `Discount_Type`, `Amount`, `Ticket_Number`) VALUES
(2, 'Special Offer', 1.50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `freedomfighter`
--

CREATE TABLE `freedomfighter` (
  `Squadron` varchar(255) DEFAULT NULL,
  `Certificate` varchar(255) DEFAULT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journey_history`
--

CREATE TABLE `journey_history` (
  `History_ID` int(11) NOT NULL,
  `Time` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Past_trips` varchar(255) DEFAULT NULL,
  `Passenger_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journey_history`
--

INSERT INTO `journey_history` (`History_ID`, `Time`, `Date`, `Past_trips`, `Passenger_ID`) VALUES
(1, '09:30:00', '0001-01-21', 'No trips', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Notification_ID` int(11) NOT NULL,
  `Message` text DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Notification_ID`, `Message`, `Date`, `Time`) VALUES
(1, 'Welcome aboard!', '2023-09-30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE `other` (
  `Details` varchar(255) DEFAULT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `Passenger_ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Mobile_number` varchar(20) DEFAULT NULL,
  `Profession` varchar(255) DEFAULT NULL,
  `Ticket_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`Passenger_ID`, `Name`, `Age`, `Mobile_number`, `Profession`, `Ticket_Number`) VALUES
(2, 'Akib', 25, '987-654-3210', 'Student', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `Method_ID` int(11) NOT NULL,
  `Method_Name` varchar(255) DEFAULT NULL,
  `Ticket_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`Method_ID`, `Method_Name`, `Ticket_Number`) VALUES
(2, 'Cash', 2);

-- --------------------------------------------------------

--
-- Table structure for table `p_recieves_n`
--

CREATE TABLE `p_recieves_n` (
  `Passenger_ID` int(11) NOT NULL,
  `Notification_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_recieves_n`
--

INSERT INTO `p_recieves_n` (`Passenger_ID`, `Notification_ID`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `Office` varchar(255) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Education` varchar(255) DEFAULT NULL,
  `Degree` varchar(255) DEFAULT NULL,
  `Institute` varchar(255) DEFAULT NULL,
  `Passenger_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Education`, `Degree`, `Institute`, `Passenger_ID`) VALUES
('BSc', 'Economics', 'Harvard', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `Ticket_Number` int(11) NOT NULL,
  `Fare` decimal(10,2) DEFAULT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Reservation_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`Ticket_Number`, `Fare`, `Issue_Date`, `Reservation_ID`) VALUES
(2, 7.00, '2023-09-30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_types`
--

CREATE TABLE `ticket_types` (
  `Type_ID` int(11) NOT NULL,
  `Type_Name` varchar(255) DEFAULT NULL,
  `Ticket_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_types`
--

INSERT INTO `ticket_types` (`Type_ID`, `Type_Name`, `Ticket_Number`) VALUES
(2, 'Ticket Type 2', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `br_includes_bs`
--
ALTER TABLE `br_includes_bs`
  ADD PRIMARY KEY (`Route_Number`,`Station_ID`),
  ADD KEY `Station_ID` (`Station_ID`);

--
-- Indexes for table `br_needs_bs`
--
ALTER TABLE `br_needs_bs`
  ADD PRIMARY KEY (`Route_Number`,`BusStop_ID`),
  ADD KEY `BusStop_ID` (`BusStop_ID`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`Bus_Number`),
  ADD KEY `Ticket_Number` (`Ticket_Number`);

--
-- Indexes for table `businessman`
--
ALTER TABLE `businessman`
  ADD PRIMARY KEY (`Passenger_ID`);

--
-- Indexes for table `bus_reservation`
--
ALTER TABLE `bus_reservation`
  ADD PRIMARY KEY (`Reservation_ID`);

--
-- Indexes for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD PRIMARY KEY (`Route_Number`),
  ADD KEY `Schedule_ID` (`Schedule_ID`);

--
-- Indexes for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  ADD PRIMARY KEY (`Schedule_ID`),
  ADD KEY `Ticket_Number` (`Ticket_Number`);

--
-- Indexes for table `bus_stations`
--
ALTER TABLE `bus_stations`
  ADD PRIMARY KEY (`Station_ID`);

--
-- Indexes for table `bus_stops`
--
ALTER TABLE `bus_stops`
  ADD PRIMARY KEY (`BusStop_ID`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`Discount_ID`),
  ADD KEY `Ticket_Number` (`Ticket_Number`);

--
-- Indexes for table `freedomfighter`
--
ALTER TABLE `freedomfighter`
  ADD PRIMARY KEY (`Passenger_ID`);

--
-- Indexes for table `journey_history`
--
ALTER TABLE `journey_history`
  ADD PRIMARY KEY (`History_ID`),
  ADD KEY `Passenger_ID` (`Passenger_ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`Notification_ID`);

--
-- Indexes for table `other`
--
ALTER TABLE `other`
  ADD PRIMARY KEY (`Passenger_ID`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`Passenger_ID`),
  ADD KEY `Ticket_Number` (`Ticket_Number`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`Method_ID`),
  ADD KEY `Ticket_Number` (`Ticket_Number`);

--
-- Indexes for table `p_recieves_n`
--
ALTER TABLE `p_recieves_n`
  ADD PRIMARY KEY (`Passenger_ID`,`Notification_ID`),
  ADD KEY `Notification_ID` (`Notification_ID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`Passenger_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Passenger_ID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`Ticket_Number`),
  ADD KEY `Reservation_ID` (`Reservation_ID`);

--
-- Indexes for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`Type_ID`),
  ADD KEY `Ticket_Number` (`Ticket_Number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `br_includes_bs`
--
ALTER TABLE `br_includes_bs`
  ADD CONSTRAINT `br_includes_bs_ibfk_1` FOREIGN KEY (`Route_Number`) REFERENCES `bus_routes` (`Route_Number`),
  ADD CONSTRAINT `br_includes_bs_ibfk_2` FOREIGN KEY (`Station_ID`) REFERENCES `bus_stations` (`Station_ID`);

--
-- Constraints for table `br_needs_bs`
--
ALTER TABLE `br_needs_bs`
  ADD CONSTRAINT `br_needs_bs_ibfk_1` FOREIGN KEY (`Route_Number`) REFERENCES `bus_routes` (`Route_Number`),
  ADD CONSTRAINT `br_needs_bs_ibfk_2` FOREIGN KEY (`BusStop_ID`) REFERENCES `bus_stops` (`BusStop_ID`);

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_ibfk_1` FOREIGN KEY (`Ticket_Number`) REFERENCES `tickets` (`Ticket_Number`);

--
-- Constraints for table `businessman`
--
ALTER TABLE `businessman`
  ADD CONSTRAINT `businessman_ibfk_1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passengers` (`Passenger_ID`);

--
-- Constraints for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD CONSTRAINT `bus_routes_ibfk_1` FOREIGN KEY (`Schedule_ID`) REFERENCES `bus_schedule` (`Schedule_ID`);

--
-- Constraints for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  ADD CONSTRAINT `bus_schedule_ibfk_1` FOREIGN KEY (`Ticket_Number`) REFERENCES `tickets` (`Ticket_Number`);

--
-- Constraints for table `discount`
--
ALTER TABLE `discount`
  ADD CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`Ticket_Number`) REFERENCES `tickets` (`Ticket_Number`);

--
-- Constraints for table `freedomfighter`
--
ALTER TABLE `freedomfighter`
  ADD CONSTRAINT `freedomfighter_ibfk_1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passengers` (`Passenger_ID`);

--
-- Constraints for table `journey_history`
--
ALTER TABLE `journey_history`
  ADD CONSTRAINT `journey_history_ibfk_1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passengers` (`Passenger_ID`);

--
-- Constraints for table `other`
--
ALTER TABLE `other`
  ADD CONSTRAINT `other_ibfk_1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passengers` (`Passenger_ID`);

--
-- Constraints for table `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`Ticket_Number`) REFERENCES `tickets` (`Ticket_Number`);

--
-- Constraints for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `payment_method_ibfk_1` FOREIGN KEY (`Ticket_Number`) REFERENCES `tickets` (`Ticket_Number`);

--
-- Constraints for table `p_recieves_n`
--
ALTER TABLE `p_recieves_n`
  ADD CONSTRAINT `p_recieves_n_ibfk_1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passengers` (`Passenger_ID`),
  ADD CONSTRAINT `p_recieves_n_ibfk_2` FOREIGN KEY (`Notification_ID`) REFERENCES `notification` (`Notification_ID`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passengers` (`Passenger_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passengers` (`Passenger_ID`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`Reservation_ID`) REFERENCES `bus_reservation` (`Reservation_ID`);

--
-- Constraints for table `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD CONSTRAINT `ticket_types_ibfk_1` FOREIGN KEY (`Ticket_Number`) REFERENCES `tickets` (`Ticket_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
