-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 03 2018 г., 01:34
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `magaz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id_catalog` int(11) NOT NULL,
  `catalog_name` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `catalog_price` float DEFAULT NULL,
  `catalog_oldprice` float DEFAULT NULL,
  `catalog_anons` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `catalog_foto1` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog_foto2` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog_foto3` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog_accent` enum('new','hot','top','sale') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id_catalog`, `catalog_name`, `catalog_price`, `catalog_oldprice`, `catalog_anons`, `content`, `catalog_foto1`, `catalog_foto2`, `catalog_foto3`, `catalog_accent`) VALUES
(1, 'Имя объекта катлога 1', 300, 400, 'Офигенная вещь, покупай!', 'НЕ просто офигенная вещь, а офигенная, по тому-то и тому-то!', '/img/gallery/1_big.jpg', '/img/gallery/2_big.jpg', '/img/gallery/3_big.jpg', 'new'),
(2, 'Имя объекта катлога 2', 500, 600, 'Офигенная вещь, покупай!2', 'НЕ просто офигенная вещь, а офигенная, по тому-то и тому-то!2', '/img/gallery/4_big.jpg', '/img/gallery/5_big.jpg', '/img/gallery/6_big.jpg', 'hot'),
(3, 'Имя объекта катлога 3', 1000, 1100, 'Офигенная вещь, покупай!3', 'НЕ просто офигенная вещь, а офигенная, по тому-то и тому-то!3', '/img/gallery/7_big.jpg', '/img/gallery/8_big.jpg', '/img/gallery/9_big.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `comment_name` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id_comment`, `comment_name`, `comment_text`) VALUES
(1, 'Вася', 'Этот сайт прекрасен, чуть более, чем полностью!'),
(2, 'Петя', 'Этот сайт уныл, чуть более, чем полностью!'),
(6, 'Иоган Ван Бетховен', 'Этоооот саааааййт !!!! Ла - Ла - Ла - Ла!!!'),
(10, 'Ира', 'Клёвый сайтик - сииииненький!\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `photogal`
--

CREATE TABLE `photogal` (
  `id_img` int(11) NOT NULL,
  `img_url` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_name` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_size` decimal(10,2) NOT NULL,
  `img_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `photogal`
--

INSERT INTO `photogal` (`id_img`, `img_url`, `img_name`, `img_size`, `img_counter`) VALUES
(1, '/img/gallery/1_big.jpg', 'Красотка 1', '97.60', 4),
(2, '/img/gallery/2_big.jpg', 'Красотка 2', '61.30', 5),
(3, '/img/gallery/3_big.jpg', 'Красотка 3', '55.10', 4),
(4, '/img/gallery/4_big.jpg', 'Красотка 4', '444.00', 7),
(5, '/img/gallery/5_big.jpg', 'Красотка 5', '47.40', 7),
(6, '/img/gallery/6_big.jpg', 'Красотка 6', '241.00', 7),
(7, '/img/gallery/7_big.jpg', 'Красотка 7', '36.50', 20),
(8, '/img/gallery/8_big.jpg', 'Красотка 8', '116.00', 2),
(9, '/img/gallery/9_big.jpg', 'Красотка 9', '74.70', 4),
(10, '/img/gallery/10_big.jpg', 'Красотки 10', '123.00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_last_action` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `user_login`, `user_password`, `user_last_action`) VALUES
(1, 'Степан', 'stepan', 'foWxPH0LtZJkc', '2018-06-16 21:00:00'),
(2, 'Вася', 'vasya', 'vasya1', '2018-06-17 22:50:22'),
(14, 'Сеня', 'senya', '1234', '2018-06-17 23:40:21'),
(29, 'Олег', 'oleg', '1234', '2018-06-17 23:49:02'),
(30, 'Влад', 'vlad', 'fovmnUHx5uW0k', '2018-06-17 23:56:43'),
(31, 'Иван', 'ivan', 'fo0wsesdCFQH2', '2018-06-17 23:57:49');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id_catalog`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Индексы таблицы `photogal`
--
ALTER TABLE `photogal`
  ADD PRIMARY KEY (`id_img`),
  ADD UNIQUE KEY `id_img` (`id_img`),
  ADD KEY `id_img_2` (`id_img`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id_catalog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `photogal`
--
ALTER TABLE `photogal`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
