-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 25 2021 г., 17:41
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `denr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kabinetov`
--

CREATE TABLE `kabinetov` (
  `Kod_Kabinetova` int(11) NOT NULL,
  `NaimRfbinet` varchar(50) NOT NULL,
  `Kod_Vida` int(11) NOT NULL,
  `Kod_Pomejenia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kabinetov`
--

INSERT INTO `kabinetov` (`Kod_Kabinetova`, `NaimRfbinet`, `Kod_Vida`, `Kod_Pomejenia`) VALUES
(1, 'Лаборатория БД', 1, 1),
(2, 'Лаборатория ИН рес', 2, 2),
(3, 'Каб соц. дисциплины', 3, 3),
(4, 'Комната', 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oborudovanie`
--

CREATE TABLE `oborudovanie` (
  `Kod_Oborudovanie` int(11) NOT NULL,
  `NaimObject` varchar(30) NOT NULL,
  `Kolicestvo` varchar(30) NOT NULL,
  `God_vspuska` varchar(10) NOT NULL,
  `Kod_Kabinetova` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oborudovanie`
--

INSERT INTO `oborudovanie` (`Kod_Oborudovanie`, `NaimObject`, `Kolicestvo`, `God_vspuska`, `Kod_Kabinetova`) VALUES
(1, 'Монитор', '76', '2018', 1),
(2, 'Компьютер', '27', '2019', 2),
(3, 'Стол', '20', '2020', 3),
(4, 'Стул', '29', '2021', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `pomejenia`
--

CREATE TABLE `pomejenia` (
  `Kod_Pomejenia` int(11) NOT NULL,
  `AdresMestNaxojd` varchar(50) NOT NULL,
  `Plojad` varchar(30) NOT NULL,
  `KolicestvoMest` varchar(30) NOT NULL,
  `Naznacenie` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pomejenia`
--

INSERT INTO `pomejenia` (`Kod_Pomejenia`, `AdresMestNaxojd`, `Plojad`, `KolicestvoMest`, `Naznacenie`) VALUES
(1, 'г. Москва, ул. Лиственничная аллея, 12 Б (СОК)', '760', '76', 'Питер'),
(2, 'г. Москва, ул. Лиственничная аллея, 8А', '109,4', '98', 'Ростов'),
(3, 'г. Москва, ул. Лиственничная аллея, 12 Б (СОК)', '194,5', '20', 'Сочи'),
(4, 'г. Москва, ул. Лиственничная аллея, 16А, корп.2', '287', '29', 'Краснодар');

-- --------------------------------------------------------

--
-- Структура таблицы `vidkabineta`
--

CREATE TABLE `vidkabineta` (
  `Kod_Vida` int(11) NOT NULL,
  `NazvVida` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vidkabineta`
--

INSERT INTO `vidkabineta` (`Kod_Vida`, `NazvVida`) VALUES
(1, 'Лаборатория'),
(2, 'Уч. Кабинет'),
(3, 'Склад'),
(4, 'Жилая комната');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kabinetov`
--
ALTER TABLE `kabinetov`
  ADD PRIMARY KEY (`Kod_Kabinetova`),
  ADD KEY `Kod_Vida` (`Kod_Vida`),
  ADD KEY `Kod_Pomejenia` (`Kod_Pomejenia`);

--
-- Индексы таблицы `oborudovanie`
--
ALTER TABLE `oborudovanie`
  ADD PRIMARY KEY (`Kod_Oborudovanie`),
  ADD KEY `Kod_Kabinetova` (`Kod_Kabinetova`);

--
-- Индексы таблицы `pomejenia`
--
ALTER TABLE `pomejenia`
  ADD PRIMARY KEY (`Kod_Pomejenia`);

--
-- Индексы таблицы `vidkabineta`
--
ALTER TABLE `vidkabineta`
  ADD PRIMARY KEY (`Kod_Vida`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `kabinetov`
--
ALTER TABLE `kabinetov`
  MODIFY `Kod_Kabinetova` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oborudovanie`
--
ALTER TABLE `oborudovanie`
  MODIFY `Kod_Oborudovanie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `pomejenia`
--
ALTER TABLE `pomejenia`
  MODIFY `Kod_Pomejenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `vidkabineta`
--
ALTER TABLE `vidkabineta`
  MODIFY `Kod_Vida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `kabinetov`
--
ALTER TABLE `kabinetov`
  ADD CONSTRAINT `kabinetov_ibfk_1` FOREIGN KEY (`Kod_Vida`) REFERENCES `vidkabineta` (`Kod_Vida`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kabinetov_ibfk_2` FOREIGN KEY (`Kod_Pomejenia`) REFERENCES `pomejenia` (`Kod_Pomejenia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `oborudovanie`
--
ALTER TABLE `oborudovanie`
  ADD CONSTRAINT `oborudovanie_ibfk_1` FOREIGN KEY (`Kod_Kabinetova`) REFERENCES `kabinetov` (`Kod_Kabinetova`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
