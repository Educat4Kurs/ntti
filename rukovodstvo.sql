-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2021 г., 15:59
-- Версия сервера: 5.6.47
-- Версия PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rukovodstvo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `disciplina`
--

CREATE TABLE `disciplina` (
  `idD` int(11) NOT NULL,
  `nameD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idP` int(11) NOT NULL,
  `colChD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `disciplina`
--

INSERT INTO `disciplina` (`idD`, `nameD`, `idP`, `colChD`) VALUES
(1, 'Безопасность жизнедеятельности; Биология; Химия', 1, 50),
(2, 'Внешнее электроснабжение промышленных и гражданских зданий;\r\nВнутреннее электроснабжение промышленны', 2, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `filial`
--

CREATE TABLE `filial` (
  `idF` int(11) NOT NULL,
  `nameF` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneF` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailF` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `filial`
--

INSERT INTO `filial` (`idF`, `nameF`, `address`, `phoneF`, `emailF`) VALUES
(1, 'Институт технологий (филиал) федерального государственного бюджетного образовательного учреждения высшего образования «Донской государственный технический университет» в г. Волгодонске Ростовской обла', 'Ростовская область, г. Волгодонск, пр-кт Мира, 16', '8(863) 923 55 51', 'spu-61@donstu.ru'),
(2, 'Технологический институт (филиал) федерального государственного бюджетного образовательного учреждения высшего образования «Донской государственный технический университет» в г. Азове Ростовской облас', '346780, Южный федеральный округ, Ростовская област', '8(863) 424 18 15', 'spu-54@donstu.ru, secretar@ati'),
(3, 'Политехнический институт (филиал) федерального государственного бюджетного образовательного учреждения высшего образования «Донской государственный технический университет» в г. Таганроге Ростовской о', '347904 Россия, Ростовская область, г. Таганрог, ул', '8(863) 461 18 33', 'politex@donstu.ru'),
(4, 'Технологический институт сервиса (филиал) федерального государственного бюджетного образовательного учреждения высшего образования «Донской государственный технический университет» в г. Ставрополе Ста', ' г. Ставрополь, пр-т Кулакова, 41/1', '8(865) 239 69 96', 'mail@stis.su'),
(5, 'Институт сферы обслуживания и предпринимательства (филиал) федерального государственного бюджетного образовательного учреждения высшего образования «Донской государственный технический университет» в ', 'ул. Шевченко, 147, г. Шахты, Ростовская обл., 3465', '8(863) 622 20 37', 'stradanchenko@sssu.ru; mail@ss');

-- --------------------------------------------------------

--
-- Структура таблицы `povkval`
--

CREATE TABLE `povkval` (
  `idKv` int(11) NOT NULL,
  `nameK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colChK` int(11) NOT NULL,
  `vidDok` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `srokK` date NOT NULL,
  `idP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `povkval`
--

INSERT INTO `povkval` (`idKv`, `nameK`, `colChK`, `vidDok`, `srokK`, `idP`) VALUES
(1, 'Комплексное сопровождение образовательного процесса инвалидов и лиц с ограниченными возможностями', 72, 'Удостоверение Номер : 612400009482 Дата выдачи : 2', '2021-03-07', 1),
(2, 'Инновационные профессионально-педагогические технологии в образовательных организациях', 72, 'Диплом Номер : ПП 01268', '2021-03-07', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `prepod`
--

CREATE TABLE `prepod` (
  `idP` int(11) NOT NULL,
  `FIOP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dolznostP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uroven` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kvalif` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ucSt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ucZv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameNapPod` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staz` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stazSp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `prepod`
--

INSERT INTO `prepod` (`idP`, `FIOP`, `dolznostP`, `uroven`, `kvalif`, `ucSt`, `ucZv`, `nameNapPod`, `staz`, `stazSp`, `idF`) VALUES
(1, 'Афанасьева Татьяна Ивановна', 'Преподаватель', 'Высшее образование', 'биолог, преподаватель биологи и химии', 'Без ученой степени', 'Без учёного звания', 'Биология', '50 лет 10 месяцев', '46 лет 1 месяц', 1),
(2, 'АХМЕДОВ РАФИК АХМЕДОВИЧ', 'Преподаватель', 'Высшее образование', 'Инженер - электрик', 'Без ученой степени', 'Без учёного звания', ' звания	Электроснабжение промышленных предприятий', '34 года 5 месяцев', '46 лет 1 месяц', 1),
(3, 'Барский Роберт Андреевич', 'Преподаватель', 'Высшее образование / Высшее образование', 'Инженер-экономист Иностранные языки', 'Без ученой степени', 'Без учёного звания\r\n\r\n', 'техник-электрик Учитель английского и немецкого языков', '48 лет 1 месяц', '21 год 1 месяц', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `rukovodstvo`
--

CREATE TABLE `rukovodstvo` (
  `idR` int(11) NOT NULL,
  `imageR` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dolznostR` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneR` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailR` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rukovodstvo`
--

INSERT INTO `rukovodstvo` (`idR`, `imageR`, `dolznostR`, `FIO`, `phoneR`, `emailR`, `idF`) VALUES
(1, '', 'Ректор, председатель Ученого совета, научный руководитель аспирантов', 'МЕСХИ БЕСАРИОН ЧОХОЕВИЧ', '8(863) 273 85 25', 'reception@donstu.ru', 1),
(2, 'q2.jpg', 'проректор по учебной работе', 'ГУСЬКОВ АНДРЕЙ ИГОРЕВИЧ', '8(863) 273 85 25', 'dwwd@dfef.com', 1),
(3, 'q3.jpg', 'проректор по учебной работе и непрерывному образованию', 'ПОНОМАРЕВА СВЕТЛАНА ВИКТОРОВНА', '8(863) 273 85 25', 'dwwd@dfef.com', 1),
(4, 'q4.jpg', 'проректор по учебной работе и подготовке кадров высшей квалификации', 'БЕСКОПЫЛЬНЫЙ АЛЕКСЕЙ НИКОЛАЕВИЧ', '8(863) 273 85 25', 'dwwd@dfef.com', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idD`),
  ADD KEY `idP` (`idP`);

--
-- Индексы таблицы `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`idF`);

--
-- Индексы таблицы `povkval`
--
ALTER TABLE `povkval`
  ADD PRIMARY KEY (`idKv`),
  ADD KEY `idP` (`idP`);

--
-- Индексы таблицы `prepod`
--
ALTER TABLE `prepod`
  ADD PRIMARY KEY (`idP`),
  ADD KEY `idF` (`idF`);

--
-- Индексы таблицы `rukovodstvo`
--
ALTER TABLE `rukovodstvo`
  ADD PRIMARY KEY (`idR`),
  ADD KEY `idF` (`idF`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `idD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `filial`
--
ALTER TABLE `filial`
  MODIFY `idF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `povkval`
--
ALTER TABLE `povkval`
  MODIFY `idKv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `prepod`
--
ALTER TABLE `prepod`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `rukovodstvo`
--
ALTER TABLE `rukovodstvo`
  MODIFY `idR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`idP`) REFERENCES `prepod` (`idP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `povkval`
--
ALTER TABLE `povkval`
  ADD CONSTRAINT `povkval_ibfk_1` FOREIGN KEY (`idP`) REFERENCES `prepod` (`idP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `prepod`
--
ALTER TABLE `prepod`
  ADD CONSTRAINT `prepod_ibfk_1` FOREIGN KEY (`idF`) REFERENCES `filial` (`idF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rukovodstvo`
--
ALTER TABLE `rukovodstvo`
  ADD CONSTRAINT `rukovodstvo_ibfk_1` FOREIGN KEY (`idF`) REFERENCES `filial` (`idF`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
