-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 05:44 AM
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
-- Database: `kelompok2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `name`, `password`) VALUES
(1, 'danis', 'orangaring'),
(2, 'faiz', 'faizJnich'),
(3, 'syahir', 'changliQ'),
(4, 'ammar', 'A9?');

-- --------------------------------------------------------

--
-- Table structure for table `clicks`
--

CREATE TABLE `clicks` (
  `click_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `link_id` int(11) DEFAULT NULL,
  `click_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clicks`
--

INSERT INTO `clicks` (`click_id`, `user_id`, `link_id`, `click_time`) VALUES
(1, 19, 9, '2024-02-10 19:37:27'),
(2, 29, 4, '2024-06-02 23:44:04'),
(3, 18, 7, '2023-12-28 21:26:43'),
(4, 10, 4, '2023-08-23 08:24:04'),
(5, 23, 9, '2024-01-08 10:07:01'),
(6, 43, 4, '2023-10-08 03:26:08'),
(7, 48, 9, '2023-10-07 08:06:59'),
(8, 24, 1, '2024-03-23 07:22:16'),
(9, 18, 8, '2023-12-30 22:21:32'),
(10, 23, 7, '2023-12-05 19:30:18'),
(11, 33, 3, '2023-07-08 03:28:34'),
(12, 1, 8, '2023-11-08 06:56:15'),
(13, 30, 5, '2023-09-01 19:41:41'),
(14, 9, 4, '2023-06-16 07:07:45'),
(15, 9, 8, '2023-09-09 16:10:29'),
(16, 31, 10, '2023-07-19 13:06:35'),
(17, 47, 1, '2024-01-15 02:50:54'),
(18, 34, 8, '2023-12-31 20:03:11'),
(19, 15, 1, '2023-08-03 12:57:09'),
(20, 48, 10, '2023-06-25 22:36:46'),
(21, 32, 4, '2024-02-27 22:17:15'),
(22, 28, 7, '2024-04-02 18:35:40'),
(23, 36, 2, '2024-01-05 00:15:23'),
(24, 16, 3, '2023-08-09 16:54:47'),
(25, 24, 5, '2023-11-03 01:17:19'),
(26, 48, 7, '2023-12-29 08:46:31'),
(27, 9, 5, '2023-08-30 08:55:24'),
(28, 14, 9, '2023-07-19 05:24:05'),
(29, 13, 9, '2023-06-18 06:57:36'),
(30, 7, 8, '2023-10-13 05:55:19'),
(31, 5, 4, '2023-07-16 07:32:51'),
(32, 22, 2, '2023-07-10 14:31:56'),
(33, 38, 3, '2024-04-17 21:42:23'),
(34, 11, 2, '2023-11-21 01:25:55'),
(35, 9, 8, '2023-06-18 17:00:35'),
(36, 7, 9, '2023-07-22 23:58:41'),
(37, 16, 8, '2023-08-14 23:59:15'),
(38, 24, 10, '2023-06-13 13:59:44'),
(39, 17, 5, '2024-03-19 03:50:34'),
(40, 4, 8, '2024-01-03 01:47:48'),
(41, 19, 6, '2024-04-01 09:26:54'),
(42, 44, 7, '2023-11-28 02:21:58'),
(43, 40, 5, '2023-08-22 11:32:46'),
(44, 18, 10, '2024-01-25 02:12:50'),
(45, 20, 1, '2023-11-27 17:45:54'),
(46, 10, 3, '2023-10-17 03:02:20'),
(47, 32, 2, '2024-04-15 11:03:49'),
(48, 37, 8, '2023-08-14 03:23:01'),
(49, 17, 1, '2023-09-08 22:49:10'),
(50, 38, 5, '2023-10-23 09:00:36'),
(51, 41, 2, '2024-02-23 22:30:57'),
(52, 14, 6, '2024-01-22 16:54:36'),
(53, 7, 1, '2024-03-18 14:08:39'),
(54, 39, 8, '2024-02-05 12:45:08'),
(55, 20, 6, '2023-10-06 20:34:00'),
(56, 31, 4, '2024-01-05 05:49:16'),
(57, 41, 6, '2023-09-18 03:32:31'),
(58, 2, 6, '2023-11-09 21:39:14'),
(59, 25, 8, '2024-06-05 11:34:54'),
(60, 35, 10, '2024-03-24 07:53:33'),
(61, 41, 5, '2024-05-13 19:36:09'),
(62, 40, 4, '2023-07-31 14:02:40'),
(63, 45, 4, '2024-01-05 17:02:08'),
(64, 33, 8, '2023-06-29 08:45:40'),
(65, 21, 7, '2023-11-26 06:12:49'),
(66, 44, 4, '2023-07-20 11:38:34'),
(67, 32, 10, '2023-07-30 10:36:12'),
(68, 14, 4, '2024-05-19 16:29:14'),
(69, 47, 5, '2024-04-21 11:16:53'),
(70, 27, 10, '2023-07-21 16:06:37'),
(71, 43, 6, '2023-12-09 08:45:59'),
(72, 3, 3, '2023-11-08 18:40:29'),
(73, 42, 3, '2023-12-01 20:03:05'),
(74, 13, 7, '2023-10-20 03:45:55'),
(75, 5, 5, '2024-01-17 23:41:41'),
(76, 36, 4, '2023-12-17 21:34:47'),
(77, 18, 9, '2024-02-24 03:33:30'),
(78, 23, 1, '2024-04-10 15:26:39'),
(79, 26, 2, '2023-06-23 08:37:51'),
(80, 3, 6, '2024-04-22 02:31:35'),
(81, 19, 1, '2023-12-17 09:37:35'),
(82, 37, 1, '2023-12-10 13:36:33'),
(83, 35, 5, '2023-11-28 10:28:32'),
(84, 27, 7, '2024-01-06 17:41:32'),
(85, 31, 9, '2024-03-26 10:13:53'),
(86, 27, 7, '2024-03-11 23:00:11'),
(87, 6, 9, '2024-02-09 04:59:52'),
(88, 1, 7, '2023-09-16 23:36:50'),
(89, 40, 3, '2024-01-14 20:12:11'),
(90, 32, 6, '2024-03-03 10:07:21'),
(91, 29, 7, '2023-07-17 15:55:45'),
(92, 30, 10, '2023-10-20 12:59:08'),
(93, 4, 5, '2024-06-01 05:19:57'),
(94, 7, 3, '2024-01-12 05:34:20'),
(95, 31, 1, '2024-02-08 02:44:56'),
(96, 28, 10, '2023-06-21 17:15:03'),
(97, 37, 3, '2023-10-13 22:48:28'),
(98, 38, 2, '2023-09-19 08:51:24'),
(99, 13, 2, '2023-10-08 22:53:08'),
(100, 15, 7, '2024-05-22 17:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `drivers2022`
--

CREATE TABLE `drivers2022` (
  `id_driver` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `driver` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `pts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers2022`
--

INSERT INTO `drivers2022` (`id_driver`, `pos`, `driver`, `nationality`, `car`, `pts`) VALUES
(1, 1, 'Max Verstappen', 'NED', 'RED BULL RACING RBPT', 454),
(2, 2, 'Charles Leclerc', 'MON', 'FERRARI', 308),
(3, 3, 'Sergio Perez', 'MEX', 'RED BULL RACING RBPT', 305),
(4, 4, 'George Russell', 'GBR', 'MERCEDES', 275),
(5, 5, 'Carlos Sainz', 'ESP', 'FERRARI', 246),
(6, 6, 'Lewis Hamilton', 'GBR', 'MERCEDES', 240),
(7, 7, 'Lando Norris', 'GBR', 'MCLAREN MERCEDES', 122),
(8, 8, 'Esteban Ocon', 'FRA', 'ALPINE RENAULT', 92),
(9, 9, 'Fernando Alonso', 'ESP', 'ALPINE RENAULT', 81),
(10, 10, 'Valtteri Bottas', 'FIN', 'ALFA ROMEO FERRARI', 49),
(11, 11, 'Daniel Ricciardo', 'AUS', 'MCLAREN MERCEDES', 37),
(12, 12, 'Sebastian Vettel', 'GER', 'ASTON MARTIN ARAMCO MERCEDES', 37),
(13, 13, 'Kevin Magnussen', 'DEN', 'HAAS FERRARI', 25),
(14, 14, 'Pierre Gasly', 'FRA', 'ALPHATAURI RBPT', 23),
(15, 15, 'Lance Stroll', 'CAN', 'ASTON MARTIN ARAMCO MERCEDES', 18),
(16, 16, 'Mick Schumacher', 'GER', 'HAAS FERRARI', 12),
(17, 17, 'Yuki Tsunoda', 'JPN', 'ALPHATAURI RBPT', 12),
(18, 18, 'Zhou Guanyu', 'CHN', 'ALFA ROMEO FERRARI', 6),
(19, 19, 'Alexander Albon', 'THA', 'WILLIAMS MERCEDES', 4),
(20, 20, 'Nicholas Latifi', 'CAN', 'WILLIAMS MERCEDES', 2),
(21, 21, 'Nyck De Vries', 'NED', 'WILLIAMS MERCEDES', 2),
(22, 22, 'Nico Hulkenberg', 'GER', 'ASTON MARTIN ARAMCO MERCEDES', 0);

-- --------------------------------------------------------

--
-- Table structure for table `drivers2023`
--

CREATE TABLE `drivers2023` (
  `id_driver` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `driver` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `pts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers2023`
--

INSERT INTO `drivers2023` (`id_driver`, `pos`, `driver`, `nationality`, `car`, `pts`) VALUES
(1, 1, 'Max Verstappen', 'NED', 'RED BULL RACING RBPT', 575),
(2, 2, 'Sergio Perez', 'MEX', 'RED BULL RACING RBPT', 285),
(3, 3, 'Lewis Hamilton', 'GBR', 'MERCEDES', 234),
(4, 4, 'Fernando Alonso', 'ESP', 'ASTON MARTIN ARAMCO MERCEDES', 206),
(5, 5, 'Charles Leclerc', 'MON', 'FERRARI', 206),
(6, 6, 'Lando Norris', 'GBR', 'MCLAREN MERCEDES', 205),
(7, 7, 'Carlos Sainz', 'ESP', 'FERRARI', 200),
(8, 8, 'George Russell', 'GBR', 'MERCEDES', 175),
(9, 9, 'Oscar Piastri', 'AUS', 'MCLAREN MERCEDES', 97),
(10, 10, 'Lance Stroll', 'CAN', 'ASTON MARTIN ARAMCO MERCEDES', 74),
(11, 11, 'Pierre Gasly', 'FRA', 'ALPINE RENAULT', 62),
(12, 12, 'Esteban Ocon', 'FRA', 'ALPINE RENAULT', 58),
(13, 13, 'Alexander Albon', 'THA', 'WILLIAMS MERCEDES', 27),
(14, 14, 'Yuki Tsunoda', 'JPN', 'ALPHATAURI HONDA RBPT', 17),
(15, 15, 'Valtteri Bottas', 'FIN', 'ALFA ROMEO FERRARI', 10),
(16, 16, 'Nico Hulkenberg', 'GER', 'HAAS FERRARI', 9),
(17, 17, 'Daniel Ricciardo', 'AUS', 'ALPHATAURI HONDA RBPT', 6),
(18, 18, 'Zhou Guanyu', 'CHN', 'ALFA ROMEO FERRARI', 6),
(19, 19, 'Kevin Magnussen', 'DEN', 'HAAS FERRARI', 3),
(20, 20, 'Liam Lawson', 'NZL', 'ALPHATAURI HONDA RBPT', 2),
(21, 21, 'Logan Sargeant', 'USA', 'WILLIAMS MERCEDES', 1),
(22, 22, 'Nyck De Vries', 'NED', 'ALPHATAURI HONDA RBPT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `link_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `commission_rate` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `link`, `commission_rate`) VALUES
(1, 'https://logan.com/', 14.59),
(2, 'https://gonzalez-smith.com/', 16.24),
(3, 'https://douglas.info/', 11.25),
(4, 'https://www.hernandez-jacobson.com/', 13.39),
(5, 'https://www.wright-watts.biz/', 19.64),
(6, 'https://www.rogers-briggs.org/', 3.69),
(7, 'https://www.frederick-palmer.info/', 8.25),
(8, 'https://www.williamson.net/', 5.04),
(9, 'https://www.delgado.info/', 10.66),
(10, 'https://www.chavez-brown.com/', 16.86);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `click_id` int(11) DEFAULT NULL,
  `receipt_num` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('pending','completed','cancelled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `click_id`, `receipt_num`, `amount`, `status`) VALUES
(1, 2, '8094cc25-154f-490d-b7bb-905a6dde308e', 57.33, 'completed'),
(2, 3, 'e9c3fb2d-7ce3-424c-9582-61a66cf32196', 418.33, 'pending'),
(3, 4, 'e8f64707-0c8a-476a-9a58-c214f3463bf7', 36.09, 'completed'),
(4, 6, '36597404-a318-485b-b311-f111b8a6d460', 257.57, 'cancelled'),
(5, 8, 'e6840e81-5345-4df7-917a-b1a979a0a045', 298.73, 'completed'),
(6, 9, '24105c5d-ccfb-4f03-948a-5de80d4e4d4f', 259.01, 'cancelled'),
(7, 13, 'fb434c90-507a-4b57-ae4c-1f29bff94b9f', 150.21, 'pending'),
(8, 16, '6934e88e-464f-4e91-b1e1-ca580e16c97e', 435.68, 'pending'),
(9, 19, '4cea4d2f-e5a8-4c8d-8096-f13ed0d73225', 480.31, 'cancelled'),
(10, 21, '57188cc5-5bd5-49b0-87d9-51478d3c48dd', 83.54, 'pending'),
(11, 22, 'a68df9a1-72bf-45ae-8b61-4ac4103a0213', 396.65, 'completed'),
(12, 26, 'eea69110-9d5c-4206-a16c-6b121b674c09', 268.86, 'cancelled'),
(13, 29, '5aa742ee-7a34-4345-b341-6296d873901d', 264.22, 'completed'),
(14, 30, '69a89d8a-ea69-479e-b28a-eedbfe9aa140', 226.90, 'cancelled'),
(15, 31, 'cefab5d6-b24b-4f36-b037-137ddcecef1a', 329.49, 'completed'),
(16, 32, 'f2165879-38a7-4b94-99d2-bff94ee721b3', 463.91, 'completed'),
(17, 33, 'af7fa1d2-ed13-4ad9-b099-897a9d615110', 207.56, 'completed'),
(18, 34, '4fb4efe3-8820-4385-ae2a-582301d713a1', 90.61, 'completed'),
(19, 36, '407ed828-a06f-4dff-b7bf-06920a629c4d', 49.52, 'cancelled'),
(20, 41, '3cd5b17d-c0b5-43af-b260-9e85218b9f56', 335.61, 'cancelled'),
(21, 42, '34867831-7abb-4165-aae9-6a2742e01086', 32.45, 'completed'),
(22, 43, 'd6ca1ee8-c2fa-476a-bc5d-7dbe9744190a', 209.64, 'cancelled'),
(23, 46, '3b598920-08ba-489b-a617-26668c8e4e82', 188.86, 'cancelled'),
(24, 47, 'c384762e-4dbf-4471-8b47-daea688fd0ce', 199.68, 'pending'),
(25, 48, 'f1334605-a9ba-47ea-afb7-3740bf007a02', 115.54, 'pending'),
(26, 50, 'cf890a45-d79f-4541-b654-712de2c51664', 112.77, 'completed'),
(27, 54, '4acb556e-27cd-4521-a008-11c19e08c544', 123.30, 'cancelled'),
(28, 56, '54a08ccc-6f18-4171-bb58-a4717269b8a7', 450.18, 'completed'),
(29, 58, 'c7d60e01-3fef-4c11-a62e-ae80b880d04b', 380.38, 'cancelled'),
(30, 59, 'c0b2a386-6c69-48f7-befe-4fc5c413a5dc', 281.02, 'completed'),
(31, 63, '670fb9af-04eb-483e-8766-bf173e63996f', 291.83, 'cancelled'),
(32, 64, '9f838c49-165d-4dfb-8ce5-ad584680e4b3', 441.10, 'completed'),
(33, 65, 'a29e11b2-cbe1-4ea9-956d-553361017c88', 315.76, 'pending'),
(34, 66, 'a087a40e-b7a5-4189-ab23-6d8b76703a89', 335.77, 'pending'),
(35, 67, 'd8124047-863f-4b92-aa14-3cfbf47ff2f3', 495.91, 'pending'),
(36, 69, '02754fff-d621-4e60-ac38-0077bf8012c5', 282.89, 'pending'),
(37, 70, 'a4b51b4e-580d-41ef-892f-f7ad5f1864f5', 155.47, 'completed'),
(38, 73, '356241e9-924e-4dc5-8777-8e1847354a93', 192.65, 'completed'),
(39, 76, '41103e27-7ed1-4277-bb55-4c4f126e2a16', 153.71, 'cancelled'),
(40, 77, 'fbd034a3-e5dd-48db-864e-6eaa58bb5f6d', 382.80, 'cancelled'),
(41, 78, 'c1c21c50-bad4-4c17-ace2-779f21d23f1f', 276.65, 'completed'),
(42, 82, 'c40388fe-1fb3-4062-b7a9-fd173f14d0ee', 394.17, 'completed'),
(43, 83, 'e27f27b3-dc94-48b6-91e3-0e0df7faf266', 306.51, 'cancelled'),
(44, 85, 'bc5fbc44-e822-45c4-af95-22136bb17332', 439.78, 'pending'),
(45, 86, 'c9f73502-c8a0-487c-aa9c-e6501c0439fc', 435.30, 'pending'),
(46, 87, 'ad12e8a3-6b6b-433a-b679-ad6efb1e2f3a', 224.83, 'pending'),
(47, 91, '39f33525-600f-4e4a-97f5-48e2b8d58cfb', 289.70, 'pending'),
(48, 93, 'a21d664a-5d52-4d65-b0b3-15bddbc50b96', 270.23, 'pending'),
(49, 94, '476a6206-ddc3-4c88-922a-03c601065e03', 400.66, 'cancelled'),
(50, 98, 'af3a3f30-1111-4ff0-8de8-4af41075b6b5', 26.79, 'cancelled'),
(51, 100, '591fe1a8-4713-4497-8f12-678d55c8c17f', 315.02, 'cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `races2022`
--

CREATE TABLE `races2022` (
  `id_race` int(11) NOT NULL,
  `grand_prix` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `winner` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `laps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `races2022`
--

INSERT INTO `races2022` (`id_race`, `grand_prix`, `date`, `winner`, `car`, `laps`) VALUES
(1, 'Bahrain', '2022-03-20', 'Charles Leclerc', 'FERRARI', 57),
(2, 'Saudi Arabia', '2022-03-27', 'Max Verstappen', 'RED BULL RACING RBPT', 50),
(3, 'Australia', '2022-04-10', 'Charles Leclerc', 'FERRARI', 58),
(4, 'Emilia Romagna', '2022-04-24', 'Max Verstappen', 'RED BULL RACING RBPT', 63),
(5, 'Miami', '2022-05-08', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 57),
(6, 'Spain', '2022-05-22', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 66),
(7, 'Monaco', '2022-05-29', 'Sergio Perez', 'RED BULL RACING HONDA RBPT', 64),
(8, 'Azerbaijan', '2022-06-12', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 51),
(9, 'Canada', '2022-06-19', 'Max Verstappen', 'RED BULL RACING RBPT', 70),
(10, 'Great Britain', '2022-07-03', 'Carlos Sainz', 'FERRARI', 52),
(11, 'Austria', '2022-07-10', 'Charles Leclerc', 'FERRARI', 71),
(12, 'France', '2022-07-24', 'Max Verstappen', 'RED BULL RACING RBPT', 53),
(13, 'Hungary', '2022-07-31', 'Max Verstappen', 'RED BULL RACING RBPT', 70),
(14, 'Belgium', '2022-08-28', 'Max Verstappen', 'RED BULL RACING RBPT', 44),
(15, 'Netherlands', '2022-09-04', 'Max Verstappen', 'RED BULL RACING RBPT', 72),
(16, 'Italy', '2022-09-11', 'Max Verstappen', 'RED BULL RACING RBPT', 53),
(17, 'Singapore', '2022-10-02', 'Sergio Perez', 'RED BULL RACING RBPT', 59),
(18, 'Japan', '2022-10-09', 'Max Verstappen', 'RED BULL RACING RBPT', 28),
(19, 'United States', '2022-10-23', 'Max Verstappen', 'RED BULL RACING RBPT', 56),
(20, 'Mexico', '2022-10-30', 'Max Verstappen', 'RED BULL RACING RBPT', 71),
(21, 'Brazil', '2022-11-13', 'George Russell', 'MERCEDES', 71),
(22, 'Abu Dhabi', '2022-11-20', 'Max Verstappen', 'RED BULL RACING RBPT', 58);

-- --------------------------------------------------------

--
-- Table structure for table `races2023`
--

CREATE TABLE `races2023` (
  `id_race` int(11) NOT NULL,
  `grand_prix` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `winner` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `laps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `races2023`
--

INSERT INTO `races2023` (`id_race`, `grand_prix`, `date`, `winner`, `car`, `laps`) VALUES
(1, 'Bahrain', '2023-03-05', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 57),
(2, 'Saudi Arabia', '2023-03-19', 'Sergio Perez', 'RED BULL RACING HONDA RBPT', 50),
(3, 'Australia', '2023-04-02', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 58),
(4, 'Azerbaijan', '2023-04-30', 'Sergio Perez', 'RED BULL RACING HONDA RBPT', 51),
(5, 'Miami', '2023-05-07', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 57),
(6, 'Monaco', '2023-05-28', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 78),
(7, 'Spain', '2023-06-04', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 66),
(8, 'Canada', '2023-06-18', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 70),
(14, 'Austria', '2023-07-02', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 71),
(15, 'Great Britain', '2023-07-09', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 52),
(16, 'Hungary', '2023-07-23', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 70),
(17, 'Belgium', '2023-07-30', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 44),
(18, 'Netherlands', '2023-08-27', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 72),
(19, 'Italy', '2023-09-03', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 51),
(20, 'Singapore', '2023-09-17', 'Carlos Sainz', 'FERRARI', 62),
(21, 'Japan', '2023-09-24', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 53),
(22, 'Qatar', '2023-10-08', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 57),
(23, 'United States', '2023-10-22', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 56),
(24, 'Mexico', '2023-10-29', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 71),
(25, 'Brazil', '2023-11-05', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 71),
(26, 'Las Vegas', '2023-11-18', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 50),
(27, 'Abu Dhabi', '2023-11-26', 'Max Verstappen', 'RED BULL RACING HONDA RBPT', 58);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `sale_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `order_id`, `sale_time`) VALUES
(1, 1, '2024-06-02 08:06:24'),
(2, 3, '2023-12-13 14:25:07'),
(3, 5, '2024-03-28 13:59:42'),
(4, 11, '2024-05-19 22:35:37'),
(5, 13, '2023-11-28 11:25:11'),
(6, 15, '2023-12-06 03:36:35'),
(7, 16, '2024-03-20 17:42:01'),
(8, 17, '2023-11-03 16:06:50'),
(9, 18, '2023-10-08 01:50:53'),
(10, 21, '2024-02-11 06:07:00'),
(11, 26, '2023-12-25 19:47:03'),
(12, 28, '2023-08-09 21:00:21'),
(13, 30, '2024-01-19 08:42:34'),
(14, 32, '2024-02-13 09:28:02'),
(15, 37, '2024-04-06 09:28:38'),
(16, 38, '2023-12-06 17:15:52'),
(17, 41, '2023-09-17 05:58:27'),
(18, 42, '2024-01-15 08:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `teams2022`
--

CREATE TABLE `teams2022` (
  `id_team` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `team` varchar(255) NOT NULL,
  `pts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams2022`
--

INSERT INTO `teams2022` (`id_team`, `pos`, `team`, `pts`) VALUES
(1, 1, 'RED BULL RACING RBPT', 759),
(2, 2, 'FERRARI', 554),
(3, 3, 'MERCEDES', 515),
(4, 4, 'ALPINE RENAULT', 173),
(5, 5, 'MCLAREN MERCEDES', 159),
(6, 6, 'ALFA ROMEO FERRARI', 55),
(7, 7, 'ASTON MARTIN ARAMCO MERCEDES', 55),
(8, 8, 'HAAS FERRARI', 37),
(9, 9, 'ALPHATAURI RBPT', 35),
(10, 10, 'WILLIAMS MERCEDES', 8);

-- --------------------------------------------------------

--
-- Table structure for table `teams2023`
--

CREATE TABLE `teams2023` (
  `id_team` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `team` varchar(255) NOT NULL,
  `pts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams2023`
--

INSERT INTO `teams2023` (`id_team`, `pos`, `team`, `pts`) VALUES
(1, 1, 'RED BULL RACING RBPT', 860),
(2, 2, 'MERCEDES', 409),
(3, 3, 'FERRARI', 406),
(4, 4, 'MCLAREN MERCEDES', 302),
(5, 5, 'ASTON MARTIN ARAMCO MERCEDES', 280),
(6, 6, 'ALPINE RENAULT', 120),
(7, 7, 'WILLIAMS MERCEDES', 28),
(8, 8, 'ALPHATAURI HONDA RBPT', 25),
(9, 9, 'ALFA ROMEO FERRARI', 16),
(10, 10, 'HAAS FERRARI', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(1, 'Kelly Rivera', 'kelly.rivera@gmail.com', 'MH8IbgCwl)'),
(2, 'Edward Boyd', 'edward.boyd@gmail.com', ')5#LJmmR&x'),
(3, 'Trevor Hogan', 'trevor.hogan@hotmail.com', '@96$IWQsOX'),
(4, 'Heather Hernandez', 'heather.hernandez@aol.com', '_62Ig@NvRr'),
(5, 'Randy Clark', 'randy.clark@hotmail.com', '98$AQ6!x#b'),
(6, 'Hannah Barry', 'hannah.barry@hotmail.com', '!h72bTAyqi'),
(7, 'Alicia Sullivan', 'alicia.sullivan@hotmail.com', 'xE8RUmC&I_'),
(8, 'Diane Peters', 'diane.peters@hotmail.com', 'o6Qocgi8+w'),
(9, 'Jesus Duran', 'jesus.duran@yahoo.com', '%NWGxJm30C'),
(10, 'Susan Curry', 'susan.curry@aol.com', '3kCz4eGp)@'),
(11, 'Erica Pope', 'erica.pope@yahoo.com', '*)9Hy$lOG2'),
(12, 'Laurie Garza', 'laurie.garza@yahoo.com', 'rzX8LkJoi^'),
(13, 'Manuel Gilbert', 'manuel.gilbert@aol.com', 'e8rmLf&^(5'),
(14, 'Teresa Hanson', 'teresa.hanson@aol.com', '*5Wo@SLo@4'),
(15, 'Peggy Decker', 'peggy.decker@gmail.com', 'WU5M1BgyT@'),
(16, 'Dr. Nancy Key', 'dr..key@hotmail.com', '_2)0UwdrbU'),
(17, 'Richard Griffin', 'richard.griffin@gmail.com', '8)Bx2YUg79'),
(18, 'Michael Howell', 'michael.howell@aol.com', 'C$_3QPYrxI'),
(19, 'Carrie Brown', 'carrie.brown@aol.com', 'W4HgAwmo_3'),
(20, 'Courtney Harris', 'courtney.harris@gmail.com', 'm4ugPMSr&B'),
(21, 'Karina Valdez', 'karina.valdez@aol.com', '%2dJWWgZ*E'),
(22, 'Alan Park', 'alan.park@hotmail.com', 'n+2CcE$dF)'),
(23, 'Keith Jimenez', 'keith.jimenez@gmail.com', 'I&0ITc&e_b'),
(24, 'Jason Booker', 'jason.booker@hotmail.com', '^$i7sNZlC#'),
(25, 'Whitney Taylor', 'whitney.taylor@gmail.com', 'v&8ARlJ@lS'),
(26, 'Katherine Torres', 'katherine.torres@gmail.com', '*383_cRvYm'),
(27, 'Angela Hodge', 'angela.hodge@hotmail.com', '@(9Pi+Vql*'),
(28, 'Javier Davis', 'javier.davis@hotmail.com', '%46VvWrO&&'),
(29, 'Michael Vincent', 'michael.vincent@aol.com', 'tzkA8U&b&6'),
(30, 'Jerry Jones', 'jerry.jones@aol.com', 'n6PDIdma#G'),
(31, 'Brandi Schmidt', 'brandi.schmidt@yahoo.com', 'u4qOMosR#t'),
(32, 'Lori Harrison', 'lori.harrison@gmail.com', '^DKPpiDu+7'),
(33, 'Lauren Edwards', 'lauren.edwards@gmail.com', '#H_3M2omr@'),
(34, 'Timothy Moore', 'timothy.moore@hotmail.com', 'E!2UKxQ*_z'),
(35, 'Hannah Gonzales', 'hannah.gonzales@hotmail.com', '@04DLl9zcC'),
(36, 'Patricia Hernandez', 'patricia.hernandez@hotmail.com', '7#p25dBsMR'),
(37, 'Hannah Armstrong', 'hannah.armstrong@yahoo.com', '&tJERGG*8k'),
(38, 'Cindy Ruiz', 'cindy.ruiz@gmail.com', '8Y4DSfOv$U'),
(39, 'Trevor Garcia', 'trevor.garcia@aol.com', '2n^7VZrcM!'),
(40, 'Amanda Jones', 'amanda.jones@yahoo.com', '^QU2lGi4P$'),
(41, 'Nathan Pruitt', 'nathan.pruitt@yahoo.com', '5_5N^kxGne'),
(42, 'Jennifer Nichols', 'jennifer.nichols@hotmail.com', 'G169PSsuo@'),
(43, 'Ricky Meyers', 'ricky.meyers@aol.com', '1rHkSUOp)D'),
(44, 'Kayla Pratt', 'kayla.pratt@gmail.com', 'G8br(a7O$k'),
(45, 'Kim Wilkerson', 'kim.wilkerson@gmail.com', 'NaL7Nkw4)V'),
(46, 'Sharon Harris', 'sharon.harris@yahoo.com', 'e^2K%9E*Pv'),
(47, 'Holly Barry', 'holly.barry@aol.com', 'j*0WjvGyVF'),
(48, 'Frank Taylor', 'frank.taylor@aol.com', 'Ma3HWix+%)'),
(49, 'Michael Jimenez', 'michael.jimenez@aol.com', 'IR1A!Jw)0#'),
(50, 'Jacqueline Robinson', 'jacqueline.robinson@yahoo.com', '^6fwiO@Zb3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `clicks`
--
ALTER TABLE `clicks`
  ADD PRIMARY KEY (`click_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `link_id` (`link_id`);

--
-- Indexes for table `drivers2022`
--
ALTER TABLE `drivers2022`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indexes for table `drivers2023`
--
ALTER TABLE `drivers2023`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `click_id` (`click_id`);

--
-- Indexes for table `races2022`
--
ALTER TABLE `races2022`
  ADD PRIMARY KEY (`id_race`);

--
-- Indexes for table `races2023`
--
ALTER TABLE `races2023`
  ADD PRIMARY KEY (`id_race`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `teams2022`
--
ALTER TABLE `teams2022`
  ADD PRIMARY KEY (`id_team`);

--
-- Indexes for table `teams2023`
--
ALTER TABLE `teams2023`
  ADD PRIMARY KEY (`id_team`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clicks`
--
ALTER TABLE `clicks`
  MODIFY `click_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `drivers2023`
--
ALTER TABLE `drivers2023`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `races2022`
--
ALTER TABLE `races2022`
  MODIFY `id_race` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `races2023`
--
ALTER TABLE `races2023`
  MODIFY `id_race` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teams2023`
--
ALTER TABLE `teams2023`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clicks`
--
ALTER TABLE `clicks`
  ADD CONSTRAINT `clicks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `clicks_ibfk_2` FOREIGN KEY (`link_id`) REFERENCES `links` (`link_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`click_id`) REFERENCES `clicks` (`click_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
