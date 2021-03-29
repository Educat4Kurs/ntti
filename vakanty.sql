-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2021 г., 15:58
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
-- База данных: `vakanty`
--

-- --------------------------------------------------------

--
-- Структура таблицы `documents11`
--

CREATE TABLE `documents11` (
  `id_docum` int(11) NOT NULL,
  `naim` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `date_docum` date DEFAULT NULL,
  `id_vidDocum` int(11) DEFAULT NULL,
  `itemprop` varchar(255) DEFAULT NULL,
  `id_op` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `documents11`
--

INSERT INTO `documents11` (`id_docum`, `naim`, `link`, `date_docum`, `id_vidDocum`, `itemprop`, `id_op`) VALUES
(1, 'Правила пожарной безопасности', '-', '2021-03-20', 1, 'Описание правил безопасности', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `grupp`
--

CREATE TABLE `grupp` (
  `id_grupp` int(11) NOT NULL,
  `name_gr` varchar(100) DEFAULT NULL,
  `id_op` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `grupp`
--

INSERT INTO `grupp` (`id_grupp`, `name_gr`, `id_op`) VALUES
(1, 'Сириус', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `info_perevod_otch`
--

CREATE TABLE `info_perevod_otch` (
  `id_info` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `naim_spec` varchar(100) NOT NULL,
  `level_obraz` varchar(100) NOT NULL,
  `form_obuch` varchar(100) NOT NULL,
  `chislo_perevodV` varchar(100) NOT NULL,
  `chislo_perevodIZ` varchar(100) NOT NULL,
  `chislo_vostanov` varchar(100) NOT NULL,
  `chislo_otchislen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info_perevod_otch`
--

INSERT INTO `info_perevod_otch` (`id_info`, `id_plan`, `naim_spec`, `level_obraz`, `form_obuch`, `chislo_perevodV`, `chislo_perevodIZ`, `chislo_vostanov`, `chislo_otchislen`) VALUES
(1, 1, 'Программист', 'Среднее профессиональное', 'Очная', '2', '5', '1', '8');

-- --------------------------------------------------------

--
-- Структура таблицы `obraz_programm`
--

CREATE TABLE `obraz_programm` (
  `id_op` int(11) NOT NULL,
  `spec` varchar(100) DEFAULT NULL,
  `level_obraz` varchar(30) DEFAULT NULL,
  `form_obuch` varchar(100) DEFAULT NULL,
  `href_prilozjenie` varchar(255) DEFAULT NULL,
  `href_uchPlan` varchar(255) DEFAULT NULL,
  `href_RabochProgramDiszhip` varchar(255) DEFAULT NULL,
  `href_calendarGraphic` varchar(255) DEFAULT NULL,
  `href_methodDocument` varchar(255) DEFAULT NULL,
  `href_RabochProgramPractic` varchar(255) DEFAULT NULL,
  `programm_obuch` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `obraz_programm`
--

INSERT INTO `obraz_programm` (`id_op`, `spec`, `level_obraz`, `form_obuch`, `href_prilozjenie`, `href_uchPlan`, `href_RabochProgramDiszhip`, `href_calendarGraphic`, `href_methodDocument`, `href_RabochProgramPractic`, `programm_obuch`) VALUES
(1, 'Программирование в компьютерных системах', 'Среднее профессиональное', 'Дистанционная', NULL, NULL, NULL, NULL, NULL, NULL, 'Skype, Delphi 2010, Visual Studio Code'),
(2, 'Программист', 'Среднее профессиональное', 'Очная', NULL, NULL, NULL, NULL, NULL, NULL, 'Skype, Delphi 2010, Visual Studio Code');

-- --------------------------------------------------------

--
-- Структура таблицы `plan_priem`
--

CREATE TABLE `plan_priem` (
  `id_plan` int(11) NOT NULL,
  `naim_spec` varchar(100) DEFAULT NULL,
  `form_obuch` varchar(100) DEFAULT NULL,
  `level_obraz` varchar(100) DEFAULT NULL,
  `id_op` int(11) DEFAULT NULL,
  `kolvo_mestBAFB` varchar(50) DEFAULT NULL,
  `kolvo_mestBSRF` varchar(50) DEFAULT NULL,
  `kolvo_mestMB` varchar(50) DEFAULT NULL,
  `kolvo_mestFizUr` varchar(50) DEFAULT NULL,
  `kolvo_mestInostran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `plan_priem`
--

INSERT INTO `plan_priem` (`id_plan`, `naim_spec`, `form_obuch`, `level_obraz`, `id_op`, `kolvo_mestBAFB`, `kolvo_mestBSRF`, `kolvo_mestMB`, `kolvo_mestFizUr`, `kolvo_mestInostran`) VALUES
(1, 'Программист', 'Очное', 'ОчноеСреднее профессиональное', NULL, '5', '10', '15', '5', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `result_priem`
--

CREATE TABLE `result_priem` (
  `kod_result` int(11) NOT NULL,
  `id_plan` int(11) DEFAULT NULL,
  `naim_spec` varchar(100) DEFAULT NULL,
  `level_obraz` varchar(100) DEFAULT NULL,
  `form_obuch` varchar(100) DEFAULT NULL,
  `kolvo_mestBAFB` varchar(100) DEFAULT NULL,
  `kolvo_mestBSRF` varchar(100) DEFAULT NULL,
  `kolvo_mestMB` varchar(100) DEFAULT NULL,
  `kolvo_mestFizUr` varchar(100) DEFAULT NULL,
  `summ_ball` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `result_priem`
--

INSERT INTO `result_priem` (`kod_result`, `id_plan`, `naim_spec`, `level_obraz`, `form_obuch`, `kolvo_mestBAFB`, `kolvo_mestBSRF`, `kolvo_mestMB`, `kolvo_mestFizUr`, `summ_ball`) VALUES
(1, 1, 'Программист', 'Среднее профессиональное', 'Очное', '8', '10', '4', '2', '78 из 100');

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `id_grupp` int(11) DEFAULT NULL,
  `FIO` varchar(100) DEFAULT NULL,
  `date_r` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pasport` varchar(80) DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `date_zachis` date DEFAULT NULL,
  `prichina_zachis` varchar(200) DEFAULT NULL,
  `date_otchis` date DEFAULT NULL,
  `prichina_otchis` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id_student`, `id_grupp`, `FIO`, `date_r`, `email`, `pasport`, `adres`, `phone`, `date_zachis`, `prichina_zachis`, `date_otchis`, `prichina_otchis`) VALUES
(1, 1, 'Иванов Иван Иванович', '2006-09-20', 'Ivanov2006@mail.ru', 'РФ по ростовской области', 'Ул. Грехова 45, кв 1', '+8934554693', '2021-03-20', 'Поступление в очную программу, новый студент', NULL, NULL),
(2, 1, 'Бухарев Максим Алексеевич', '2005-05-27', 'buharyov@mail.ru', 'РФ по ростовской области', 'Ул Фрунзе 21, кв 2', '+8934555449', '2021-03-20', 'Новый студент, поступление в заочную программу', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `viddocum`
--

CREATE TABLE `viddocum` (
  `id_vidDocum` int(11) NOT NULL,
  `naim_vidDocum` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `viddocum`
--

INSERT INTO `viddocum` (`id_vidDocum`, `naim_vidDocum`) VALUES
(1, 'Правила безопасности');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `documents11`
--
ALTER TABLE `documents11`
  ADD PRIMARY KEY (`id_docum`),
  ADD KEY `id_op` (`id_op`),
  ADD KEY `id_vidDocum` (`id_vidDocum`);

--
-- Индексы таблицы `grupp`
--
ALTER TABLE `grupp`
  ADD PRIMARY KEY (`id_grupp`),
  ADD KEY `id_op` (`id_op`);

--
-- Индексы таблицы `info_perevod_otch`
--
ALTER TABLE `info_perevod_otch`
  ADD PRIMARY KEY (`id_info`),
  ADD KEY `id_plan` (`id_plan`);

--
-- Индексы таблицы `obraz_programm`
--
ALTER TABLE `obraz_programm`
  ADD PRIMARY KEY (`id_op`);

--
-- Индексы таблицы `plan_priem`
--
ALTER TABLE `plan_priem`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `id_op` (`id_op`);

--
-- Индексы таблицы `result_priem`
--
ALTER TABLE `result_priem`
  ADD PRIMARY KEY (`kod_result`),
  ADD KEY `id_plan` (`id_plan`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`),
  ADD KEY `id_grupp` (`id_grupp`);

--
-- Индексы таблицы `viddocum`
--
ALTER TABLE `viddocum`
  ADD PRIMARY KEY (`id_vidDocum`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `documents11`
--
ALTER TABLE `documents11`
  MODIFY `id_docum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `grupp`
--
ALTER TABLE `grupp`
  MODIFY `id_grupp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `info_perevod_otch`
--
ALTER TABLE `info_perevod_otch`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `obraz_programm`
--
ALTER TABLE `obraz_programm`
  MODIFY `id_op` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `plan_priem`
--
ALTER TABLE `plan_priem`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `result_priem`
--
ALTER TABLE `result_priem`
  MODIFY `kod_result` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `viddocum`
--
ALTER TABLE `viddocum`
  MODIFY `id_vidDocum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `documents11`
--
ALTER TABLE `documents11`
  ADD CONSTRAINT `documents11_ibfk_1` FOREIGN KEY (`id_op`) REFERENCES `obraz_programm` (`id_op`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `documents11_ibfk_2` FOREIGN KEY (`id_vidDocum`) REFERENCES `viddocum` (`id_vidDocum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `grupp`
--
ALTER TABLE `grupp`
  ADD CONSTRAINT `grupp_ibfk_1` FOREIGN KEY (`id_op`) REFERENCES `obraz_programm` (`id_op`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `info_perevod_otch`
--
ALTER TABLE `info_perevod_otch`
  ADD CONSTRAINT `info_perevod_otch_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan_priem` (`id_plan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `plan_priem`
--
ALTER TABLE `plan_priem`
  ADD CONSTRAINT `plan_priem_ibfk_1` FOREIGN KEY (`id_op`) REFERENCES `obraz_programm` (`id_op`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `result_priem`
--
ALTER TABLE `result_priem`
  ADD CONSTRAINT `result_priem_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan_priem` (`id_plan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id_grupp`) REFERENCES `grupp` (`id_grupp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
