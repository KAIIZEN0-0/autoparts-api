-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2026 at 08:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbautoparts`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `part_id` int(11) DEFAULT NULL,
  `distance_km` decimal(5,2) DEFAULT NULL,
  `stock_status` varchar(50) DEFAULT NULL,
  `part_condition` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `shop_id`, `part_id`, `distance_km`, `stock_status`, `part_condition`) VALUES
(1, 1, 1, 8.50, 'Available', 'Japan Surplus - Grade A'),
(2, 2, 2, 15.20, 'Limited', 'Used - Grade B'),
(3, 3, 3, 22.00, 'Out of Stock', 'Brand New Replacement'),
(4, 4, 4, 5.10, 'Available', 'Japan Surplus - Grade A'),
(5, 5, 5, 45.30, 'Available', 'Used - Grade A'),
(6, 6, 6, 2.50, 'Available', 'Brand New Replacement'),
(7, 7, 7, 8.10, 'Limited', 'Japan Surplus - Grade B'),
(8, 8, 8, 560.00, 'Out of Stock', 'Used - Grade C'),
(9, 9, 9, 980.00, 'Available', 'Brand New OEM'),
(10, 10, 10, 12.40, 'Available', 'Japan Surplus - Grade A'),
(11, 11, 11, 4.20, 'Limited', 'Brand New Replacement'),
(12, 12, 12, 3.80, 'Available', 'Used - Grade A'),
(13, 13, 13, 7.50, 'Available', 'Brand New OEM'),
(14, 14, 14, 6.00, 'Out of Stock', 'Japan Surplus - Grade B'),
(15, 15, 15, 18.20, 'Limited', 'Used - Grade B'),
(16, 16, 16, 22.50, 'Available', 'Brand New Replacement'),
(17, 17, 17, 65.00, 'Out of Stock', 'Used - Grade C'),
(18, 18, 18, 250.00, 'Available', 'Brand New OEM'),
(19, 19, 19, 450.00, 'Limited', 'Japan Surplus - Grade A'),
(20, 20, 20, 85.00, 'Available', 'Brand New Replacement'),
(21, 21, 21, 14.30, 'Available', 'Used - Grade A'),
(22, 22, 22, 11.20, 'Limited', 'Japan Surplus - Grade B'),
(23, 23, 23, 5.50, 'Available', 'Brand New OEM'),
(24, 24, 24, 9.80, 'Available', 'Brand New Replacement'),
(25, 25, 25, 16.70, 'Out of Stock', 'Used - Grade B'),
(26, 6, 10, 3.00, 'Available', 'Brand New OEM'),
(27, 7, 15, 9.50, 'Limited', 'Japan Surplus - Grade A'),
(28, 8, 20, 565.00, 'Available', 'Brand New Replacement'),
(29, 10, 25, 13.10, 'Out of Stock', 'Used - Grade A'),
(30, 11, 30, 5.00, 'Available', 'Brand New OEM');

-- --------------------------------------------------------

--
-- Table structure for table `labor_estimates`
--

CREATE TABLE `labor_estimates` (
  `estimate_id` int(11) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `area` varchar(100) NOT NULL,
  `repair_type` varchar(100) NOT NULL,
  `estimated_labor_hours` decimal(4,2) NOT NULL,
  `difficulty_level` varchar(50) NOT NULL,
  `availability_of_mechanics` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labor_estimates`
--

