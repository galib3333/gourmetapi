-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2023 at 06:26 AM
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
-- Database: `restaurant2`
--

-- --------------------------------------------------------

--
-- Table structure for table `breakfast`
--

CREATE TABLE `breakfast` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `imageSrc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breakfast`
--

INSERT INTO `breakfast` (`id`, `name`, `price`, `description`, `imageSrc`) VALUES
(1, 'Fluffy Pancakes', 8.99, 'Delicious, fluffy pancakes served with maple syrup and fresh berries.', 'assets/img/Fluffy-Pancakes.jpg'),
(2, 'Veggie Omelette', 9.99, 'A healthy omelette filled with sautéed vegetables and topped with cheese.', 'assets/img/Vegetable-Omelette.jpg'),
(3, 'Crispy Waffles', 7.99, 'Crispy waffles served with whipped cream, chocolate sauce, and strawberries.', 'assets/img/Crispy-Waffles.jpeg'),
(4, 'Cinnamon French Toast', 6.99, 'Slices of bread dipped in cinnamon and egg mixture, toasted to perfection.', 'assets/img/Cinnamon-French-Toast.jpg'),
(5, ' Berry Yogurt Parfait', 5.99, 'Layers of yogurt, granola, and fresh berries topped with honey.', 'assets/img/Berry-Yogurt-Parfait.jpg'),
(6, 'Hearty Breakfast Burrito', 8.49, 'A hearty breakfast burrito with scrambled eggs, sausage, cheese, and salsa.', 'assets/img/Hearty-Breakfast-Burrito.jpg'),
(7, 'Green Smoothie', 5.49, 'A healthy green smoothie made with spinach, banana, and almond milk.', 'assets/img/Green-Smoothie.jpg'),
(8, 'Blueberry Muffins', 3.99, 'Freshly baked blueberry muffins, perfect for a morning treat.', 'assets/img/Blueberry-Muffins.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Breakfast'),
(2, 'Lunch'),
(3, 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount_percentage` decimal(5,2) NOT NULL,
  `expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount_percentage`, `expiration_date`) VALUES
(1, 'TMC99', 15.00, '2023-10-26'),
(2, 'cdn424', 20.00, '2023-10-10'),
(3, 'char53', 25.00, '2023-10-19'),
(4, 'FDF123', 18.00, '2023-10-28'),
(5, 'TM62', 10.00, '2023-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `dinner`
--

CREATE TABLE `dinner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `imageSrc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dinner`
--

INSERT INTO `dinner` (`id`, `name`, `price`, `description`, `imageSrc`) VALUES
(1, 'Spaghetti Bolognese', 12.99, 'Classic Italian pasta dish with savory meat sauce and Parmesan cheese.', 'assets/img/Spaghetti-Bolognese.jpg'),
(2, 'Grilled Salmon Fillet', 15.99, 'Tender grilled salmon fillet served with steamed vegetables and lemon butter sauce.', 'assets/img/Grilled-Salmon-Fillet.jpg'),
(3, 'Chicken Alfredo Pasta', 14.49, 'Creamy Alfredo sauce with grilled chicken and fettuccine pasta.', 'assets/img/Chicken-Alfredo-Pasta.jpg'),
(4, 'Margherita Pizza', 11.99, 'Classic pizza with tomato sauce, fresh mozzarella cheese, basil, and olive oil.', 'assets/img/Margherita-Pizza.jpg'),
(5, 'Steakhouse Ribeye Steak', 19.99, 'Juicy and flavorful ribeye steak cooked to perfection, served with mashed potatoes.', 'assets/img/Steakhouse-Ribeye-Steak.jpg'),
(6, 'Vegetable Stir-Fry', 10.99, 'A medley of fresh vegetables stir-fried with tofu in a savory sauce.', 'assets/img/Vegetable-Stir-Fry.jpg'),
(7, 'Beef Tacos', 8.99, 'Soft tacos filled with seasoned ground beef, lettuce, cheese, and salsa.', 'assets/img/Beef-Tacos.jpg'),
(8, 'Shrimp Scampi', 16.99, 'Succulent shrimp sautéed in garlic and butter, served over linguine pasta.', 'assets/img/Shrimp-Scampi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lunch`
--

CREATE TABLE `lunch` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `imageSrc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lunch`
--

INSERT INTO `lunch` (`id`, `name`, `price`, `description`, `imageSrc`) VALUES
(1, 'Grilled Steak', 19.99, 'Tender and juicy steak, seasoned and grilled to perfection. Served with your choice of side dishes.', 'assets/img/menu-4.jpg'),
(2, 'BBQ Ribs', 16.99, 'Finger-licking good BBQ ribs, slow-cooked to smoky perfection. Comes with coleslaw and cornbread.', 'assets/img/menu-8.jpg'),
(3, 'Bacon-Wrapped Chicken', 14.49, ' Succulent chicken breasts wrapped in crispy bacon and glazed with a sweet and savory sauce.', 'assets/img/menu-1.jpg'),
(4, 'Spicy Buffalo Wings', 10.99, 'Crispy and spicy buffalo wings served with celery sticks and blue cheese dressing.', 'assets/img/menu-5.jpg'),
(5, 'Steak and Shrimp Combo', 22.99, 'The best of both worlds – a juicy steak paired with grilled shrimp and your choice of sides.', 'assets/img/menu-2.jpg'),
(6, 'Beef Stir-Fry', 11.99, ' Sliced beef cooked with mixed vegetables in a savory stir-fry sauce. Served with steamed rice.', 'assets/img/menu-6.jpg'),
(7, 'Sausage Platter', 13.49, 'A variety of sausages, grilled and served with mustard, sauerkraut, and artisan bread.', 'assets/img/menu-3.jpg'),
(8, 'Chicken Chili Pizza', 25.99, 'Succulent chicken breasts wrapped in crispy bacon and glazed with a sweet and savory sauce.', 'assets/img/menu-7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `imageSrc` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `description`, `price`, `imageSrc`, `category_id`, `coupon_id`) VALUES
(1, 'Fluffy Pancakes', 'Delicious, fluffy pancakes served with maple syrup and fresh berries.', 8.99, 'upload/menu/652fd47849933435.jpeg', 1, NULL),
(2, 'Veggie Omelette', 'A healthy omelette filled with sautéed vegetables and topped with cheese.', 9.99, 'upload/menu/652fd492ca76a950.jpeg', 1, NULL),
(3, 'Crispy Waffles', 'Crispy waffles served with whipped cream, chocolate sauce, and strawberries.', 7.99, 'upload/menu/652fd49dc8477165.jpeg', 1, 1),
(4, 'Cinnamon French Toast', 'Slices of bread dipped in cinnamon and egg mixture, toasted to perfection.', 6.99, 'upload/menu/652fd4b721508284.jpeg', 1, NULL),
(5, ' Berry Yogurt Parfait', 'Layers of yogurt, granola, and fresh berries topped with honey.', 5.99, 'upload/menu/652fd4d82d1aa260.jpeg', 1, NULL),
(6, 'Hearty Breakfast Burrito', 'A hearty breakfast burrito with scrambled eggs, sausage, cheese, and salsa.', 8.49, 'upload/menu/652fd4e8089da604.jpeg', 1, 4),
(7, 'Green Smoothie', 'A healthy green smoothie made with spinach, banana, and almond milk.', 5.49, 'upload/menu/652fd4f85aeba501.jpeg', 1, NULL),
(8, 'Blueberry Muffins', 'Freshly baked blueberry muffins, perfect for a morning treat.', 3.99, 'upload/menu/652fd515254b1850.jpeg', 1, NULL),
(9, 'Grilled Steak', 'Tender and juicy steak, seasoned and grilled to perfection. Served with your choice of side dishes.', 19.99, 'upload/menu/652fd54f07670843.jpeg', 2, NULL),
(10, 'BBQ Ribs', 'Finger-licking good BBQ ribs, slow-cooked to smoky perfection. Comes with coleslaw and cornbread.', 16.99, 'upload/menu/652fd55d46333783.jpeg', 2, NULL),
(11, 'Bacon-Wrapped Chicken', ' Succulent chicken breasts wrapped in crispy bacon and glazed with a sweet and savory sauce.', 14.49, 'upload/menu/652fd5756e4df484.jpeg', 2, NULL),
(12, 'Spicy Buffalo Wings', 'Crispy and spicy buffalo wings served with celery sticks and blue cheese dressing.', 10.99, 'upload/menu/652fd5849fb46986.jpeg', 2, NULL),
(13, 'Steak and Shrimp Combo', 'The best of both worlds – a juicy steak paired with grilled shrimp and your choice of sides.', 22.99, 'upload/menu/652fd592656a3643.jpeg', 2, NULL),
(14, 'Beef Stir-Fry', ' Sliced beef cooked with mixed vegetables in a savory stir-fry sauce. Served with steamed rice.', 11.99, 'upload/menu/652fd5ab11631274.jpeg', 2, 5),
(15, 'Sausage Platter', 'A variety of sausages, grilled and served with mustard, sauerkraut, and artisan bread.', 13.49, 'upload/menu/652fd5c4160c0610.jpeg', 2, NULL),
(16, 'Chicken Chili Pizza', 'Succulent chicken breasts wrapped in crispy bacon and glazed with a sweet and savory sauce.', 25.99, 'upload/menu/652fd5ce9c5fa763.jpeg', 2, NULL),
(17, 'Spaghetti Bolognese', 'A classic Italian pasta dish with savory meat sauce and Parmesan cheese.', 12.99, 'upload/menu/652fd5eed51b3731.jpeg', 3, NULL),
(18, 'Grilled Salmon Fillet', 'Tender grilled salmon fillet served with steamed vegetables and lemon butter sauce.', 15.99, 'upload/menu/652fd60c40e82981.jpeg', 3, NULL),
(19, 'Chicken Alfredo Pasta', 'Creamy Alfredo sauce with grilled chicken and fettuccine pasta.', 14.49, 'upload/menu/652fd61bd5ebd829.jpeg', 3, NULL),
(20, 'Margherita Pizza', 'Classic pizza with tomato sauce, fresh mozzarella cheese, basil, and olive oil.', 11.99, 'upload/menu/652fd62725b52772.jpeg', 3, 3),
(21, 'Steakhouse Ribeye Steak', 'Juicy and flavorful ribeye steak cooked to perfection, served with mashed potatoes.', 19.99, 'upload/menu/652fd638a8929734.jpeg', 3, 2),
(22, 'Vegetable Stir-Fry', 'A medley of fresh vegetables stir-fried with tofu in a savory sauce.', 10.99, 'upload/menu/652fd647dad74494.jpeg', 3, NULL),
(23, 'Beef Tacos', 'Soft tacos filled with seasoned ground beef, lettuce, cheese, and salsa.', 8.99, 'upload/menu/652fd97a4b316204.jpeg', 3, NULL),
(25, 'Shrimp Scampi', 'Succulent shrimp sautéed in garlic and butter, served over linguine pasta.', 16.99, 'upload/menu/652fd462e0fb3293.jpeg', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_coupon`
--

CREATE TABLE `menu_item_coupon` (
  `id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-09-22-171425', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1695402987, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `first_name`, `last_name`, `email`, `address`, `items`, `sub_total`, `discount`, `total`, `status`) VALUES
(7, 'arabi dfdf', 'khalil', 'ashkaiser@gmail.com', '2no Gate', 'W3siaWQiOiI2IiwibmFtZSI6IkhlYXJ0eSBCcmVha2Zhc3QgQnVycml0byIsImRlc2NyaXB0aW9uIjoiQSBoZWFydHkgYnJlYWtmYXN0IGJ1cnJpdG8gd2l0aCBzY3JhbWJsZWQgZWdncywgc2F1c2FnZSwgY2hlZXNlLCBhbmQgc2Fsc2EuIiwicHJpY2UiOiI4LjQ5IiwiaW1hZ2VTcmMiOiJ1cGxvYWRcL21lbnVcLzY1MmZkNGU4MDg5ZGE2MDQuanBlZyIsImNhdGVnb3J5X2lkIjoiMSIsImNvdXBvbl9pZCI6IjQiLCJjbmFtZSI6IkJyZWFrZmFzdCIsImRpc2NvdW50X3BlcmNlbnRhZ2UiOiIxOC4wMCIsImNvZGUiOiJGREYxMjMiLCJxdWFudGl0eSI6MSwiaXRlbVRvdGFsIjo4LjQ5fV0=', 8.49, 1.53, 6.96, 'Shipped'),
(17, 'Ibrahim', 'khalil', 'Im@gmail.com', '2no Gate', 'W3siaWQiOiI2IiwibmFtZSI6IkhlYXJ0eSBCcmVha2Zhc3QgQnVycml0byIsImRlc2NyaXB0aW9uIjoiQSBoZWFydHkgYnJlYWtmYXN0IGJ1cnJpdG8gd2l0aCBzY3JhbWJsZWQgZWdncywgc2F1c2FnZSwgY2hlZXNlLCBhbmQgc2Fsc2EuIiwicHJpY2UiOiI4LjQ5IiwiaW1hZ2VTcmMiOiJ1cGxvYWRcL21lbnVcLzY1MmZkNGU4MDg5ZGE2MDQuanBlZyIsImNhdGVnb3J5X2lkIjoiMSIsImNvdXBvbl9pZCI6IjQiLCJjbmFtZSI6IkJyZWFrZmFzdCIsImRpc2NvdW50X3BlcmNlbnRhZ2UiOiIxOC4wMCIsImNvZGUiOiJGREYxMjMiLCJxdWFudGl0eSI6MSwiaXRlbVRvdGFsIjo4LjQ5fSx7ImlkIjoiMyIsIm5hbWUiOiJDcmlzcHkgV2FmZmxlcyIsImRlc2NyaXB0aW9uIjoiQ3Jpc3B5IHdhZmZsZXMgc2VydmVkIHdpdGggd2hpcHBlZCBjcmVhbSwgY2hvY29sYXRlIHNhdWNlLCBhbmQgc3RyYXdiZXJyaWVzLiIsInByaWNlIjoiNy45OSIsImltYWdlU3JjIjoidXBsb2FkXC9tZW51XC82NTJmZDQ5ZGM4NDc3MTY1LmpwZWciLCJjYXRlZ29yeV9pZCI6IjEiLCJjb3Vwb25faWQiOiIxIiwiY25hbWUiOiJCcmVha2Zhc3QiLCJkaXNjb3VudF9wZXJjZW50YWdlIjoiMTUuMDAiLCJjb2RlIjoiVE1DOTkiLCJxdWFudGl0eSI6MSwiaXRlbVRvdGFsIjo3Ljk5fSx7ImlkIjoiNSIsIm5hbWUiOiIgQmVycnkgWW9ndXJ0IFBhcmZhaXQiLCJkZXNjcmlwdGlvbiI6IkxheWVycyBvZiB5b2d1cnQsIGdyYW5vbGEsIGFuZCBmcmVzaCBiZXJyaWVzIHRvcHBlZCB3aXRoIGhvbmV5LiIsInByaWNlIjoiNS45OSIsImltYWdlU3JjIjoidXBsb2FkXC9tZW51XC82NTJmZDRkODJkMWFhMjYwLmpwZWciLCJjYXRlZ29yeV9pZCI6IjEiLCJjb3Vwb25faWQiOm51bGwsImNuYW1lIjoiQnJlYWtmYXN0IiwiZGlzY291bnRfcGVyY2VudGFnZSI6bnVsbCwiY29kZSI6bnVsbCwicXVhbnRpdHkiOjEsIml0ZW1Ub3RhbCI6NS45OX0seyJpZCI6IjIxIiwibmFtZSI6IlN0ZWFraG91c2UgUmliZXllIFN0ZWFrIiwiZGVzY3JpcHRpb24iOiJKdWljeSBhbmQgZmxhdm9yZnVsIHJpYmV5ZSBzdGVhayBjb29rZWQgdG8gcGVyZmVjdGlvbiwgc2VydmVkIHdpdGggbWFzaGVkIHBvdGF0b2VzLiIsInByaWNlIjoiMTkuOTkiLCJpbWFnZVNyYyI6InVwbG9hZFwvbWVudVwvNjUyZmQ2MzhhODkyOTczNC5qcGVnIiwiY2F0ZWdvcnlfaWQiOiIzIiwiY291cG9uX2lkIjoiMiIsImNuYW1lIjoiRGlubmVyIiwiZGlzY291bnRfcGVyY2VudGFnZSI6IjIwLjAwIiwiY29kZSI6ImNkbjQyNCIsInF1YW50aXR5IjoxLCJpdGVtVG90YWwiOjE5Ljk5fV0=', 42.46, 6.72, 35.74, 'Pending'),
(18, 'Ibrahim', 'khalil', 'ashkaiser@gmail.com', '2no Gate', 'W3siaWQiOiI2IiwibmFtZSI6IkhlYXJ0eSBCcmVha2Zhc3QgQnVycml0byIsImRlc2NyaXB0aW9uIjoiQSBoZWFydHkgYnJlYWtmYXN0IGJ1cnJpdG8gd2l0aCBzY3JhbWJsZWQgZWdncywgc2F1c2FnZSwgY2hlZXNlLCBhbmQgc2Fsc2EuIiwicHJpY2UiOiI4LjQ5IiwiaW1hZ2VTcmMiOiJ1cGxvYWRcL21lbnVcLzY1MmZkNGU4MDg5ZGE2MDQuanBlZyIsImNhdGVnb3J5X2lkIjoiMSIsImNvdXBvbl9pZCI6IjQiLCJjbmFtZSI6IkJyZWFrZmFzdCIsImRpc2NvdW50X3BlcmNlbnRhZ2UiOiIxOC4wMCIsImNvZGUiOiJGREYxMjMiLCJxdWFudGl0eSI6MSwiaXRlbVRvdGFsIjo4LjQ5fSx7ImlkIjoiOCIsIm5hbWUiOiJCbHVlYmVycnkgTXVmZmlucyIsImRlc2NyaXB0aW9uIjoiRnJlc2hseSBiYWtlZCBibHVlYmVycnkgbXVmZmlucywgcGVyZmVjdCBmb3IgYSBtb3JuaW5nIHRyZWF0LiIsInByaWNlIjoiMy45OSIsImltYWdlU3JjIjoidXBsb2FkXC9tZW51XC82NTJmZDUxNTI1NGIxODUwLmpwZWciLCJjYXRlZ29yeV9pZCI6IjEiLCJjb3Vwb25faWQiOm51bGwsImNuYW1lIjoiQnJlYWtmYXN0IiwiZGlzY291bnRfcGVyY2VudGFnZSI6bnVsbCwiY29kZSI6bnVsbCwicXVhbnRpdHkiOjEsIml0ZW1Ub3RhbCI6My45OX0seyJpZCI6IjQwIiwibmFtZSI6IkhQIFBDIiwiZGVzY3JpcHRpb24iOiJyZXRlcnRlcnQiLCJwcmljZSI6IjkuNTAiLCJpbWFnZVNyYyI6InVwbG9hZFwvbWVudVwvNjUzNGM5MjM0M2M3NTc5MC5qcGVnIiwiY2F0ZWdvcnlfaWQiOiIyIiwiY291cG9uX2lkIjoiMiIsImNuYW1lIjoiTHVuY2giLCJkaXNjb3VudF9wZXJjZW50YWdlIjoiMjAuMDAiLCJjb2RlIjoiY2RuNDI0IiwicXVhbnRpdHkiOjEsIml0ZW1Ub3RhbCI6OS41fV0=', 21.98, 3.43, 18.55, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `no_of_people` int(11) NOT NULL,
  `special_request` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `name`, `email`, `datetime`, `no_of_people`, `special_request`, `created_at`) VALUES
(2, 'Morgan Freeman', 'morgan@gmail.com', '2023-10-19 22:58:00', 4, 'Lake side view', '2023-10-02 16:58:25'),
(4, 'Rabib Hasan', 'hasan@gmail.com', '2023-10-20 12:07:00', 4, 'Table with a window side view', '2023-10-22 06:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `name`, `description`) VALUES
(1, 'fa fa-3x fa-user-tie', 'Master Chefs', 'Our culinary team is comprised of master chefs who have honed their skills to perfection. With a passion for creativity and a commitment to using the finest ingredients.'),
(2, 'fa fa-3x fa-utensils', 'Quality Food', 'At our restaurant, quality is our top priority. We source the freshest and finest ingredients to ensure that every dish we serve is a testament to exceptional taste and flavor.'),
(3, 'fa fa-3x fa-cart-plus', 'Online Order', 'Convenience meets culinary excellence with our online ordering service. Enjoy our delectable dishes from the comfort of your home or office.'),
(4, 'fa fa-3x fa-headset', '24/7 Service', 'We are at your service around the clock, ready to satisfy your cravings at any hour. Whether it\'s an early morning breakfast, a midnight snack.'),
(5, 'fas fa-wine-glass-alt fa-3x', 'Wine Pairing', 'Elevate your dining experience with our expertly curated wine pairing service. Our sommeliers will guide you through a selection of exquisite wines.'),
(6, 'fas fa-door-closed fa-3x', 'Private Dining\r\n', 'Experience exclusivity and intimacy with our private dining options. Whether it\'s a romantic dinner for two or a corporate gathering.'),
(7, 'fas fa-utensil-spoon fa-3x', 'Catering Services\r\n', 'Let us bring the flavors of our restaurant to your special events. Our catering services offer a range of delectable dishes, professionally prepared and presented to impress your guests.'),
(8, 'fas fa-pizza-slice fa-3x', 'Live Cooking Demonstrations', 'Immerse yourself in the culinary world with our live cooking demonstrations. Our talented chefs will showcase their skills and share cooking tips while preparing delectable dishes right before your eyes.');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `imageSrc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `designation`, `imageSrc`) VALUES
(1, 'John Doe', 'Head Chef', 'assets/img/team-1.jpg'),
(2, 'Jane Smith', 'Sous Chef', 'assets/img/team-2.jpg'),
(3, 'Michael Johnson', 'Pastry Chef', 'assets/img/team-3.jpg'),
(4, 'David Brown', 'Culinary Artist', 'assets/img/team-4.jpg'),
(5, 'Sarah Davis', 'Sous Chef', 'assets/img/team-2.jpg'),
(6, 'Michael Smith', 'Pastry Chef', 'assets/img/team-3.jpg'),
(7, 'Robert Wilson', 'Culinary Artist', 'assets/img/team-4.jpg'),
(8, 'Laura Johnson', 'Head Chef', 'assets/img/team-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `quote` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `imageSrc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `quote`, `name`, `profession`, `imageSrc`) VALUES
(1, 'Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam', 'Client Name 1', 'Profession 1', 'assets/img/testimonial-1.jpg'),
(2, 'Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam', 'Client Name 2', 'Profession 2', 'assets/img/testimonial-2.jpg'),
(3, 'Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam', 'Client Name 3', 'Profession 3', 'assets/img/testimonial-3.jpg'),
(4, 'Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam', 'Client Name 4', 'Profession 4', 'assets/img/testimonial-4.jpg'),
(5, 'Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam', 'Client Name 2', 'Profession 2', 'assets/img/testimonial-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `image`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Asadullah Al Galib', 'galib@gmail.com', '12345', '1697815173881685c7651721a28f3a71b944b7c450e2a', 'upload/user/65329a85a1809164.jpeg', NULL, '2023-10-20 15:19:33', '2023-10-20 15:19:33'),
(2, 'Freya', 'freya@gmail.com', '12345', '169781570437384304fee0597929b797ce531f816957a', 'upload/user/65329c98e819d866.jpeg', NULL, '2023-10-20 15:28:24', '2023-10-20 15:28:24'),
(3, 'Morgan', 'morgan@gmail.com', '12345', '169781626771618dabeb2b052570ead23c2b837ad35fe', 'upload/user/65329ecbbf214874.jpeg', NULL, '2023-10-20 15:37:47', '2023-10-20 15:37:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakfast`
--
ALTER TABLE `breakfast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinner`
--
ALTER TABLE `dinner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lunch`
--
ALTER TABLE `lunch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_menu_items_coupon` (`coupon_id`);

--
-- Indexes for table `menu_item_coupon`
--
ALTER TABLE `menu_item_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_item_id` (`menu_item_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breakfast`
--
ALTER TABLE `breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dinner`
--
ALTER TABLE `dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lunch`
--
ALTER TABLE `lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `menu_item_coupon`
--
ALTER TABLE `menu_item_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `fk_menu_items_coupon` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `menu_item_coupon`
--
ALTER TABLE `menu_item_coupon`
  ADD CONSTRAINT `menu_item_coupon_ibfk_1` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`),
  ADD CONSTRAINT `menu_item_coupon_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
