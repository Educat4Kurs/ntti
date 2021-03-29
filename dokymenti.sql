-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2021 г., 00:40
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dokymenti`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dokymeti1`
--

CREATE TABLE `dokymeti1` (
  `kod_dokymenti` int(11) NOT NULL,
  `naim` varchar(50) NOT NULL,
  `ssilki` varchar(80) NOT NULL,
  `vid_dokymenti` varchar(100) NOT NULL,
  `data_dokymenti` date NOT NULL,
  `sw_vida_dok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dokymeti1`
--

INSERT INTO `dokymeti1` (`kod_dokymenti`, `naim`, `ssilki`, `vid_dokymenti`, `data_dokymenti`, `sw_vida_dok`) VALUES
(1, '', 'https://www.timacad.ru/sveden/files/Ustav-izmenen-2020.pdf', 'Устав', '2020-03-01', 1),
(2, '', 'https://www.timacad.ru/sveden/files/PologOFiliale.pdf', 'Положение', '2020-02-22', 2),
(3, '', 'https://www.timacad.ru/sveden/files/accreditation.pdf', 'Свидетельство', '2019-11-22', 3),
(4, '', 'https://www.timacad.ru/sveden/files/90-29-168_Pravila_vnutrennego_rasporyadka_ob', 'Общие положения', '2018-11-22', 4),
(5, '', 'https://www.timacad.ru/sveden/files/prav-vnutr-rasporyadka-2019.pdf', 'Правила внутреннего', '2018-11-22', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `spec1`
--

CREATE TABLE `spec1` (
  `kod_spec` int(11) NOT NULL,
  `nazvanie_spec` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spec1`
--

INSERT INTO `spec1` (`kod_spec`, `nazvanie_spec`) VALUES
(1, 'Финансы и кредит'),
(2, 'Бухгалтерский учёт'),
(3, 'Социальная работа');

-- --------------------------------------------------------

--
-- Структура таблицы `trydoystroistve`
--

CREATE TABLE `trydoystroistve` (
  `kod_trydoystroistve` int(11) NOT NULL,
  `god` date NOT NULL,
  `kol_vo_vipysknikov` decimal(10,0) NOT NULL,
  `kol_vo_trydost` decimal(10,0) NOT NULL,
  `kod_spec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `trydoystroistve`
--

INSERT INTO `trydoystroistve` (`kod_trydoystroistve`, `god`, `kol_vo_vipysknikov`, `kol_vo_trydost`, `kod_spec`) VALUES
(1, '2020-09-01', '1', '2', 1),
(2, '2020-03-01', '3', '4', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `viddokymenta1`
--

CREATE TABLE `viddokymenta1` (
  `sw_vid_dok` int(11) NOT NULL,
  `naim_vida_dok` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `viddokymenta1`
--

INSERT INTO `viddokymenta1` (`sw_vid_dok`, `naim_vida_dok`) VALUES
(1, 'Устав образовательной организации'),
(2, 'Лицензия на осуществление образовательной'),
(3, 'Свидетельство о государственной аккредитации (с приложениями)'),
(4, 'План финансово-хозяйственной деятельности образовательной организации'),
(5, 'Локальные нормативные акты, регламентирующие'),
(6, 'Отчет о результатах самообследования'),
(7, 'Документ о порядке оказания платных образовательных услуг'),
(8, 'Документ об установлении размера платы'),
(9, 'Предписания органов, осуществляющих государственный контроль (надзор) в сфере \r\nобразования');

-- --------------------------------------------------------

--
-- Структура таблицы `vid_zdaniya`
--

CREATE TABLE `vid_zdaniya` (
  `ID_vida_zdaniya` int(11) NOT NULL,
  `naim_vida_zdaniya` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vid_zdaniya`
--

INSERT INTO `vid_zdaniya` (`ID_vida_zdaniya`, `naim_vida_zdaniya`) VALUES
(1, 'вапывфа'),
(2, 'вапва');

-- --------------------------------------------------------

--
-- Структура таблицы `zdanie1`
--

CREATE TABLE `zdanie1` (
  `kod_zdanie` int(11) NOT NULL,
  `naim_obekta` varchar(100) NOT NULL,
  `adres_mest` varchar(100) NOT NULL,
  `kol_vo_koiko_mest` decimal(10,0) NOT NULL,
  `obshaya_jilaya` decimal(10,0) NOT NULL,
  `prisposob` varchar(500) NOT NULL,
  `obshaya_ploshad` varchar(100) NOT NULL,
  `jilaya_ploshad` varchar(100) NOT NULL,
  `kol_vo_ploshad` decimal(10,0) NOT NULL,
  `ID_vida_zdaniya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `zdanie1`
--

INSERT INTO `zdanie1` (`kod_zdanie`, `naim_obekta`, `adres_mest`, `kol_vo_koiko_mest`, `obshaya_jilaya`, `prisposob`, `obshaya_ploshad`, `jilaya_ploshad`, `kol_vo_ploshad`, `ID_vida_zdaniya`) VALUES
(1, 'Общежитие № 9', '127550 г. Москва, аллея Верхняя, д. 1', '1', '2', 'Для беспрепятственного доступа  инвалидов  и лиц с ограниченными возможностями здоровья в общежитие № 9 оборудован пандус, дверные проёмы доступной ширины.', '128299,6', '66184,80', '9966', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dokymeti1`
--
ALTER TABLE `dokymeti1`
  ADD PRIMARY KEY (`kod_dokymenti`,`sw_vida_dok`),
  ADD KEY `sw_vida_dok` (`sw_vida_dok`);

--
-- Индексы таблицы `spec1`
--
ALTER TABLE `spec1`
  ADD PRIMARY KEY (`kod_spec`);

--
-- Индексы таблицы `trydoystroistve`
--
ALTER TABLE `trydoystroistve`
  ADD PRIMARY KEY (`kod_spec`);

--
-- Индексы таблицы `viddokymenta1`
--
ALTER TABLE `viddokymenta1`
  ADD PRIMARY KEY (`sw_vid_dok`);

--
-- Индексы таблицы `vid_zdaniya`
--
ALTER TABLE `vid_zdaniya`
  ADD PRIMARY KEY (`ID_vida_zdaniya`);

--
-- Индексы таблицы `zdanie1`
--
ALTER TABLE `zdanie1`
  ADD PRIMARY KEY (`kod_zdanie`,`ID_vida_zdaniya`),
  ADD KEY `ID_vida_zdaniya` (`ID_vida_zdaniya`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `dokymeti1`
--
ALTER TABLE `dokymeti1`
  ADD CONSTRAINT `dokymeti1_ibfk_1` FOREIGN KEY (`sw_vida_dok`) REFERENCES `viddokymenta1` (`sw_vid_dok`);

--
-- Ограничения внешнего ключа таблицы `trydoystroistve`
--
ALTER TABLE `trydoystroistve`
  ADD CONSTRAINT `trydoystroistve_ibfk_1` FOREIGN KEY (`kod_spec`) REFERENCES `spec1` (`kod_spec`);

--
-- Ограничения внешнего ключа таблицы `zdanie1`
--
ALTER TABLE `zdanie1`
  ADD CONSTRAINT `zdanie1_ibfk_1` FOREIGN KEY (`ID_vida_zdaniya`) REFERENCES `vid_zdaniya` (`ID_vida_zdaniya`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
