-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2021 г., 13:34
-- Версия сервера: 10.0.38-MariaDB
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `syrpp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dokumenta`
--

CREATE TABLE `dokumenta` (
  `Kod_Dokumenta` int(11) NOT NULL,
  `Naimenovaniya` varchar(30) NOT NULL,
  `Ssylki` varchar(30) NOT NULL,
  `Vid_dokumenty` int(11) NOT NULL,
  `Data_dokumenty` date NOT NULL,
  `ID_vid_dokumenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dokumenta`
--

INSERT INTO `dokumenta` (`Kod_Dokumenta`, `Naimenovaniya`, `Ssylki`, `Vid_dokumenty`, `Data_dokumenty`, `ID_vid_dokumenta`) VALUES
(1, 'Форма по ОКУД 0211151', '(https://yandex.ru)', 3, '2021-03-23', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `educational_program`
--

CREATE TABLE `educational_program` (
  `Kod_educational` int(11) NOT NULL,
  `Naimenovaniye_akkredituyushchey_organizatsii` varchar(100) DEFAULT NULL,
  `level_obrazov` varchar(50) DEFAULT NULL,
  `Srok_deystviya_professional'no-obshchestvennoy_akkreditatsii` date DEFAULT NULL,
  `Srok_deystviya_gosudarstvennoy` date DEFAULT NULL,
  `Forma_obucheniya` varchar(30) DEFAULT NULL,
  `ID_formy` int(11) DEFAULT NULL,
  `Kod_specialties` int(11) DEFAULT NULL,
  `Kod_level` int(11) DEFAULT NULL,
  `Srok_obucheniya` varchar(10) DEFAULT NULL,
  `DOkonch_obuch` date DEFAULT NULL,
  `YAzyk_obucheniya` varchar(30) DEFAULT NULL,
  `Qualification` varchar(30) DEFAULT NULL,
  `Adaptirovannaya` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `educational_program`
--

INSERT INTO `educational_program` (`Kod_educational`, `Naimenovaniye_akkredituyushchey_organizatsii`, `level_obrazov`, `Srok_deystviya_professional'no-obshchestvennoy_akkreditatsii`, `Srok_deystviya_gosudarstvennoy`, `Forma_obucheniya`, `ID_formy`, `Kod_specialties`, `Kod_level`, `Srok_obucheniya`, `DOkonch_obuch`, `YAzyk_obucheniya`, `Qualification`, `Adaptirovannaya`) VALUES
(1, 'Сириус', 'Среднее профессиональное', NULL, NULL, 'Очная', NULL, NULL, NULL, '4 года', '2021-07-03', 'Русский', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `forma_obucheniya`
--

CREATE TABLE `forma_obucheniya` (
  `ID_formy` int(11) NOT NULL,
  `Nazvaniye_Forma` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `forma_obucheniya`
--

INSERT INTO `forma_obucheniya` (`ID_formy`, `Nazvaniye_Forma`) VALUES
(1, 'Свтиер');

-- --------------------------------------------------------

--
-- Структура таблицы `level_education`
--

CREATE TABLE `level_education` (
  `Kod_urovnya` int(11) NOT NULL,
  `Name_Level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `level_education`
--

INSERT INTO `level_education` (`Kod_urovnya`, `Name_Level`) VALUES
(1, 'Высшее образование-бакалавриат');

-- --------------------------------------------------------

--
-- Структура таблицы `specialty`
--

CREATE TABLE `specialty` (
  `Kod_Specialty` int(11) NOT NULL,
  `Naimenovaniye_professii` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `specialty`
--

INSERT INTO `specialty` (`Kod_Specialty`, `Naimenovaniye_professii`) VALUES
(1, 'Врач');

-- --------------------------------------------------------

--
-- Структура таблицы `viddokumenta`
--

CREATE TABLE `viddokumenta` (
  `ID_vida_dokumenta` int(11) NOT NULL,
  `Kod_educational` int(11) DEFAULT NULL,
  `naim_accrOrgan` varchar(100) DEFAULT NULL,
  `Naimenovaniye_vida_dokumenta` varchar(30) NOT NULL,
  `Srok_deystviya_professional_no-obshchestvennoy_akkreditatsi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `viddokumenta`
--

INSERT INTO `viddokumenta` (`ID_vida_dokumenta`, `Kod_educational`, `naim_accrOrgan`, `Naimenovaniye_vida_dokumenta`, `Srok_deystviya_professional_no-obshchestvennoy_akkreditatsi`) VALUES
(1, 1, 'Сириус', 'Свидетельство', '2021-03-29');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dokumenta`
--
ALTER TABLE `dokumenta`
  ADD PRIMARY KEY (`Kod_Dokumenta`),
  ADD KEY `ID_vid_dokumenta` (`ID_vid_dokumenta`),
  ADD KEY `Vid_dokumenty` (`Vid_dokumenty`);

--
-- Индексы таблицы `educational_program`
--
ALTER TABLE `educational_program`
  ADD PRIMARY KEY (`Kod_educational`),
  ADD KEY `Kod_level` (`Kod_level`),
  ADD KEY `Kod_specialties` (`Kod_specialties`),
  ADD KEY `ID_formy` (`ID_formy`);

--
-- Индексы таблицы `forma_obucheniya`
--
ALTER TABLE `forma_obucheniya`
  ADD PRIMARY KEY (`ID_formy`);

--
-- Индексы таблицы `level_education`
--
ALTER TABLE `level_education`
  ADD PRIMARY KEY (`Kod_urovnya`);

--
-- Индексы таблицы `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`Kod_Specialty`);

--
-- Индексы таблицы `viddokumenta`
--
ALTER TABLE `viddokumenta`
  ADD PRIMARY KEY (`ID_vida_dokumenta`),
  ADD KEY `Kod_educational` (`Kod_educational`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dokumenta`
--
ALTER TABLE `dokumenta`
  MODIFY `Kod_Dokumenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `educational_program`
--
ALTER TABLE `educational_program`
  MODIFY `Kod_educational` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `forma_obucheniya`
--
ALTER TABLE `forma_obucheniya`
  MODIFY `ID_formy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `level_education`
--
ALTER TABLE `level_education`
  MODIFY `Kod_urovnya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `specialty`
--
ALTER TABLE `specialty`
  MODIFY `Kod_Specialty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `viddokumenta`
--
ALTER TABLE `viddokumenta`
  MODIFY `ID_vida_dokumenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `viddokumenta`
--
ALTER TABLE `viddokumenta`
  ADD CONSTRAINT `viddokumenta_ibfk_1` FOREIGN KEY (`Kod_educational`) REFERENCES `educational_program` (`Kod_educational`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
