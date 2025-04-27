-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 07:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'test', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `biriyani`
--

CREATE TABLE `biriyani` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biriyani`
--

INSERT INTO `biriyani` (`id`, `name`, `price`, `image`, `category`) VALUES
(1, 'Beef Biriyani', 1300, 'biriyani1.png', 'main dish'),
(3, 'Prawn Biriyani', 1350, 'biriyani2.png', ''),
(4, 'Vegetable Biriyani', 1000, 'biriyani3.png', ''),
(5, 'Chicken Biriyani', 950, 'biriyani4.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `desat`
--

CREATE TABLE `desat` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desat`
--

INSERT INTO `desat` (`id`, `name`, `price`, `image`, `category`) VALUES
(1, 'Ice creem', 700, 'des1.png', ''),
(2, 'Watalappam', 400, 'des2.png', ''),
(3, 'Cream Caramel', 400, 'des3.png', ''),
(4, 'Fresh Fruit Salad', 250, 'des4.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `hot`
--

CREATE TABLE `hot` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hot`
--

INSERT INTO `hot` (`id`, `name`, `price`, `image`, `category`) VALUES
(3, 'Devilled Chicken', 250, 'hot1.png', ''),
(4, 'Chicken with Cashew Nuts', 200, 'hot2.png', ''),
(5, 'Chicken with Kankun & Garlic', 300, 'hot3.png', ''),
(6, 'Devilled Beef', 300, 'hot4.png', ''),
(7, 'Beef with Kankun and Garlic', 300, 'hot5.png', ''),
(8, 'Devilled Fish', 350, 'hot6.png', ''),
(9, 'Pepper Fish ', 200, 'hot7.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu_up`
--

CREATE TABLE `menu_up` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 0, 'admin', 'rksarangakasun@gmail.com', '0711050008', 'dsggsrhshgsfgsss');

-- --------------------------------------------------------

--
-- Table structure for table `noodls`
--

CREATE TABLE `noodls` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noodls`
--

INSERT INTO `noodls` (`id`, `name`, `price`, `image`, `category`) VALUES
(1, 'Chicken Noodles', 700, 'noodls2.png', 'select category'),
(2, 'Mixed Fried Noodles', 600, 'noodls1.png', ''),
(3, 'Prawn fried Noodles', 650, 'noodls3.png', ''),
(4, 'Vegetable Fried Noodles', 600, 'noodls4.png', ''),
(5, 'Egg Fried Noodles', 400, 'noodls5.png', ''),
(6, 'Thai Mixed Noodles', 550, 'noodls6.png', ''),
(7, 'Chicken Copsey Noodles', 600, 'noodls7.png', ''),
(8, 'Sea Food Copsey Noodles', 700, 'noodls8.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 2, 'test', '0710510008', 'kasunsadun136@gmail.com', 'credit card', '20, 100, pandulagama, anuradhapura, Vavuniya, anuradhapura, srilanka - 10', 'Ice Creem (180 x 1) - ', 180, '2023-05-09', 'completed'),
(2, 3, 'chamidu', '0711050008', 'klgcm25@gmail.com', 'cash on delivery', '40,  pandulagama,  Vavuniya', 'Mixed Fried Rice (800 x 1) - ', 800, '2023-05-31', 'pending'),
(3, 4, 'sakun', '122345678', 'sakun12@gmail.com', 'cash on delivery', '70,  pandulagama,  Vavuniya', 'Mixed Fried Noodles (600 x 1) - ', 600, '2023-06-06', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`id`, `name`, `price`, `image`, `category`) VALUES
(2, 'Chicken pizza', 780, 'cat-11.jpg', ''),
(3, 'Chees pizza', 700, 'pizza-4.png', ''),
(4, 'Sosajus pizza', 700, 'pizza-3.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(4, 'Hot Chicken ', 'fast food', 700, 'home-img-31.png'),
(5, 'Ice Creem', 'desserts', 180, 'ice_cream.jpg'),
(6, 'Chocolate_Drink', 'drinks', 450, 'chocolate_Drink.jpg'),
(7, 'Cup Cake', 'desserts', 280, 'gallary_2.jpg'),
(8, 'Hot_Dog', 'fast food', 580, 'Hot_dog.jpg'),
(9, 'Sandwich', 'fast food', 350, 'gallary_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rice`
--

CREATE TABLE `rice` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rice`
--

INSERT INTO `rice` (`id`, `name`, `price`, `image`, `category`) VALUES
(2, 'Chicken Fried Rice', 650, 'rice2.png', 'select category'),
(3, 'Mixed Fried Rice', 800, 'rice1.png', ''),
(4, 'Beef Fried Rice', 850, 'rice3.png', ''),
(5, 'Prawn Fried Rice', 780, 'rice4.png', ''),
(6, 'Vegetable Fried Rice', 500, 'rice5.png', ''),
(7, 'Egg Fried Rice', 450, 'rice6.png', ''),
(8, 'Thai Mixed Fried Rice', 650, 'rice7.png', ''),
(9, 'Chicken Copsey Rice', 800, 'rice8.png', ''),
(10, 'Sea Food Copsey Rice', 900, 'rice9.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `salada`
--

CREATE TABLE `salada` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salada`
--

INSERT INTO `salada` (`id`, `name`, `price`, `image`, `category`) VALUES
(3, 'Chicken Salad', 150, 'salada1.png', ''),
(4, 'Chicken Caesar Salad', 170, 'salada2.png', ''),
(5, 'Hawaiian Seafood Salad', 150, 'salada3.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `sup`
--

CREATE TABLE `sup` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sup`
--

INSERT INTO `sup` (`id`, `name`, `price`, `image`, `category`) VALUES
(1, 'Chicken & Sweet Corn', 500, 'sup1.png', 'select category'),
(2, 'Egg and Vegetables Corn', 450, 'sup2.png', ''),
(3, 'Tom Yum Chicken', 300, 'sup3.png', ''),
(4, 'Seafood Chowder', 300, 'sup4.png', ''),
(5, 'Hungarian Beef Goulash ', 300, 'sup5.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(2, 'test', 'kasunsadun136@gmail.com', '0710510008', 'ed58c12e4c80eff6a5f824a9accf7dbb9d67ca77', '20, 100, pandulagama, anuradhapura, Vavuniya, anuradhapura, srilanka - 10'),
(3, 'chamidu', 'klgcm25@gmail.com', '0711050008', '4d8e56717bb7079972679935e055745833b8e513', '40,  pandulagama,  Vavuniya'),
(4, 'sakun', 'sakun12@gmail.com', '122345678', '8cb2237d0679ca88db6464eac60da96345513964', '70,  pandulagama,  Vavuniya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biriyani`
--
ALTER TABLE `biriyani`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desat`
--
ALTER TABLE `desat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hot`
--
ALTER TABLE `hot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_up`
--
ALTER TABLE `menu_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noodls`
--
ALTER TABLE `noodls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rice`
--
ALTER TABLE `rice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salada`
--
ALTER TABLE `salada`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sup`
--
ALTER TABLE `sup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `biriyani`
--
ALTER TABLE `biriyani`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `desat`
--
ALTER TABLE `desat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hot`
--
ALTER TABLE `hot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu_up`
--
ALTER TABLE `menu_up`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `noodls`
--
ALTER TABLE `noodls`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rice`
--
ALTER TABLE `rice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `salada`
--
ALTER TABLE `salada`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sup`
--
ALTER TABLE `sup`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
