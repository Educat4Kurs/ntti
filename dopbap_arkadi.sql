-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2021 г., 16:17
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
-- База данных: `dopbap_arkadi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kabinet`
--

CREATE TABLE `kabinet` (
  `Kod_kabi` int(11) NOT NULL,
  `NaimKabi` varchar(120) NOT NULL,
  `FitnessHealth` varchar(150) NOT NULL,
  `Kod_typka` int(11) NOT NULL,
  `Kod_prem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kabinet`
--

INSERT INTO `kabinet` (`Kod_kabi`, `NaimKabi`, `FitnessHealth`, `Kod_typka`, `Kod_prem`) VALUES
(1, 'Учебная аудитория для проведения учебных занятий\r\n', ' Индукционная петля для слабо слабослышащих\r\n', 2, 1),
(2, 'Аудитория для лекционных занятий\r\n', 'Сменная трансформирующая кресло-коляска для передвижения по лестничным маршам\r\n', 1, 4),
(3, 'Аудитория для практических занятий\r\n', 'Кнопка вызова\r\n', 4, 3),
(4, 'Аудитория для групповых и индивидуальных консультаций\r\n', 'Вывеска на контрастном фоне\r\n', 5, 2),
(5, 'Аудитория для текущего контроля и промежуточной аттестации\r\n', 'Ширина дверного проема ауд >0,90 м\r\n', 3, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `objectovz`
--

CREATE TABLE `objectovz` (
  `Kod_obje` int(11) NOT NULL,
  `NaimObje` varchar(120) NOT NULL,
  `DameVue` date NOT NULL,
  `Variants` int(11) NOT NULL,
  `Kod_kabi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `objectovz`
--

INSERT INTO `objectovz` (`Kod_obje`, `NaimObje`, `DameVue`, `Variants`, `Kod_kabi`) VALUES
(1, 'Глухие дети\r\n', '2015-05-20', 1, 2),
(2, 'Слабослышащие дети\r\n', '2016-06-12', 1, 4),
(3, 'Слепые дети\r\n', '2020-07-19', 3, 1),
(4, 'Слабовидящие\r\n', '2019-04-20', 2, 3),
(5, 'Дети с речевыми нарушениями \r\n', '2018-08-29', 1, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `premises`
--

CREATE TABLE `premises` (
  `Kod_prem` int(11) NOT NULL,
  `NaimPrem` varchar(120) NOT NULL,
  `AdresIocations` varchar(120) NOT NULL,
  `Square` int(11) NOT NULL,
  `NumberSeats` int(11) NOT NULL,
  `FitnessDisabilities` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `premises`
--

INSERT INTO `premises` (`Kod_prem`, `NaimPrem`, `AdresIocations`, `Square`, `NumberSeats`, `FitnessDisabilities`) VALUES
(1, 'Вестиболь', 'Ростов', 32, 3, 'Ширина дверного проема помещения >0,90 м; входная группа оборудована пандусом, информационным электронным таблом со звуковой и зрительной информацией, кнопкой вызова, поручнями, вывеской с названием и графиком работы организации, выполненными рельефно-точечным шрифтом Брайля и на контрастном фоне, индукционная петля для слабо слышащихся; имеется сменное трансформирующееся кресло-коляска для передвижения по лестничным маршам\r\n'),
(2, 'Обеденный зал', 'Москва', 207, 4, 'Ширина дверного проема помещения >0,90 м; входная группа оборудована кнопкой вызова, информационным электронным таблом со звуковой и зрительной информацией, вывеской с названием и графиком работы организации, выполненными рельефно-точечным шрифтом Брайля и на контрастном фоне индукционная петля для слабо слышащихся'),
(3, 'Гардеров', 'Волгодонск', 5, 4, 'Ширина дверного проема помещения >0,90 м; входная группа оборудована пандусом, информационным электронным таблом со звуковой и зрительной информацией, кнопкой вызова, поручнями, вывеской с названием и графиком работы организации, выполненными рельефно-точечным шрифтом Брайля и на контрастном фоне, индукционная петля для слабо слышащихся\n\n'),
(4, 'Бар', 'санкт-петербург', 14, 5, 'Ширина дверного проема помещения >0,90 м; входная группа оборудована поручнями, информационным электронным таблом со звуковой и зрительной информацией, кнопкой вызова, вывеской с названием и графиком работы организации, выполненными рельефно-точечным шрифтом Брайля и на контрастном фоне, индукционная петля для слабо слышащихся; имеется сменное трансформирующееся кресло-коляска для передвижения по лестничным маршам'),
(5, 'Моечная', 'Омск', 25, 8, 'Ширина дверного проема помещения >0,90 м; входная группа оборудована пандусом, информационным электронным таблом со звуковой и зрительной информацией,поручнями, кнопкой вызова, вывеской с названием и графиком работы организации, выполненными рельефно-точечным шрифтом Брайля и на контрастном фоне, индукционная петля для слабо слышащихся; имеется сменное трансформирующееся кресло-коляска для передвижения по лестничным маршам');

-- --------------------------------------------------------

--
-- Структура таблицы `typekab`
--

CREATE TABLE `typekab` (
  `Kod_typka` int(11) NOT NULL,
  `NaimTyp` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `typekab`
--

INSERT INTO `typekab` (`Kod_typka`, `NaimTyp`) VALUES
(1, 'Фурнитура(комплектуюше)\r\n'),
(2, 'Химия для окон\r\n'),
(3, 'Набор профессионала\r\n'),
(4, 'Крепежный материал\r\n'),
(5, 'Измерительный приборы\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kabinet`
--
ALTER TABLE `kabinet`
  ADD PRIMARY KEY (`Kod_kabi`),
  ADD KEY `Kod_typka` (`Kod_typka`),
  ADD KEY `Kod_prem` (`Kod_prem`);

--
-- Индексы таблицы `objectovz`
--
ALTER TABLE `objectovz`
  ADD PRIMARY KEY (`Kod_obje`),
  ADD KEY `Kod_kabi` (`Kod_kabi`);

--
-- Индексы таблицы `premises`
--
ALTER TABLE `premises`
  ADD PRIMARY KEY (`Kod_prem`);

--
-- Индексы таблицы `typekab`
--
ALTER TABLE `typekab`
  ADD PRIMARY KEY (`Kod_typka`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `kabinet`
--
ALTER TABLE `kabinet`
  MODIFY `Kod_kabi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `objectovz`
--
ALTER TABLE `objectovz`
  MODIFY `Kod_obje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `premises`
--
ALTER TABLE `premises`
  MODIFY `Kod_prem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `typekab`
--
ALTER TABLE `typekab`
  MODIFY `Kod_typka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `kabinet`
--
ALTER TABLE `kabinet`
  ADD CONSTRAINT `kabinet_ibfk_1` FOREIGN KEY (`Kod_typka`) REFERENCES `typekab` (`Kod_typka`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kabinet_ibfk_2` FOREIGN KEY (`Kod_prem`) REFERENCES `premises` (`Kod_prem`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `objectovz`
--
ALTER TABLE `objectovz`
  ADD CONSTRAINT `objectovz_ibfk_1` FOREIGN KEY (`Kod_kabi`) REFERENCES `kabinet` (`Kod_kabi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