INSERT INTO `labor_estimates` (`estimate_id`, `zip_code`, `area`, `repair_type`, `estimated_labor_hours`, `difficulty_level`, `availability_of_mechanics`) VALUES
(1, '1103', 'Quezon City (Banawe)', 'Fuel Pump Replacement', 2.50, 'Intermediate', 'High'),
(2, '1223', 'Makati City (Evangelista)', 'Brake Caliper Replacement', 1.50, 'Beginner', 'High'),
(3, '4026', 'Santa Rosa (Laguna)', 'Alternator Replacement', 3.00, 'Advanced', 'Medium'),
(4, '1014', 'Manila (Blumentritt)', 'Radiator Fan Replacement', 1.00, 'Beginner', 'High'),
(5, '2016', 'Apalit (Pampanga)', 'Shock Absorber Replacement', 2.00, 'Intermediate', 'Medium'),
(6, '4024', 'Biñan (Laguna)', 'Ignition Coil Replacement', 0.50, 'Beginner', 'High'),
(7, '1600', 'Pasig City', 'Timing Belt Replacement', 4.50, 'Expert', 'Medium'),
(8, '6014', 'Mandaue City', 'Mass Air Flow Sensor Check', 1.00, 'Intermediate', 'High'),
(9, '8000', 'Davao City', 'O2 Sensor Replacement', 1.50, 'Intermediate', 'High'),
(10, '4027', 'Calamba (Laguna)', 'Bumper Installation', 2.00, 'Beginner', 'High'),
(11, '1100', 'Quezon City', 'CV Joint Replacement', 3.00, 'Advanced', 'Medium'),
(12, '1200', 'Makati City', 'Tie Rod End Replacement', 2.00, 'Intermediate', 'High'),
(13, '4025', 'Cabuyao (Laguna)', 'Control Arm Replacement', 2.50, 'Advanced', 'Medium'),
(14, '1000', 'Manila (Taft)', 'Headlight Assembly Install', 1.00, 'Beginner', 'High'),
(15, '1770', 'Muntinlupa (Alabang)', 'EGR Valve Cleaning', 2.50, 'Intermediate', 'Medium'),
(16, '4102', 'Bacoor (Cavite)', 'Clutch Disk Replacement', 6.00, 'Expert', 'Low'),
(17, '2000', 'San Fernando (Pampanga)', 'Water Pump Replacement', 3.50, 'Advanced', 'Medium'),
(18, '2600', 'Baguio City', 'Thermostat Replacement', 1.50, 'Intermediate', 'High'),
(19, '5000', 'Iloilo City', 'Starter Motor Replacement', 2.00, 'Intermediate', 'High'),
(20, '4217', 'Lipa (Batangas)', 'Power Steering Pump Repair', 3.00, 'Advanced', 'Medium'),
(21, '1870', 'Antipolo (Rizal)', 'Wheel Bearing Replacement', 2.50, 'Advanced', 'Medium'),
(22, '1440', 'Valenzuela City', 'Brake Master Cylinder Bleed', 1.50, 'Intermediate', 'High'),
(23, '1550', 'Mandaluyong City', 'Cabin Air Filter Swap', 0.50, 'Beginner', 'High'),
(24, '1740', 'Las Piñas City', 'Engine Mount Replacement', 4.00, 'Expert', 'Low'),
(25, '1800', 'Marikina City', 'Throttle Body Cleaning', 1.00, 'Beginner', 'High'),
(26, '1630', 'Taguig City', 'ABS Sensor Replacement', 1.50, 'Intermediate', 'High'),
(27, '3000', 'Malolos (Bulacan)', 'Wiper Motor Replacement', 1.00, 'Beginner', 'High'),
(28, '4400', 'Naga City', 'Fuel Injector Cleaning', 2.00, 'Intermediate', 'Medium'),
(29, '9000', 'Cagayan de Oro', 'Ignition Switch Repair', 1.50, 'Intermediate', 'High'),
(30, '7000', 'Zamboanga City', 'Radiator Hose Swap', 1.00, 'Beginner', 'High');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `part_id` int(11) NOT NULL,
  `part_name` varchar(100) NOT NULL,
  `compatibility` varchar(255) NOT NULL,
  `scarcity_index` int(11) NOT NULL,
  `global_stock_status` varchar(50) NOT NULL,
  `estimated_wait_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`part_id`, `part_name`, `compatibility`, `scarcity_index`, `global_stock_status`, `estimated_wait_days`) VALUES
(1, 'Fuel Pump Assembly', 'Toyota Vios Gen 3 (2013-2018)', 7, 'Low Stock', 14),
(2, 'Brake Caliper', 'Honda Civic FD (2006-2011)', 4, 'In Stock', 5),
(3, 'Alternator 12V 90A', 'Mitsubishi Montero Sport (2016-2020)', 8, 'Critical', 21),
(4, 'Radiator Cooling Fan', 'Ford Ranger T6 (2012-2015)', 6, 'Low Stock', 10),
(5, 'Shock Absorber Front', 'Nissan Urvan NV350', 3, 'In Stock', 3),
(6, 'Ignition Coil', 'Honda City (2009-2013)', 3, 'In Stock', 2),
(7, 'Timing Belt Kit', 'Mitsubishi Adventure 4D56', 5, 'Low Stock', 7),
(8, 'Mass Air Flow Sensor', 'Nissan Navara NP300', 8, 'Critical', 25),
(9, 'Oxygen Sensor (O2)', 'Toyota Innova Gas (2005-2015)', 4, 'In Stock', 4),
(10, 'Front Bumper Cover', 'Toyota Wigo (2014-2017)', 7, 'Out of Stock', 18),
(11, 'CV Joint Outer', 'Mitsubishi Mirage G4', 2, 'In Stock', 1),
(12, 'Tie Rod End', 'Ford Everest (2016-2021)', 5, 'Low Stock', 8),
(13, 'Lower Control Arm', 'Honda Civic FB (2012-2015)', 6, 'Low Stock', 12),
(14, 'Headlight Assembly (Left)', 'Isuzu D-Max (2014-2019)', 7, 'Critical', 20),
(15, 'EGR Valve', 'Mitsubishi Montero Sport 4D56', 8, 'Critical', 22),
(16, 'Clutch Disk', 'Toyota Hiace Commuter', 3, 'In Stock', 3),
(17, 'Water Pump', 'Nissan Urvan Escapade', 4, 'In Stock', 5),
(18, 'Thermostat', 'Honda CR-V (2007-2011)', 2, 'In Stock', 2),
(19, 'Starter Motor', 'Suzuki Ertiga (2014-2018)', 6, 'Low Stock', 14),
(20, 'Power Steering Pump', 'Toyota Fortuner (2005-2015)', 7, 'Out of Stock', 16),
(21, 'Wheel Bearing (Rear)', 'Mazda 3 (2014-2018)', 5, 'Low Stock', 9),
(22, 'Brake Master Cylinder', 'Hyundai Accent (2011-2018)', 4, 'In Stock', 4),
(23, 'Cabin Air Filter', 'Kia Rio (2012-2017)', 1, 'In Stock', 1),
(24, 'Engine Mount (Right)', 'Chevrolet Trailblazer', 8, 'Critical', 30),
(25, 'Throttle Body', 'Toyota Vios Gen 2 (Batman)', 6, 'Low Stock', 11),
(26, 'ABS Sensor', 'Ford Ranger T6', 5, 'Low Stock', 10),
(27, 'Windshield Wiper Motor', 'Honda Brio', 7, 'Out of Stock', 15),
(28, 'Fuel Injector', 'Toyota Hilux Revo', 4, 'In Stock', 5),
(29, 'Ignition Switch', 'Mitsubishi L300 FB', 2, 'In Stock', 2),
(30, 'Radiator Hose (Upper)', 'Nissan Almera (2013-2019)', 1, 'In Stock', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`shop_id`, `shop_name`, `location`, `contact_number`) VALUES
(1, 'Banawe Auto Surplus', 'Quezon City', '0917-123-4567'),
(2, 'Evangelista Parts Center', 'Makati City', '0918-987-6543'),
(3, 'Laguna Car Parts Hub', 'Santa Rosa', '0915-555-6666'),
(4, 'Blumentritt Auto Supply', 'Manila', '0999-333-4444'),
(5, 'Capalangan Motorworks', 'Apalit, Pampanga', '0920-111-2222'),
(6, 'Southside Auto Hub', 'Biñan, Laguna', '0917-111-0001'),
(7, 'Pasig Gearhead Supply', 'Pasig City', '0918-222-0002'),
(8, 'Cebu Auto Parts Center', 'Mandaue City, Cebu', '0919-333-0003'),
(9, 'Davao Motorworks', 'Davao City', '0920-444-0004'),
(10, 'Calamba Surplus Depot', 'Calamba, Laguna', '0921-555-0005'),
(11, 'QC Performance Parts', 'Quezon City', '0922-666-0006'),
(12, 'Makati Euro Parts', 'Makati City', '0923-777-0007'),
(13, 'Cabuyao Auto Supply', 'Cabuyao, Laguna', '0924-888-0008'),
(14, 'Taft Avenue Spares', 'Manila', '0925-999-0009'),
(15, 'Alabang Drive Auto', 'Muntinlupa City', '0926-000-0010'),
(16, 'Cavite Auto Center', 'Bacoor, Cavite', '0917-121-0011'),
(17, 'Pampanga JDM Hub', 'San Fernando, Pampanga', '0918-232-0012'),
(18, 'Baguio Mountain Spares', 'Baguio City', '0919-343-0013'),
(19, 'Iloilo Auto Traders', 'Iloilo City', '0920-454-0014'),
(20, 'Batangas Racing Supply', 'Lipa, Batangas', '0921-565-0015'),
(21, 'Antipolo Motor Parts', 'Antipolo, Rizal', '0922-676-0016'),
(22, 'Valenzuela Heavy Parts', 'Valenzuela City', '0923-787-0017'),
(23, 'Mandaluyong AutoFix', 'Mandaluyong City', '0924-898-0018'),
(24, 'Las Piñas Surplus', 'Las Piñas City', '0925-909-0019'),
(25, 'Marikina Rubber & Parts', 'Marikina City', '0926-010-0020'),
(26, 'Taguig Auto Source', 'Taguig City', '0917-131-0021'),
(27, 'Bulacan Truck & Auto', 'Malolos, Bulacan', '0918-242-0022'),
(28, 'Naga Bicol Spares', 'Naga City', '0919-353-0023'),
(29, 'CDO Motor Hub', 'Cagayan de Oro', '0920-464-0024'),
(30, 'Zamboanga Auto Sales', 'Zamboanga City', '0921-575-0025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `part_id` (`part_id`);

--
-- Indexes for table `labor_estimates`
--
ALTER TABLE `labor_estimates`
  ADD PRIMARY KEY (`estimate_id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`part_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `labor_estimates`
--
ALTER TABLE `labor_estimates`
  MODIFY `estimate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`shop_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`part_id`) REFERENCES `parts` (`part_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
