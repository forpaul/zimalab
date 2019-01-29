-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 29 2019 г., 12:56
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zimalab`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `position` varchar(30) NOT NULL,
  `mobile_phone` varchar(12) NOT NULL,
  `home_phone` varchar(12) NOT NULL,
  `work_phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `company_name`, `position`, `mobile_phone`, `home_phone`, `work_phone`) VALUES
(104, 'blabla', 'blabla', 'bla@mail.ru', 'Front', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '9659993454', '9659993454'),
(105, 'blabla', 'blabla', 'bla@mail.ru', 'Front', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '9659993454', '9659993454'),
(106, 'qwe', 'asd', 'socseti48@gmail.com', 'Front', 'Ð¡Ð°Ð¼Ð°Ñ€Ð°', '9659993454', '3333', '9659993454'),
(107, 'Nikita', 'Tarasov', 'socseti48@gmail.com', 'Front', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '2123', '9659993454'),
(108, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(109, 'Nikita', 'Tarasov', 'socseti48@gmail.com', 'Front', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '9659993454', '9659993454'),
(110, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(111, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(112, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(113, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(114, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(115, 'Nikita', 'Tarasov', 'socseti48@gmail.com', 'Front', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '9659993454', '9659993454'),
(116, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(117, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(118, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(119, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(120, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(121, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(122, 'Nikita', 'Tarasov', 'socseti48@gmail.com', '', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '', ''),
(123, 'asdasdasd', '1111123123', 'socseti48@gmail.com', 'Front', 'ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', '9659993454', '9659993454', '9659993454');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
