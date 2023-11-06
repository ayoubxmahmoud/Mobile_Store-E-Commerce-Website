-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL,
  `item_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`, `item_desc` ) VALUES
(1, 'Samsung', 'Samsung Galaxy A14', 152.00, './assets/products/samsung_A14.jpg', '2020-03-28 11:08:57',
 'SAMSUNG Galaxy A14 4G LTE (128GB + 4GB) Unlocked Worldwide (Only T-Mobile/Mint/Metro USA Market) 6.6" 50MP Triple Camera + (15W Wall Charger) (Green (SM-A145M/DS))'
 ),
(2, 'Redmi', 'Redmi Note 12', 122.00, './assets/products/redmi_note_12.jpg', '2020-03-28 11:08:57', 
  'Xiaomi Redmi Note 12 4G LTE (128GB + 4GB) Global Unlocked 6.67" 50MP Triple (ONLY T-Moble/Tello/Mint USA Market) + (w/ 33W Fast Car Dual Charger Bundle) (Ice Blue Global + 33W Car Charger)
' ),
(3, 'Redmi', 'Redmi Note 11s', 122.00, './assets/products/redmi_note_11s.jpg', '2020-03-28 11:08:57',
  'Xiaomi Redmi Note 11S 4G Volte 64GB + 6GB Factory Unlocked 6.43" Quad Camera 108MP Night Mode (NOT Verizon Sprint Boost Cricket At&t) (w/Fast Car Charger Bundle) (Twilight Blue)
'),
(4, 'Samsung', 'Samsung Galaxy S23', 122.00, './assets/products/samsung_s23.jpg', '2020-03-28 11:08:57', 
  'SAMSUNG Galaxy S23+ Plus Cell Phone, Factory Unlocked Android Smartphone, 256GB, 50MP Camera, Night Mode, Long Battery Life, Adaptive Display, US Version, 2023, Phantom Black
'),
(5, 'Samsung', 'SAMSUNG Galaxy S22 ', 122.00, './assets/products/samsung_s22.jpg', '2020-03-28 11:08:57',
  'SAMSUNG Galaxy S22 Ultra Cell Phone, Factory Unlocked Android Smartphone, 256GB, 8K Camera, Brightest Display Screen, S Pen, Long Battery Life, Fast 4nm Processor, US Version, 2022, Phantom Black
'),
(6, 'Itel', 'OnePlus 11 5G ', 122.00, './assets/products/itel_11.jpg', '2020-03-28 11:08:57',
  'OnePlus 11 5G | 16GB RAM+256GB | Dual-SIM | Eternal Green | US Factory Unlocked Android Smartphone | 5000 mAh battery | 80W Fast charging | Hasselblad Camera | 120Hz Fluid Display | 4nm Processor'
),
(7, 'Oppo', 'OPPO Reno 8', 122.00, './assets/products/oppo8.jpg', '2020-03-28 11:08:57',
'OPPO Reno 8 Lite Dual SIM 128GB ROM + 8GB RAM (GSM only | No CDMA) Factory Unlocked 5G Smartphone (Champagne Silver) - International Version'
),
(8, 'Oppo', 'Oppo Find X5 Pro', 122.00, './assets/products/oppo_x5.jpg', '2020-03-28 11:08:57',
 'Oppo Find X5 Pro 5G Dual 256GB ROM 12GB RAM Factory Unlocked (GSM Only | No CDMA - not Compatible with Verizon/Sprint) China Version | No Google Play Installed Mobile Cell Phone - Ceramic White'
 ),
(9, 'Huawei ', 'Huawei P30 Lite', 152.00, './assets/products/huawei_p30.jpg', '2020-03-28 11:08:57',
 'Huawei P30 Lite (128GB, 4GB RAM) 6.15" Display, AI Triple Camera, 32MP Selfie, Dual SIM Global 4G LTE GSM Factory Unlocked MAR-LX3A - International Version (Midnight Black)'
 ),
(11, 'Apple', 'Apple iPhone 12 Pro', 152.00, './assets/products/iphone12.jpg', '2020-03-28 11:08:57',
  'Apple iPhone 12 Pro, 128GB, Silver - Unlocked (Renewed Premium)'
),
(12, 'Apple', 'Apple iPhone 13 Pro', 152.00, './assets/products/iphone13.jpg', '2020-03-28 11:08:57', 
 'iPhone 13 Pro, 256GB, Graphite - Unlocked (Renewed Premium)
'),
(13, 'Apple', 'Apple iPhone 14 Pro max', 152.00, './assets/products/iphone14.jpg', '2020-03-28 11:08:57',
 'THMEIRA for Apple iPhone 14 Pro Max Leather Case with Magnetic Wallet Card Holder Cover [ Compatible with MagSafe ] [ Artificial Leather ] with Tempered Glass Screen Protector - Forest Green
');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profileImage` varchar(255),
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--
-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




--
-- Table structure for table `blog`
CREATE TABLE `blog` (
  `blog_id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `blog_title` varchar(200) NOT NULL,
  `blog_desc` varchar(255) NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_content` text NOT NULL,
  `blog_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`Q
--
INSERT INTO `blog` (`blog_id`, `blog_title`, `blog_desc`, `blog_image`, `blog_content`, `blog_register`) VALUES
(1,
  'DJI Mini 4 Pro',
  'DJI announced a new and improved version of its compact drone.',
  './assets/blogs/dji.jpg',
  "DJI announced a new and improved version of its compact drone. Compared to the Mini 3 Pro, the Mini 4 Pro has the same camera but new obstacle avoidance sensors and smarter tracking abilities. It still weighs less than 250 grams, meaning you don't need a license to fly it.",
  '2023-03-28 11:08:57'
 ),
 (2,
  'Bose QuietComfort Ultra Headphones',
  "The Bose QuietComfort Ultra is the company's new flagship noise-canceling headphones.",
  './assets/blogs/bose.jpg',
  "The Bose QuietComfort Ultra is the company's new flagship noise-canceling headphones (they replace the 2019-released Noise-Canceling 700s). They have a new foldable design with plush earcups, improved noise-cancellation and call clarity, and they support spatial audio.",
  '2023-05-23 12:08:57'
 ),
  (3,
  'VR headsets to look out for in 2023',
  "2023 could go down as one of the most eventful years in the history of virtual reality. This year will see the release of both the Playstation VR 2 and the Meta Quest 3.",
  './assets/blogs/VR.jpg',
  "2023 could go down as one of the most eventful years in the history of virtual reality. This year will see the release of both the Playstation VR 2 and the Meta Quest 3. Both devices are likely to leave a lasting mark on the industry, just like their predecessors. If Apple finally steps into the industry spotlight as well, 2023 could be a truly historic year. But that remains to be seen.",
  '2023-05-23 12:08:57'
 );



--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- --------------------------------------------------------
