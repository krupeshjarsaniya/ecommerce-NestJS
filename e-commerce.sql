-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2024 at 03:52 PM
-- Server version: 8.0.35-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `created_at`) VALUES
(1, 'Rose Gold Earring', 'An ideal pick for a casual wardrobe, this trendy t-shirt is designed with bold tropical prints, short sleeves and a round neckline.Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the latest collection of various ethnic dresses with cap sleeve sleeve designs to give a flawless desi look. Stay up to date with the great selection of attractive traditional ethnic dresses made with the perfect blend and modern style.\r\n', 24000, 15, '2024-08-07 12:07:42.000000'),
(2, 'Bracelet And Ring For Girls', 'Nam tristique porta ligula, vel viverra sem eleifend nec. Nulla sed purus augue, eu euismod tellus. Nam mattis eros nec mi sagittis sagittis. Vestibulum suscipit cursus bibendum. Integer at justo eget sem auctor auctor eget vitae arcu. Nam tempor malesuada porttitor. Nulla quis dignissim ipsum. Aliquam pulvinar iaculis justo, sit amet interdum sem hendrerit vitae. Vivamus vel erat tortor. Nulla facilisi. In nulla quam, lacinia eu aliquam ac, aliquam in nisl.', 27000, 25, '2024-08-07 12:10:18.000000'),
(3, 'Pearl Gold Jewellery', 'Stylish and comfortable this printed chemise is designed with short sleeves and a round neckline. Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the latest collection of various ethnic dresses with cap sleeve sleeve designs to give a flawless desi look. Stay up to date with the great selection of attractive traditional ethnic dresses made with the perfect blend and modern style.', 36500, 0, '2024-08-07 12:10:52.000000'),
(4, 'Multi Wearing Necklace', 'Elegant and comfy, this embroidered A-line dress which has a round neck, and three-quarter sleeves is all you need to ensure your wardrobe is up to date. Browse through the latest collection of various ethnic dresses with cap sleeve sleeve designs to give a flawless desi look. Stay up to date with the great selection of attractive traditional ethnic dresses made with the perfect blend and modern style.', 46000, 10, '2024-08-07 12:28:59.000000'),
(5, 'Gold And Diamond Earring', 'Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you\'re ready for summer!', 27500, 28, '2024-08-07 12:28:59.000000'),
(6, 'American Diamond Earrings', 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 26500, 0, '2024-08-07 12:28:59.000000'),
(7, '9ct White Gold 0.04 Pendant', 'Made from 9-carat white gold, the multi-stone diamond necklace set features exceptionally crafted jewels, from sparkling diamond rings to pearl drop earrings.', 15000, 5, '2024-08-07 12:28:59.000000'),
(8, '9ct White Gold Diamond Pendant', 'Quisque varius diam vel metus mattis, id aliquam diam rhoncus. Proin vitae magna in dui finibus malesuada et at nulla. Morbi elit ex, viverra vitae ante vel, blandit feugiat ligula. Fusce fermentum iaculis nibh, at sodales leo maximus a. Nullam ultricies sodales nunc, in pellentesque lorem mattis quis. Cras imperdiet est in nunc tristique lacinia. Nullam aliquam mauris eu accumsan tincidunt. Suspendisse velit ex, aliquet vel ornare vel, dignissim a tortor.', 21500, 15, '2024-08-07 12:28:59.000000'),
(9, '9ct White Gold Blue Pendant', 'Quisque varius diam vel metus mattis, id aliquam diam rhoncus. Proin vitae magna in dui finibus malesuada et at nulla. Morbi elit ex, viverra vitae ante vel, blandit feugiat ligula. Fusce fermentum iaculis nibh, at sodales leo maximus a. Nullam ultricies sodales nunc, in pellentesque lorem mattis quis. Cras imperdiet est in nunc tristique lacinia. Nullam aliquam mauris eu accumsan tincidunt. Suspendisse velit ex, aliquet vel ornare vel, dignissim a tortor.\r\n', 30000, 0, '2024-08-07 12:54:41.000000'),
(10, '9ct White Gold 0.25ct Cluster Pendant', 'Quisque varius diam vel metus mattis, id aliquam diam rhoncus. Proin vitae magna in dui finibus malesuada et at nulla. Morbi elit ex, viverra vitae ante vel, blandit feugiat ligula. Fusce fermentum iaculis nibh, at sodales leo maximus a. Nullam ultricies sodales nunc, in pellentesque lorem mattis quis. Cras imperdiet est in nunc tristique lacinia. Nullam aliquam mauris eu accumsan tincidunt. Suspendisse velit ex, aliquet vel ornare vel, dignissim a tortor.', 45000, 60, '2024-08-07 12:54:41.000000'),
(11, '9ct Yellow Gold Beaded Chain', 'Morbi ut sapien vitae odio accumsan gravida. Morbi vitae erat auctor, eleifend nunc a, lobortis neque. Praesent aliquam dignissim viverra. Maecenas lacus odio, feugiat eu nunc sit amet, maximus sagittis dolor. Vivamus nisi sapien, elementum sit amet eros sit amet, ultricies cursus ipsum. Sed consequat luctus ligula. Curabitur laoreet rhoncus blandit. Aenean vel diam ut arcu pharetra dignissim ut sed leo. Vivamus faucibus, ipsum in vestibulum vulputate, lorem orci convallis quam, sit amet consequat nulla felis pharetra lacus. Duis semper erat mauris, sed egestas purus commodo vel.', 26900, 0, '2024-08-07 12:54:41.000000'),
(12, '9ct White Gold 0.05cttw Circle Necklace', 'Morbi ut sapien vitae odio accumsan gravida. Morbi vitae erat auctor, eleifend nunc a, lobortis neque. Praesent aliquam dignissim viverra. Maecenas lacus odio, feugiat eu nunc sit amet, maximus sagittis dolor. Vivamus nisi sapien, elementum sit amet eros sit amet, ultricies cursus ipsum. Sed consequat luctus ligula. Curabitur laoreet rhoncus blandit. Aenean vel diam ut arcu pharetra dignissim ut sed leo. Vivamus faucibus, ipsum in vestibulum vulputate, lorem orci convallis quam, sit amet consequat nulla felis pharetra lacus. Duis semper erat mauris, sed egestas purus commodo vel.', 26500, 25, '2024-08-07 12:54:41.000000'),
(13, 'Sterling Silver Heart Locket Necklace', 'Morbi ut sapien vitae odio accumsan gravida. Morbi vitae erat auctor, eleifend nunc a, lobortis neque. Praesent aliquam dignissim viverra. Maecenas lacus odio, feugiat eu nunc sit amet, maximus sagittis dolor. Vivamus nisi sapien, elementum sit amet eros sit amet, ultricies cursus ipsum. Sed consequat luctus ligula. Curabitur laoreet rhoncus blandit. Aenean vel diam ut arcu pharetra dignissim ut sed leo. Vivamus faucibus, ipsum in vestibulum vulputate, lorem orci convallis quam, sit amet consequat nulla felis pharetra lacus. Duis semper erat mauris, sed egestas purus commodo vel.', 29000, 70, '2024-08-07 12:54:41.000000');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `productId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `productId`) VALUES
(1, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/18_fcfaf20a-3e66-4839-a7e1-aebe8c066b71_749x.jpg?v=1668595534', 1),
(2, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/2_749x.jpg?v=1668595534', 1),
(3, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/1_9729be25-df49-47b9-a838-9db8cb1859b1_749x.jpg?v=1668595534', 1),
(4, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/3_d7bc8069-b810-4497-8c0a-d3a85a50945a_749x.jpg?v=1668595532', 1),
(5, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/19_3a40f706-e4ab-4588-86c7-f2dd1995123d_749x.jpg?v=1668595531', 1),
(6, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/1_749x.jpg?v=1668592898', 2),
(7, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/20_0da85bcd-0e8c-4c24-9a25-4eda902c81c7_749x.jpg?v=1668592902', 2),
(8, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/2_5f218705-8d8d-48e9-9c09-f6b75da2f979_749x.jpg?v=1668592902', 2),
(9, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/3_013a5e07-0c74-4100-b555-70ce53f731b5_749x.jpg?v=1668592902', 2),
(10, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/16_749x.jpg?v=1668595329', 3),
(11, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/4_749x.jpg?v=1668595329', 3),
(12, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/17_27e8a4cf-80da-4c9c-af46-6360ad9afb7d_749x.jpg?v=1668595325', 3),
(13, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/18_1b64e09f-9250-4119-a312-c6e102e42a0f_749x.jpg?v=1668595325', 3),
(14, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/19_6b888889-0715-456d-b5c3-3bfeac4392d1_749x.jpg?v=1668595325', 3),
(15, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/12_6fde9b04-ee9a-4e67-b268-aef2dffbb94e_749x.jpg?v=1668594469', 4),
(16, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/9_666a7b14-e98e-4249-a7f8-99ca8b25ba78_749x.jpg?v=1668594469', 4),
(17, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/13_e3ec858d-0661-49d0-a253-6ae545956435_749x.jpg?v=1668594466', 4),
(18, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/14_13d1780d-a93a-418f-8a0d-39a5f2dec6aa_749x.jpg?v=1668594466', 4),
(19, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/6_e94e75fd-46e1-42e6-93ef-7041a5f87ab3_749x.jpg?v=1668593634', 5),
(20, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/15_749x.jpg?v=1668593637', 5),
(21, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/7_07b36c65-ff93-4846-a274-c80dfc28461d_749x.jpg?v=1668593637', 5),
(22, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/8_1e536f12-f8db-4322-92f8-dc7cf7fab0f4_749x.jpg?v=1668593637', 5),
(23, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/16_a7c0d68a-18eb-40dc-9038-9e1fbb6a334a_749x.jpg?v=1668593519', 6),
(24, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/9_749x.jpg?v=1668593522', 6),
(25, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/5_64c6dc58-ae32-49d3-bc64-8b9c401e3625_749x.jpg?v=1668593522', 6),
(26, 'https://jewelkin-codezeel.myshopify.com/cdn/shop/products/6_70c1b01a-9ab0-4b80-b33f-1cf9fde869dc_749x.jpg?v=1668593520', 6),
(27, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/1-3.jpg', 7),
(28, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/2-3.jpg', 7),
(29, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/3-3.jpg', 7),
(30, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/1-12.jpg', 8),
(31, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/2-12.jpg', 8),
(32, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/3-12.jpg', 8),
(33, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/1-11.jpg', 9),
(34, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/2-11.jpg', 9),
(35, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/3-11.jpg', 9),
(36, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/1-6.jpg', 10),
(37, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/2-6.jpg', 10),
(38, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/3-6.jpg', 10),
(39, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/1-17.jpg', 11),
(40, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/2-17.jpg', 11),
(41, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/3-16.jpg', 11),
(42, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/1-4.jpg', 12),
(43, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/2-4.jpg', 12),
(44, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/3-4.jpg', 12),
(45, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/1-56.jpg', 13),
(46, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/2-56.jpg', 13),
(47, 'https://klbtheme.com/djewno/wp-content/uploads/2024/02/3-52.jpg', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b367708bf720c8dd62fc6833161` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `FK_b367708bf720c8dd62fc6833161` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
