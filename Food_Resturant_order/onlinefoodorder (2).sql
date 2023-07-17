-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 02:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(9, 'Wraps', 'Food_Category_374.jpg', 'Yes', 'Yes'),
(10, 'Pasta', 'Food_Category_948.jpg', 'Yes', 'Yes'),
(11, 'Sandwich', 'Food_Category_536.jpg', 'Yes', 'Yes'),
(14, 'Steak', 'sta.jfif', 'Yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Ham Burger', 'Burger with Ham, Pineapple and lots of Cheese.tasty burger beef meat , piece of tomato ,  katchab and coarns', '4.00', 'Food-Name-6340.jpg', 5, 'Yes', 'Yes'),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town. the good wood will give the best tasty to our pizza with the burned cheese and fresh tomato sauce', '9.00', 'Food-Name-8298.jpg', 4, 'No', 'Yes'),
(9, 'Chicken Wrap', 'Crispy flour tortilla loaded with juicy chicken, bacon, lettuce, avocado and cheese drizzled with a delicious spicy Ranch dressing.', '5.00', 'Food-Name-3461.jpg', 9, 'Yes', 'Yes'),
(10, 'Cheeseburger', 'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty.', '4.00', 'cheeseb.jfif', 5, 'Yes', 'Yes'),
(11, 'Grilled Cheese Sandwich', 'Assembled by creating a cheese filling, often cheddar or American between two slices of bread and is then heated until ', '3.00', 'Food-Name-3631.jpg', 11, 'Yes', 'Yes'),
(12, 'Double beef', 'This is our best meal its for giant people only since it can causes a heart attack for you', '30.00', 'cheeseL.jfif', 5, 'Yes', 'Yes'),
(13, 'American steak pan', 'This our American steak pan , its a beef from amircan cows , and its a have a very tasty sauce its our restrant secret', '35.00', 'steak1.webp', 14, 'Yes', 'Yes'),
(14, 'Vegtable cheese wrap', 'This wrap consists of some fresh vegatbles thats mixed with italian cheese and the mix of sauces and corns ', '3.00', 'wra.jfif', 9, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(30, 'Ham Burger', '4.00', 2, '8.00', '2022-05-19 02:12:00', 'Ordered', 'Ahamad', '1122334455', 'ahamad@gmail.com', 'Essen33'),
(31, 'Ham Burger', '4.00', 5, '20.00', '2022-05-19 02:27:00', 'Ordered', 'Mahmud', '0163611231', 'momo@gmail.com', 'falafel'),
(32, 'Ham Burger', '4.00', 1, '4.00', '2022-05-30 01:26:00', 'Ordered', 'sa', '123214', '21930467@students.liu.edu.lb', 'Asddsd,fdd'),
(33, 'Ham Burger', '4.00', 3, '12.00', '2022-05-30 01:51:00', 'Ordered', 'Ahmad Azimhe', '123214', 'nour@gmail.com', 'rafiddd'),
(34, 'Grilled Cheese Sandwich', '3.00', 1, '3.00', '2022-05-30 07:29:00', 'Ordered', 'rgrg', 'rgrg', 'o@go.c', 'wdwe'),
(35, 'Chicken Wrap', '5.00', 2, '10.00', '2022-05-30 07:37:00', 'Ordered', 'Suleiman Azimeh', '1234', 'ahmdzymh03@gmail.com', 'zahle , lebanon'),
(36, 'Ham Burger', '4.00', 1, '4.00', '2022-05-30 07:39:00', 'Ordered', 'rgrg', '01636182', 'mahmoodazimeh@hotmail.com', 'sadas,ddff'),
(37, 'Grilled Cheese Sandwich', '3.00', 1, '3.00', '2022-05-30 07:41:00', 'Ordered', 'ww', '4234', 'ahmadazimeh3@gmail', 'sdsa ,sad'),
(38, 'Smoky BBQ Pizza', '9.00', 2, '18.00', '2022-05-30 08:59:00', 'Ordered', 'Suleiman Azimeh', '4234', 'ahmdzymh03@gmail.com', 'saadnyeal ,m3sra'),
(39, 'Cheeseburger', '4.00', 3, '12.00', '2022-05-31 01:00:00', 'Ordered', 'Ahmad Azimeh', '4234', 'mahmoodazimeh@hotmail.com', 'zahle , leabnon'),
(40, 'Chicken Wrap', '5.00', 1, '5.00', '2022-05-31 01:00:00', 'Ordered', 'Ahmad Azimeh', '01636182918', 'ahmadazimeh3@gmail', 'aS'),
(41, 'Ham Burger', '4.00', 1, '4.00', '2022-05-31 01:01:00', 'Ordered', 'rgrg', '1234', 'mahmoodazimeh@hotmail.com', 'LLLL'),
(42, 'Chicken Wrap', '5.00', 1, '5.00', '2022-05-31 01:03:00', 'Ordered', 'Ahmad Azimeh', '016361', 'ahmadazimeh3@gmail', 'SDADSA'),
(43, 'Chicken Wrap', '5.00', 1, '5.00', '2022-05-31 01:06:00', 'Ordered', 'Ahmad Azimeh', '01636182', 'ahmadazimeh3@gmail', 'sas'),
(44, 'Smoky BBQ Pizza', '9.00', 1, '9.00', '2022-05-31 01:06:00', 'Ordered', 'Suleiman Azimeh', '1234', 'ahmdzymh03@gmail.com', 'dsasd'),
(45, 'Chicken Wrap', '5.00', 1, '5.00', '2022-05-31 01:08:00', 'Ordered', 'Ahmad Azimeh', '4234', 'mahmoodazimeh@hotmail.com', 'sadsa'),
(46, 'Ham Burger', '4.00', 1, '4.00', '2022-05-31 01:08:00', 'Ordered', 'Suleiman Azimeh', '01636182', 'ahmadazimeh3@gmail', 'sad'),
(47, 'Chicken Wrap', '5.00', 1, '5.00', '2022-05-31 01:10:00', 'Ordered', 'Ahmad Azimeh', '4234', 'mahmoodazimeh@hotmail.com', 'asdsa'),
(48, 'Ham Burger', '4.00', 1, '4.00', '2022-05-31 01:10:00', 'Ordered', 'osama', '4324523', 'alo@gmail.com', 'saadnayelbekka'),
(49, 'Chicken Wrap', '5.00', 1, '5.00', '2022-05-31 01:11:00', 'Ordered', 'osama', '43435', 'alo@gmail.com', 'saadnayelbekka'),
(50, 'Chicken Wrap', '5.00', 1, '5.00', '2022-05-31 01:14:00', 'Ordered', 'Suleiman Azimeh', '01636182918', 'ahmadazimeh3@gmail', 'zahle'),
(51, 'Smoky BBQ Pizza', '9.00', 1, '9.00', '2022-05-31 01:17:00', 'Ordered', 'nour siage', '71095686', 'nour@gmail.com', 'rafiddd'),
(52, 'Smoky BBQ Pizza', '9.00', 1, '9.00', '2022-05-31 01:18:00', 'Ordered', 'Ahmad Azimhe', '71095686', 'nour@gmail.com', 'rafiddd'),
(53, 'Smoky BBQ Pizza', '9.00', 1, '9.00', '2022-05-31 01:20:00', 'Ordered', 'osama', '123214', 'alo@gmail.com', 'saadnayelbekka'),
(54, 'Smoky BBQ Pizza', '9.00', 2, '18.00', '2022-05-31 01:41:00', 'Ordered', 'osama', '1234', 'ahmadazimeh3@gmail', 'zahle'),
(55, 'Smoky BBQ Pizza', '9.00', 3, '27.00', '2022-05-31 01:55:00', 'Ordered', 'Osama', '43435', '21930467@students.liu.edu.lb', 'Zahle , lebanon '),
(56, 'Smoky BBQ Pizza', '9.00', 2, '18.00', '2022-05-31 01:56:00', 'Ordered', 'Ahmad Azimeh', '43435', 'nour@gmail.com', 'Zahle lebanon'),
(57, 'Smoky BBQ Pizza', '9.00', 2, '18.00', '2022-05-31 02:05:00', 'Ordered', 'Ahmad Azimeh', '4234', 'ahmdzymh03@gmail.com', 'Zahle , lebanon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
