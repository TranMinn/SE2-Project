-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2021 lúc 05:10 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ashion_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL,
  `buyDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `u_id`, `buyDate`) VALUES
('02c11b4c-6075-4aee-8154-2d6d7a09d718', 2, '2021-04-03'),
('040f8f5c-7761-4be4-b67d-d392ef04507d', 2, '2021-04-04'),
('0863c2f4-b811-4195-b0e9-c28a3e23cc3f', 2, '2021-04-03'),
('08bc47e7-5a6e-4ddc-a706-7feb7f26141f', 2, '2021-04-04'),
('1c7463ce-2d99-4a12-b7e5-760c996f6872', 2, '2021-04-04'),
('347499b9-bb02-400b-9ccf-1876afba158c', 2, '2021-04-02'),
('3b31c00b-4e39-4118-a74e-c258483fed50', 2, '2021-04-03'),
('3ce05a1d-b63a-4295-9b7e-c0e4e6dad667', 2, '2021-04-04'),
('50f5b3d9-7617-44ed-a8a9-f4f911d1ac54', 2, '2021-04-04'),
('5b9c95ac-b070-4f03-9114-145bbba92fee', 2, '2021-04-03'),
('5c40375e-933d-48b6-85b5-f20b55ac8768', 2, '2021-04-04'),
('6877ff29-c7ee-4371-85a9-fd6c0ddec7c9', 2, '2021-04-04'),
('6d214b1c-729c-4939-a349-774c99136932', 2, '2021-04-04'),
('6ec0094f-68f5-4491-8621-d90ff0b007cb', 2, '2021-04-03'),
('795e1a72-5590-4aff-93c8-aa295c9ebe00', 2, '2021-04-02'),
('7d6e9e0e-8080-4ad2-b0c6-c1974039c40c', 2, '2021-04-04'),
('7eebec81-7b4e-4355-9c89-8b4c7f7385fb', 2, '2021-04-04'),
('a460a72d-d492-4117-bc57-d57c71873541', 2, '2021-04-03'),
('b7c1b68e-b483-453b-863b-7fa24cb48cb4', 2, '2021-04-17'),
('b9ac3fa5-2b87-484e-91fa-0fec9307f5b4', 1, '2021-04-04'),
('d0294462-c137-44ab-8137-a73cfb58c79c', 2, '2021-04-04'),
('deb4557b-e99d-49f5-9073-f61a4f99e2a4', 2, '2021-04-03'),
('f4b1c823-3afe-4b10-ac31-5bff69dc04f8', 2, '2021-04-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartitem`
--

CREATE TABLE `cartitem` (
  `id` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitPrice` float NOT NULL,
  `pro_id` int(11) NOT NULL,
  `cat_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cartitem`
--

INSERT INTO `cartitem` (`id`, `quantity`, `unitPrice`, `pro_id`, `cat_id`) VALUES
('41', 1, 80, 6, '7eebec81-7b4e-4355-9c89-8b4c7f7385fb'),
('9fadd889-8cf4-4c39-92b8-7a8bf6349cd5', 1, 80, 8, 'b7c1b68e-b483-453b-863b-7fa24cb48cb4'),
('b5f1e775-b8f4-4cbe-b0d5-0490a0be6eb1', 2, 79, 5, 'd0294462-c137-44ab-8137-a73cfb58c79c'),
('dd72d6bd-595b-46a2-9c97-559059a30891', 2, 80, 6, '50f5b3d9-7617-44ed-a8a9-f4f911d1ac54'),
('dfbffe55-290c-41c4-aa4e-ab1ee3b54546', 2, 105, 7, 'b7c1b68e-b483-453b-863b-7fa24cb48cb4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`) VALUES
(1, 'women'),
(2, 'men'),
(3, 'kid'),
(4, 'comestic'),
(5, 'accessories');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `cate_id` int(11) NOT NULL,
  `des` varchar(2000) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `cate_id`, `des`, `image`) VALUES
(5, 'White Floral', 79, 1, '<p>White Floral Dress for Spring</p>\r\n', '1616122048781.jpg'),
(6, 'Green Silk', 80, 1, '<p>Green Silk Dress</p>\r\n', '1616122107860.jpg'),
(7, 'Kid Jeans', 105, 3, 'Jeans for kids', '1618644165275.jpg'),
(8, 'Aloha outfit', 80, 3, 'Aloha Outfit for kids', '1618644229853.jpg'),
(9, 'Men Jacket', 250, 2, 'Autumn Winter Fashion for men', '1618644749131.jpg'),
(10, 'Casual Shirt', 120, 2, 'Casual Shirt men cotton', '1618644825363.jpg'),
(11, 'Liquid Lipstick', 50, 4, 'Liquid Lipstick American Doll', '1618644982583.jpg'),
(12, 'Coco Chanel Perfume', 300, 4, 'Floral perfume for Spring, Soft and Fruity', '1618645163543.jpg'),
(13, 'Swan Necklace', 99, 5, 'Dazzling Swan Necklace', '1618645326067.jpg'),
(14, 'Pink Shoes', 125, 1, 'Pink Shoes for women', '1618645399317.jpg'),
(15, 'Women Bag', 130, 5, 'Women Bag', '1618645668583.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(36) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `avatar`, `role_id`) VALUES
(1, 'mintt2708@gmail.com', 'admin', '123456', '', 1),
(2, 'lovefamily2409@gmail.com', 'min', '123456', NULL, 2),
(4, '1801040141@s.hanu.edu.vn', 'newuser', '123456', NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id`, `code`, `discount`) VALUES
(1, 'D20', 20),
(2, 'D10', 10),
(3, 'D30', 30),
(5, 'D5', 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- Chỉ mục cho bảng `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cartitem`
--
ALTER TABLE `cartitem`
  ADD CONSTRAINT `cartitem_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cartitem_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
