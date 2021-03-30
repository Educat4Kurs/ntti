-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 30 2021 г., 18:45
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
-- База данных: `environment`
--

-- --------------------------------------------------------

--
-- Структура таблицы `health`
--

CREATE TABLE `health` (
  `Kod_heal` int(11) NOT NULL,
  `ObjName` varchar(150) NOT NULL,
  `ObjAddress` varchar(150) NOT NULL,
  `ObjSq` int(11) NOT NULL,
  `ObjCnt` int(11) NOT NULL,
  `ObjOvz` varchar(500) NOT NULL,
  `Kod_meal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `health`
--

INSERT INTO `health` (`Kod_heal`, `ObjName`, `ObjAddress`, `ObjSq`, `ObjCnt`, `ObjOvz`, `Kod_meal`) VALUES
(1, 'Здравпункт в кампусе главного здания РГГУ', 'г.Москва, Миусская пл., д.6, корп.2, этаж 1, каб.105', 42, 4, 'Здравпункт оборудован пандусами, инвалидным креслом, а также специализированной многофункциональной медицинской кроватью.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `meals`
--

CREATE TABLE `meals` (
  `Kod_meal` int(11) NOT NULL,
  `ObjName` varchar(150) NOT NULL,
  `ObjAddress` varchar(150) NOT NULL,
  `ObjSq` int(11) NOT NULL,
  `ObjCnt` int(11) NOT NULL,
  `ObjOvz` varchar(500) NOT NULL,
  `Kod_pusp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `meals`
--

INSERT INTO `meals` (`Kod_meal`, `ObjName`, `ObjAddress`, `ObjSq`, `ObjCnt`, `ObjOvz`, `Kod_pusp`) VALUES
(1, 'Столовая и буфет', '	г.Москва, Миусская пл., д. 6, корпуса 6,7, этаж 1', 450, 320, 'Наличие пандуса на входе в корпус,  сменные ходунки и инвалидное кресло.', 1),
(2, 'Буфет Интернет-кафе', 'г.Москва, Миусская пл., д. 6, корпус 6, этаж 1', 203, 60, 'Наличие пандуса на входе в корпус,  специализированные столы для инвалидов-колясочников, сменные ходунки и инвалидное кресло.', 2),
(3, 'Буфет Ротонда', 'г.Москва, Миусская пл., д. 6, корпус 6, этаж 1', 111, 20, 'Наличие пандуса на входе в корпус,  специализированные столы для инвалидов-колясочников, сменные ходунки и инвалидное кресло.', 3),
(4, 'Буфет', 'г.Москва, Миусская пл., д. 6, корпус 2, этаж 5', 81, 40, 'Наличие пандуса на входе в корпус, специализированные столы для инвалидов-колясочников, сменные ходунки и инвалидное кресло.', 1),
(5, 'Столовая', 'г.Москва, ул. Кировоградская, д. 25, корпус 1, этаж 1', 139, 50, '	Наличие пандуса на входе в корпус, специализированные столы для инвалидов-колясочников, сменные ходунки и инвалидное кресло.', 2),
(6, 'Буфет', 'г.Москва, ул. Никольская, д.15, стр. 1, цокольный этаж', 166, 50, 'Да', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `purposecab`
--

CREATE TABLE `purposecab` (
  `Kod_puca` int(11) NOT NULL,
  `AddressCab` varchar(150) NOT NULL,
  `NameCab` varchar(150) NOT NULL,
  `OsnCab` varchar(500) NOT NULL,
  `OvzCab` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `purposecab`
--

INSERT INTO `purposecab` (`Kod_puca`, `AddressCab`, `NameCab`, `OsnCab`, `OvzCab`) VALUES
(1, 'Миусская,6 корп 6 – ауд 512 (2 комплекта)', 'Учебный кабинет для студентов с нарушением слуха и зрения', 'Системный блок, защищённый монитор, антивандальная металлическая клавиатура с оптическим трекблоком, комплект для маркировки клавиатуры азбукой Брайля, встроенная индукционная петля', 'Да'),
(2, 'Никольская, 15 – ауд. 1', 'Учебный кабинет для студентов с нарушением слуха и зрения', 'Системный блок, защищённый монитор, антивандальная металлическая клавиатура с оптическим трекблоком, комплект для маркировки клавиатуры азбукой Брайля, встроенная индукционная петля', 'Да'),
(3, 'Кировоградская, 25 – ауд. 26', 'Учебный кабинет для студентов с нарушением слуха и зрения', 'Учебный кабинет для студентов с нарушением слуха и зрения', 'Да');

-- --------------------------------------------------------

--
-- Структура таблицы `purposelibr`
--

CREATE TABLE `purposelibr` (
  `Kod_puli` int(11) NOT NULL,
  `ObjName` varchar(150) NOT NULL,
  `ObjAddress` varchar(150) NOT NULL,
  `ObjSq` int(11) NOT NULL,
  `ObjCnt` int(11) NOT NULL,
  `ObjOvz` varchar(500) NOT NULL,
  `Kod_pupr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `purposelibr`
--

INSERT INTO `purposelibr` (`Kod_puli`, `ObjName`, `ObjAddress`, `ObjSq`, `ObjCnt`, `ObjOvz`, `Kod_pupr`) VALUES
(1, 'Библиотека', 'г.Москва, ул.Чаянова, 15', 88, 212, 'Расширенный дверной проем, наличие лифта у входа в читальный зал и на этажи, где находится библиотека. Компьютер с дисплеем Брайля, принтер шрифтом Брайля, читающее устройство SARA, портативный ручной видео-увеличитель (ЭРВУ) RUBY, видео-увеличитель ручной карманный Aumed Aukey, кнопка компьютерная Smoothie 75', 1),
(2, 'Библиотека', 'г.Москва, ул.Никольская, 15', 211, 52, 'Видео-увеличитель ручной карманный Aumed Aukey, портативный ручной видео-увеличитель (ЭРВУ) RUBY, кнопка компьютерная Smoothie 75', 2),
(3, 'Библиотека', '	г.Москва, ул.Кировоградская, 25', 47, 21, 'Лестнично-гусеничный подъёмник RUBY, наличие пандуса на входе в корпус, видео-увеличитель ручной карманный Aumed Aukey, портативный ручной видео-увеличитель (ЭРВУ) RUBY, кнопка компьютерная Smoothie 75', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `purposeprac`
--

CREATE TABLE `purposeprac` (
  `Kod_pupr` int(11) NOT NULL,
  `AddressPrac` varchar(150) NOT NULL,
  `NamePrac` varchar(150) NOT NULL,
  `OsnPrac` varchar(500) NOT NULL,
  `OvzPrac` varchar(500) NOT NULL,
  `Kod_puca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `purposeprac`
--

INSERT INTO `purposeprac` (`Kod_pupr`, `AddressPrac`, `NamePrac`, `OsnPrac`, `OvzPrac`, `Kod_puca`) VALUES
(1, 'Миусская,6 корп 6 – ауд 512 (2 комплекта)', 'Учебный кабинет для студентов с нарушением слуха и зрения', 'Системный блок, защищённый монитор, антивандальная металлическая клавиатура с оптическим трекблоком, комплект для маркировки клавиатуры азбукой Брайля, встроенная индукционная петля', 'Да', 1),
(2, 'Никольская, 15 – ауд. 1', 'Учебный кабинет для студентов с нарушением слуха и зрения', 'Системный блок, защищённый монитор, антивандальная металлическая клавиатура с оптическим трекблоком, комплект для маркировки клавиатуры азбукой Брайля, встроенная индукционная петля', 'Да', 2),
(3, 'Кировоградская, 25 – ауд. 26', 'Учебный кабинет для студентов с нарушением слуха и зрения', 'Системный блок, защищённый монитор, антивандальная металлическая клавиатура с оптическим трекблоком, комплект для маркировки клавиатуры азбукой Брайля, встроенная индукционная петля', 'Да', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `purposesport`
--

CREATE TABLE `purposesport` (
  `Kod_pusp` int(11) NOT NULL,
  `ObjName` varchar(150) NOT NULL,
  `ObjAddress` varchar(150) NOT NULL,
  `ObjSq` int(11) NOT NULL,
  `ObjCnt` int(11) NOT NULL,
  `ObjOvz` varchar(500) NOT NULL,
  `Kod_puli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `purposesport`
--

INSERT INTO `purposesport` (`Kod_pusp`, `ObjName`, `ObjAddress`, `ObjSq`, `ObjCnt`, `ObjOvz`, `Kod_puli`) VALUES
(1, 'Спортзал ИИНТБ РГГУ', 'г.Москва, ул. Кировоградская, д. 25 корпус 2 (к.206)', 267, 60, 'Да', 1),
(2, 'Открытая спортивная площадка', 'г.Москва, ул. Кировоградская, д. 25, вл.1,2', 200, 90, 'Да', 2),
(3, 'Открытая спортивная площадка', 'г.Москва, Миусская площадь, д.6, между 3 и 4 корп.,', 80, 20, 'Да', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `health`
--
ALTER TABLE `health`
  ADD PRIMARY KEY (`Kod_heal`),
  ADD KEY `Kod_meal` (`Kod_meal`);

--
-- Индексы таблицы `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`Kod_meal`),
  ADD KEY `Kod_pusp` (`Kod_pusp`);

--
-- Индексы таблицы `purposecab`
--
ALTER TABLE `purposecab`
  ADD PRIMARY KEY (`Kod_puca`);

--
-- Индексы таблицы `purposelibr`
--
ALTER TABLE `purposelibr`
  ADD PRIMARY KEY (`Kod_puli`),
  ADD KEY `Kod_pupr` (`Kod_pupr`);

--
-- Индексы таблицы `purposeprac`
--
ALTER TABLE `purposeprac`
  ADD PRIMARY KEY (`Kod_pupr`),
  ADD KEY `Kod_puca` (`Kod_puca`);

--
-- Индексы таблицы `purposesport`
--
ALTER TABLE `purposesport`
  ADD PRIMARY KEY (`Kod_pusp`),
  ADD KEY `Kod_puli` (`Kod_puli`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `health`
--
ALTER TABLE `health`
  MODIFY `Kod_heal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `meals`
--
ALTER TABLE `meals`
  MODIFY `Kod_meal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `purposecab`
--
ALTER TABLE `purposecab`
  MODIFY `Kod_puca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `purposelibr`
--
ALTER TABLE `purposelibr`
  MODIFY `Kod_puli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `purposeprac`
--
ALTER TABLE `purposeprac`
  MODIFY `Kod_pupr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `purposesport`
--
ALTER TABLE `purposesport`
  MODIFY `Kod_pusp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `health`
--
ALTER TABLE `health`
  ADD CONSTRAINT `health_ibfk_1` FOREIGN KEY (`Kod_meal`) REFERENCES `meals` (`Kod_meal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`Kod_pusp`) REFERENCES `purposesport` (`Kod_pusp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `purposelibr`
--
ALTER TABLE `purposelibr`
  ADD CONSTRAINT `purposelibr_ibfk_1` FOREIGN KEY (`Kod_pupr`) REFERENCES `purposeprac` (`Kod_pupr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `purposeprac`
--
ALTER TABLE `purposeprac`
  ADD CONSTRAINT `purposeprac_ibfk_1` FOREIGN KEY (`Kod_puca`) REFERENCES `purposecab` (`Kod_puca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `purposesport`
--
ALTER TABLE `purposesport`
  ADD CONSTRAINT `purposesport_ibfk_1` FOREIGN KEY (`Kod_puli`) REFERENCES `purposelibr` (`Kod_puli`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
