-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2022 at 02:46 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(9, 'Wraps', 'Food_Category_374.jpg', 'Yes', 'Yes'),
(10, 'Pasta', 'Food_Category_948.jpg', 'Yes', 'Yes'),
(11, 'Sandwich', 'Food_Category_536.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

DROP TABLE IF EXISTS `tbl_food`;
CREATE TABLE IF NOT EXISTS `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Ham Burger', 'Burger with Ham, Pineapple and lots of Cheese.', '4.00', 'Food-Name-6340.jpg', 5, 'Yes', 'Yes'),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town.', '9.00', 'Food-Name-8298.jpg', 4, 'No', 'Yes'),
(9, 'Chicken Wrap', 'Crispy flour tortilla loaded with juicy chicken, bacon, lettuce, avocado and cheese drizzled with a delicious spicy Ranch dressing.', '5.00', 'Food-Name-3461.jpg', 9, 'Yes', 'Yes'),
(10, 'Cheeseburger', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty.', '4.00', 'Food-Name-433.jpeg', 5, 'Yes', 'Yes'),
(11, 'Grilled Cheese Sandwich', 'Assembled by creating a cheese filling, often cheddar or American between two slices of bread and is then heated until the bread browns and cheese melts.', '3.00', 'Food-Name-3631.jpg', 11, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(10, 'Grilled Cheese Sandwich', '3.00', 4, '12.00', '2021-07-20 07:11:06', 'Delivered', 'Jonathan Caudill', '7410256996', 'jonathan@gmail.com', '1959 Limer Street'),
(14, 'burger', '3.00', 2, '6.00', '2022-05-19 12:19:47', 'Ordered', 'soso', '01636182918', 'sos@gmail.com', 'Essen'),
(15, 'Ham Burger', '4.00', 1, '4.00', '2022-05-19 12:31:00', 'Ordered', 'suleiman', '0163144134', 'solemanazemih@gmail.com', 'Essen'),
(16, 'Ham Burger', '4.00', 1, '4.00', '2022-05-19 12:32:00', 'Ordered', 'suleiman', '0163144134', 'solemanazemih@gmail.com', 'Essen'),
(17, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:39:00', 'Ordered', 'suleiman azimeh', '1234565743', 'spnl48@gmail.com', 'Saatbruchstr. 28'),
(19, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:47:00', 'Ordered', 'suleiman azimeh', '1234565743', 'spnl48@gmail.com', 'Saatbruchstr. 28'),
(20, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:47:00', 'Ordered', 'suleiman azimeh', '1234565743', 'spnl48@gmail.com', 'Saatbruchstr. 28'),
(21, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:48:00', 'Ordered', 'Yusuf', '1234565743', 'yus@gmail.com', 'Saatbruchstr. 28 Essen'),
(22, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:50:00', 'Ordered', 'Yusuf', '1234565743', 'yus@gmail.com', 'Saatbruchstr. 28 Essen'),
(23, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:52:00', 'Ordered', 'Yusuf', '1234565743', 'yus@gmail.com', 'Saatbruchstr. 28 Essen'),
(24, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:55:00', 'Ordered', 'Yusuf', '1234565743', 'yus@gmail.com', 'Saatbruchstr. 28 Essen'),
(25, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:57:00', 'Ordered', 'Yusuf', '1234565743', 'yus@gmail.com', 'Saatbruchstr. 28 Essen'),
(26, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 12:58:00', 'Ordered', 'Yusuf', '1234565743', 'yus@gmail.com', 'Saatbruchstr. 28 Essen'),
(27, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 01:00:00', 'Ordered', 'Yusuf', '1234565743', 'yus@gmail.com', 'Saatbruchstr. 28 Essen'),
(28, 'Cheeseburger', '4.00', 1, '4.00', '2022-05-19 01:00:00', 'Ordered', 'Yusuf', '1234565743', 'yus@gmail.com', 'Saatbruchstr. 28 Essen'),
(29, 'Chicken Wrap', '5.00', 2, '10.00', '2022-05-19 01:08:00', 'Ordered', 'Ezel', '0163611312', 'ezel@gmail.com', 'Essen, Syria'),
(30, 'Ham Burger', '4.00', 2, '8.00', '2022-05-19 02:12:00', 'Ordered', 'Ahamad', '1122334455', 'ahamad@gmail.com', 'Essen33'),
(31, 'Ham Burger', '4.00', 5, '20.00', '2022-05-19 02:27:00', 'Ordered', 'Mahmud', '0163611231', 'momo@gmail.com', 'falafel');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
