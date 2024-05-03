-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2024 pada 06.25
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `client_id` int(5) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(50) NOT NULL,
  `client_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `client_phone`, `client_email`) VALUES
(1, 'Gibral', '89021324', 'Gibralanugrah@gmail.com'),
(2, 'Nazar', '89021324', 'nazar27rr@gmail.com'),
(3, 'Nazar', '89021324', 'nazar27rr@gmail.com'),
(4, 'Gibral', '89021324', 'Gibralanugrah@gmail.com'),
(5, 'Restu', '123123123', 'restufbrsta@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_gallery`
--

CREATE TABLE `image_gallery` (
  `image_id` int(2) NOT NULL,
  `image_name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `image_gallery`
--

INSERT INTO `image_gallery` (`image_id`, `image_name`, `image`) VALUES
(1, 'Moroccan Tajine', '58146_Moroccan Chicken Tagine.jpeg'),
(2, 'Italian Pasta', 'img_1.jpg'),
(3, 'Cook', 'img_2.jpg'),
(4, 'Pizza', 'img_3.jpg'),
(5, 'Burger', 'burger.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `in_order`
--

CREATE TABLE `in_order` (
  `id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `menu_id` int(5) NOT NULL,
  `quantity` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `in_order`
--

INSERT INTO `in_order` (`id`, `order_id`, `menu_id`, `quantity`) VALUES
(1, 1, 2, 1),
(2, 1, 3, 1),
(3, 1, 5, 1),
(4, 1, 6, 1),
(5, 1, 7, 1),
(6, 1, 8, 1),
(7, 1, 9, 1),
(8, 1, 1, 1),
(9, 1, 11, 1),
(10, 1, 12, 1),
(11, 1, 16, 1),
(12, 2, 2, 1),
(13, 2, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(5) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_description` varchar(255) NOT NULL,
  `menu_price` decimal(6,2) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  `category_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_description`, `menu_price`, `menu_image`, `category_id`) VALUES
(1, 'Moroccan Couscous', 'Moroccan couscous is a traditional dish consisting of fluffy semolina grains steamed to perfection, accompanied by a rich and aromatic stew of tender meat, vegetables, &amp; fragrant spices.', '14.00', '88737_couscous_meat.jpg', 8),
(2, 'Beef Hamburger', 'Sink your teeth into a juicy beef patty nestled between soft buns, topped with fresh lettuce, ripe tomatoes, and tangy pickles, delivering a burst of flavor in every bite', '3.80', 'burger.jpeg', 1),
(3, 'Ice Cream', 'Indulge your sweet tooth with our creamy, handcrafted ice cream, available in a variety of irresistible flavors, guaranteed to satisfy your cravings and cool you down on a hot day', '7.50', 'summer-dessert-sweet-ice-cream.jpg', 2),
(5, 'Coffee', 'Start your day right with the rich aroma and bold flavor of our freshly brewed coffee, expertly roasted and meticulously prepared to awaken your senses and fuel your day', '5.00', 'coffee.jpeg', 3),
(6, 'Ice Tea', 'Quench your thirst with our refreshing iced tea, brewed to perfection and infused with hints of citrus or fruity flavors, providing a revitalizing burst of coolness with every sip', '3.20', '76643_ice_tea.jpg', 3),
(7, 'Bucatini', 'Delight in the simplicity of Italian cuisine with our Bucatini pasta, cooked al dente and tossed in a savory sauce', '20.00', 'macaroni.jpeg', 4),
(8, 'Cannelloni', 'Indulge in layers of tender pasta stuffed with a delectable filling of seasoned meats or creamy ricotta cheese, baked to perfection and topped with luscious tomato sauce and melted cheese', '10.00', 'cooked_pasta.jpeg', 4),
(9, 'Margherita', 'Experience the timeless perfection of Italian pizza with our Margherita, featuring a thin crust topped with vibrant tomato sauce and fragrant basil leaves for a burst of freshness', '24.00', 'pizza.jpeg', 5),
(11, 'Moroccan Tajine', 'Delight in the rich and complex flavors of Morocco with our Tajine, a traditional slow-cooked stew brimming with succulent meats or vegetables', '20.00', '58146_Moroccan Chicken Tagine.jpeg', 8),
(12, 'Moroccan Bissara', 'Bissara is a traditional Moroccan dish made from dried split fava beans (also known as broad beans) that are cooked and blended into a smooth and flavorful soup.', '10.00', '61959_Bissara.jpg', 8),
(16, 'Couscous', 'ransport your taste buds to the vibrant streets of North Africa with our Couscous, a versatile and fluffy grain dish made from steamed semolina, paired with a vegetables, and tender meats', '20.00', '76635_57738_w1024h768c1cx256cy192.jpg', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_categories`
--

CREATE TABLE `menu_categories` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menu_categories`
--

INSERT INTO `menu_categories` (`category_id`, `category_name`) VALUES
(1, 'burgers'),
(2, 'desserts'),
(3, 'drinks'),
(4, 'pasta'),
(5, 'pizzas'),
(6, 'salads'),
(8, 'Traditional Food');

-- --------------------------------------------------------

--
-- Struktur dari tabel `placed_orders`
--

CREATE TABLE `placed_orders` (
  `order_id` int(5) NOT NULL,
  `order_time` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivered` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `placed_orders`
--

INSERT INTO `placed_orders` (`order_id`, `order_time`, `client_id`, `delivery_address`, `delivered`, `canceled`, `cancellation_reason`) VALUES
(1, '2024-05-03 04:49:00', 1, 'Sekret HIMTI', 1, 0, NULL),
(2, '2024-05-03 05:02:00', 3, 'Sekret HIMTI', 0, 1, 'Out of Stock');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(5) NOT NULL,
  `date_created` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `selected_time` datetime NOT NULL,
  `nbr_guests` int(2) NOT NULL,
  `table_id` int(3) NOT NULL,
  `liberated` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `date_created`, `client_id`, `selected_time`, `nbr_guests`, `table_id`, `liberated`, `canceled`, `cancellation_reason`) VALUES
(1, '2024-05-03 04:54:00', 2, '2024-05-10 20:00:00', 2, 1, 0, 0, NULL),
(2, '2024-05-03 05:05:00', 4, '2024-05-10 20:00:00', 1, 2, 0, 0, NULL),
(3, '2024-05-03 06:12:00', 5, '2024-05-30 10:00:00', 4, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tables`
--

CREATE TABLE `tables` (
  `table_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tables`
--

INSERT INTO `tables` (`table_id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `full_name`, `password`) VALUES
(1, 'admin', 'user_admin@gmail.com', 'User Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Struktur dari tabel `website_settings`
--

CREATE TABLE `website_settings` (
  `option_id` int(5) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `website_settings`
--

INSERT INTO `website_settings` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'restaurant_name', 'RTC Pizza & Pasta'),
(2, 'restaurant_email', 'contact@rtcpizzeria.com'),
(3, 'admin_email', 'contact.admin@rtcpizzeria.com'),
(4, 'restaurant_phonenumber', '+6288291547071'),
(5, 'restaurant_address', '21 Menjangan Street, East Ciputat, South Tangerang, 15412 - IND');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indeks untuk tabel `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`image_id`);

--
-- Indeks untuk tabel `in_order`
--
ALTER TABLE `in_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu` (`menu_id`),
  ADD KEY `fk_order` (`order_id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `FK_menu_category_id` (`category_id`);

--
-- Indeks untuk tabel `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_client` (`client_id`);

--
-- Indeks untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indeks untuk tabel `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`option_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `image_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `in_order`
--
ALTER TABLE `in_order`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `placed_orders`
--
ALTER TABLE `placed_orders`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `option_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `in_order`
--
ALTER TABLE `in_order`
  ADD CONSTRAINT `fk_menu` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`menu_id`),
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `placed_orders` (`order_id`);

--
-- Ketidakleluasaan untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `FK_menu_category_id` FOREIGN KEY (`category_id`) REFERENCES `menu_categories` (`category_id`);

--
-- Ketidakleluasaan untuk tabel `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
