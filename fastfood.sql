-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 29, 2021 lúc 05:24 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fastfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'Gà Rán', '2021-05-29 15:50:59', '2021-05-29 15:50:59'),
(9, 'Bánh Burgers', '2021-05-29 16:02:27', '2021-05-29 16:02:27'),
(10, 'Thức Uống Nóng', '2021-05-29 16:34:27', '2021-05-29 17:55:11'),
(11, 'Thức Uống Lạnh', '2021-05-29 16:41:27', '2021-05-29 17:44:11'),
(12, 'Cơm', '2021-05-29 16:50:27', '2021-05-29 16:23:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` float DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `thumbnail`, `content`, `id_category`, `created_at`, `updated_at`) VALUES
(1, '6 Miếng Gà', 125000, 'https://www.mcdonalds.vn/uploads/2018/food/ga-ran/10-wings.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/food/ga-ran/10-wings.png\" style=\"width: 500px;\"><br></p>', 8, '2021-05-03 16:30:55', '2021-05-29 17:38:10'),
(7, '10 Miếng Gà', 170000, 'https://www.mcdonalds.vn/uploads/2018/food/ga-ran/10-wings.png', '<p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/food/ga-ran/10-wings.png\" style=\"width: 500px;\"></p>', 8, '2021-05-29 16:00:30', '2021-05-29 17:12:11'),
(8, 'Phần ăn 2 miếng gà rán', 87000, 'https://www.mcdonalds.vn/uploads/2018/2-ga-ran.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/2-ga-ran.png\" style=\"width: 600px;\"><br></p>', 8, '2021-05-29 16:18:34', '2021-05-29 17:29:11'),
(9, '1 Miếng Gà Rán', 36000, 'https://www.mcdonalds.vn/uploads/2018/food/ga-ran/1-ga-ran.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/food/ga-ran/1-ga-ran.png\" style=\"width: 600px;\"><br></p>', 8, '2021-05-29 16:31:35', '2021-05-29 17:21:12'),
(10, 'Bánh Burgers 2 lớp bò phomai', 49000, 'https://www.mcdonalds.vn/uploads/2018/food/burgers/double-cheese-burger.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/food/burgers/double-cheese-burger.png\" style=\"width: 500px;\"><br></p>', 9, '2021-05-29 16:42:46', '2021-05-29 17:16:12'),
(11, 'Burgers Bò Miếng Lớn', 59000, 'https://www.mcdonalds.vn/uploads/2018/food/burgers/double-cheese-burger.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/food/burgers/double-cheese-burger.png\" style=\"width: 500px;\"></p>', 9, '2021-05-29 16:54:47', '2021-05-29 17:27:12'),
(12, 'Burger Bò Hoàng Gia Đặc Biệt', 69000, 'https://www.mcdonalds.vn/uploads/2018/mcroyal_deluxe.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mcroyal_deluxe.png\" style=\"width: 500px;\"><br></p>', 9, '2021-05-29 16:56:49', '2021-05-29 17:33:12'),
(13, 'Burger Bò Miếng Lớn', 79000, 'https://www.mcdonalds.vn/uploads/2018/food/burgers/mcroyal-deluxe.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/food/burgers/mcroyal-deluxe.png\" style=\"width: 500px;\"><br></p>', 9, '2021-05-29 16:50:51', '2021-05-29 17:42:12'),
(14, 'Americano', 30000, 'https://www.mcdonalds.vn/uploads/2018/mccafe/americano.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mccafe/americano.png\" style=\"width: 600px;\"><br></p>', 10, '2021-05-29 16:12:53', '2021-05-29 17:51:12'),
(15, 'Capuchino', 35000, 'https://www.mcdonalds.vn/uploads/2018/mccafe/cappucino.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>&nbsp;Capuchino</b></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mccafe/cappucino.png\" style=\"width: 600px;\"><br></p>', 10, '2021-05-29 16:41:54', '2021-05-29 16:41:54'),
(16, 'Socola Nóng', 50000, 'https://www.mcdonalds.vn/uploads/2018/mccafe/hotchoco.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mccafe/hotchoco.png\" style=\"width: 600px;\"><br></p>', 10, '2021-05-29 16:10:56', '2021-05-29 17:27:13'),
(17, 'Cafe Mo Cha', 50000, 'https://www.mcdonalds.vn/uploads/2018/mccafe/mocha.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mccafe/mocha.png\" style=\"width: 600px;\"><br></p>', 10, '2021-05-29 16:14:57', '2021-05-29 17:17:13'),
(18, 'Cà Phê Sữa Đá', 30000, 'https://www.mcdonalds.vn/uploads/2018/mccafe/iced_milkVNcoffee.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mccafe/iced_milkVNcoffee.png\" style=\"width: 600px;\"><br></p>', 11, '2021-05-29 16:03:59', '2021-05-29 16:03:59'),
(19, 'Cafe Đá', 30000, 'https://www.mcdonalds.vn/uploads/2018/mccafe/iced_VNcoffee.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mccafe/iced_VNcoffee.png\" style=\"width: 600px;\"><br></p>', 11, '2021-05-29 17:58:00', '2021-05-29 17:58:00'),
(20, 'Cà phê Latte đá ', 60000, 'https://www.mcdonalds.vn/uploads/2018/mccafe/icedlatte.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mccafe/icedlatte.png\" style=\"width: 600px;\"><br></p>', 0, '2021-05-29 17:47:02', '2021-05-29 17:47:02'),
(21, 'Cà phê Americano đá', 50000, 'https://www.mcdonalds.vn/uploads/2018/mccafe/icedamericano.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/mccafe/icedamericano.png\" style=\"width: 600px;\"><br></p>', 11, '2021-05-29 17:30:03', '2021-05-29 17:30:03'),
(22, 'CơmPhần ăn Cơm thịt nướng ', 46000, 'https://www.mcdonalds.vn/uploads/2018/food/rice/MEAL_porkrice.png', '<p>                                                           <img src=\"https://www.mcdonalds.vn/uploads/2018/food/rice/MEAL_porkrice.png\" style=\"width: 600px;\"><br></p>', 12, '2021-05-29 17:13:06', '2021-05-29 17:17:09'),
(23, 'Phần ăn Cơm thịt gà chiên', 46000, 'https://www.mcdonalds.vn/uploads/2018/food/rice/MEAL_porkeggrice.png', '<p>                                                             <img src=\"https://www.mcdonalds.vn/uploads/2018/food/rice/MEAL_porkeggrice.png\" style=\"width: 600px;\"><br></p>', 12, '2021-05-29 17:47:07', '2021-05-29 17:31:09'),
(24, 'Phần ăn cơm thịt nướng ốp la', 66000, 'https://www.mcdonalds.vn/uploads/2018/food/rice/MEAL_porkeggrice.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/food/rice/MEAL_porkeggrice.png\" style=\"width: 600px;\"><br></p>', 12, '2021-05-29 17:05:09', '2021-05-29 17:05:09'),
(25, 'Phần ăn Cơm phi lê gà cay', 90000, 'https://www.mcdonalds.vn/uploads/2018/food/rice/MEAL_mcspicyrice.png', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://www.mcdonalds.vn/uploads/2018/food/rice/MEAL_mcspicyrice.png\" style=\"width: 600px;\"><br></p>', 12, '2021-05-29 17:04:10', '2021-05-29 17:04:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
