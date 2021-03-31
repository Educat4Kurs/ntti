-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 31 2021 г., 16:18
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
-- База данных: `nttip4`
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
-- Структура таблицы `dokymeti1`
--

CREATE TABLE `dokymeti1` (
  `kod_dokymenti` int(11) NOT NULL,
  `naim` varchar(50) NOT NULL,
  `ssilki` varchar(80) NOT NULL,
  `data_dokymenti` date NOT NULL,
  `id_vida_dok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dokymeti1`
--

INSERT INTO `dokymeti1` (`kod_dokymenti`, `naim`, `ssilki`, `data_dokymenti`, `id_vida_dok`) VALUES
(1, '', 'files/Устав.pdf', '2020-03-01', 1),
(2, '', 'files/Лицензия.pdf', '2020-02-22', 2),
(3, '', 'files/Свидетельство.pdf', '2019-11-22', 3),
(4, '', 'files/План финансово-хозяйственной.pdf', '2018-11-22', 4),
(5, '', 'files/Отчет.pdf', '2018-11-22', 6),
(6, 'Устав с изменениями 2019 г.', 'files/Устав1.pdf', '2019-03-01', 1),
(7, 'Устав с изменениями 2018 г.', 'files/Устав2.pdf', '2018-03-01', 1);

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
(1, 'Учитель', 'Среднее профессиональное', NULL, NULL, 'Очная', NULL, NULL, NULL, '4 года', '2021-07-03', 'Русский', NULL, NULL);

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
(2, 'Лаборатория ИН рес', 1, 2),
(3, 'Каб соц. дисциплины', 2, 3),
(4, 'Кабинет математика', 2, 4),
(5, 'Спортивный зал', 6, 4),
(6, 'Столовая ', 7, 2),
(9, 'Тренажерный зал', 6, 2),
(10, 'Столовая 2', 7, 2),
(11, 'Библиотека', 5, 3);

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
(1, 'Монитор', '10', '2018', 1),
(2, 'Компьютер', '14', '2019', 1),
(3, 'Стол', '10', '2020', 2),
(4, 'Стул', '16', '2021', 4),
(5, 'Кондиционер', '2', '2021', 3),
(6, 'Книга', '20', '2020', 11),
(9, 'Настольный теннис', '2', '2020', 5),
(10, 'Тренажер', '4', '2021', 9),
(11, 'Ложка', '10', '2021', 6),
(12, 'Вилка', '10', '2021', 6),
(13, 'Тарелка', '10', '2021', 6),
(14, 'Чашка', '9', '2021', 6);

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

-- --------------------------------------------------------

--
-- Структура таблицы `sotrud`
--

CREATE TABLE `sotrud` (
  `id_sotrud` int(11) NOT NULL,
  `Spec` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sotrud`
--

INSERT INTO `sotrud` (`id_sotrud`, `Spec`, `FIO`, `Phone`, `Email`, `login`, `pass`) VALUES
(1, 'Админ', 'Ратиёв Дмитрий Максимович', '893232235', NULL, 'ratiyev', '123');

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
(1, 1, 'АДАПТИРОВАННАЯ ПРОГРАММА ПОДГОТОВКИ\r\nСПЕЦИАЛИСТОВ СРЕДНЕГО ЗВЕНА', ' ПРОГРАММИСТ', '2021-03-29');

-- --------------------------------------------------------

--
-- Структура таблицы `viddokymenta1`
--

CREATE TABLE `viddokymenta1` (
  `id_vid_dok` int(11) NOT NULL,
  `naim_vida_dok` varchar(100) NOT NULL,
  `itemprop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `viddokymenta1`
--

INSERT INTO `viddokymenta1` (`id_vid_dok`, `naim_vida_dok`, `itemprop`) VALUES
(1, 'Устав образовательной организации', 'ustavDocLink'),
(2, 'Лицензия на осуществление образовательной', 'licenseDocLink'),
(3, 'Свидетельство о государственной аккредитации (с приложениями)', 'accreditationDocLink'),
(4, 'План финансово-хозяйственной деятельности образовательной организации', 'finPlanDocLink'),
(5, 'Локальные нормативные акты, регламентирующие', ''),
(6, 'Отчет о результатах самообследования', 'reportEduDocLink');

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
(4, 'Жилая комната'),
(5, 'Библиотека'),
(6, 'Объект спорта'),
(7, 'Столовая');

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
-- Индексы таблицы `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idD`),
  ADD KEY `idP` (`idP`);

--
-- Индексы таблицы `documents11`
--
ALTER TABLE `documents11`
  ADD PRIMARY KEY (`id_docum`),
  ADD KEY `id_op` (`id_op`),
  ADD KEY `id_vidDocum` (`id_vidDocum`);

--
-- Индексы таблицы `dokumenta`
--
ALTER TABLE `dokumenta`
  ADD PRIMARY KEY (`Kod_Dokumenta`),
  ADD KEY `ID_vid_dokumenta` (`ID_vid_dokumenta`),
  ADD KEY `Vid_dokumenty` (`Vid_dokumenty`);

--
-- Индексы таблицы `dokymeti1`
--
ALTER TABLE `dokymeti1`
  ADD PRIMARY KEY (`kod_dokymenti`,`id_vida_dok`),
  ADD KEY `sw_vida_dok` (`id_vida_dok`);

--
-- Индексы таблицы `educational_program`
--
ALTER TABLE `educational_program`
  ADD PRIMARY KEY (`Kod_educational`),
  ADD KEY `Kod_level` (`Kod_level`),
  ADD KEY `Kod_specialties` (`Kod_specialties`),
  ADD KEY `ID_formy` (`ID_formy`);

--
-- Индексы таблицы `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`idF`);

--
-- Индексы таблицы `forma_obucheniya`
--
ALTER TABLE `forma_obucheniya`
  ADD PRIMARY KEY (`ID_formy`);

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
-- Индексы таблицы `kabinet`
--
ALTER TABLE `kabinet`
  ADD PRIMARY KEY (`Kod_kabi`),
  ADD KEY `Kod_typka` (`Kod_typka`),
  ADD KEY `Kod_prem` (`Kod_prem`);

--
-- Индексы таблицы `kabinetov`
--
ALTER TABLE `kabinetov`
  ADD PRIMARY KEY (`Kod_Kabinetova`),
  ADD KEY `Kod_Vida` (`Kod_Vida`),
  ADD KEY `Kod_Pomejenia` (`Kod_Pomejenia`);

--
-- Индексы таблицы `level_education`
--
ALTER TABLE `level_education`
  ADD PRIMARY KEY (`Kod_urovnya`);

--
-- Индексы таблицы `objectovz`
--
ALTER TABLE `objectovz`
  ADD PRIMARY KEY (`Kod_obje`),
  ADD KEY `Kod_kabi` (`Kod_kabi`);

--
-- Индексы таблицы `oborudovanie`
--
ALTER TABLE `oborudovanie`
  ADD PRIMARY KEY (`Kod_Oborudovanie`),
  ADD KEY `Kod_Kabinetova` (`Kod_Kabinetova`);

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
-- Индексы таблицы `pomejenia`
--
ALTER TABLE `pomejenia`
  ADD PRIMARY KEY (`Kod_Pomejenia`);

--
-- Индексы таблицы `povkval`
--
ALTER TABLE `povkval`
  ADD PRIMARY KEY (`idKv`),
  ADD KEY `idP` (`idP`);

--
-- Индексы таблицы `premises`
--
ALTER TABLE `premises`
  ADD PRIMARY KEY (`Kod_prem`);

--
-- Индексы таблицы `prepod`
--
ALTER TABLE `prepod`
  ADD PRIMARY KEY (`idP`),
  ADD KEY `idF` (`idF`);

--
-- Индексы таблицы `result_priem`
--
ALTER TABLE `result_priem`
  ADD PRIMARY KEY (`kod_result`),
  ADD KEY `id_plan` (`id_plan`);

--
-- Индексы таблицы `rukovodstvo`
--
ALTER TABLE `rukovodstvo`
  ADD PRIMARY KEY (`idR`),
  ADD KEY `idF` (`idF`);

--
-- Индексы таблицы `sotrud`
--
ALTER TABLE `sotrud`
  ADD PRIMARY KEY (`id_sotrud`);

--
-- Индексы таблицы `spec1`
--
ALTER TABLE `spec1`
  ADD PRIMARY KEY (`kod_spec`);

--
-- Индексы таблицы `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`Kod_Specialty`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`),
  ADD KEY `id_grupp` (`id_grupp`);

--
-- Индексы таблицы `trydoystroistve`
--
ALTER TABLE `trydoystroistve`
  ADD PRIMARY KEY (`kod_spec`);

--
-- Индексы таблицы `typekab`
--
ALTER TABLE `typekab`
  ADD PRIMARY KEY (`Kod_typka`);

--
-- Индексы таблицы `viddocum`
--
ALTER TABLE `viddocum`
  ADD PRIMARY KEY (`id_vidDocum`);

--
-- Индексы таблицы `viddokumenta`
--
ALTER TABLE `viddokumenta`
  ADD PRIMARY KEY (`ID_vida_dokumenta`),
  ADD KEY `Kod_educational` (`Kod_educational`);

--
-- Индексы таблицы `viddokymenta1`
--
ALTER TABLE `viddokymenta1`
  ADD PRIMARY KEY (`id_vid_dok`);

--
-- Индексы таблицы `vidkabineta`
--
ALTER TABLE `vidkabineta`
  ADD PRIMARY KEY (`Kod_Vida`);

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
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `idD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `documents11`
--
ALTER TABLE `documents11`
  MODIFY `id_docum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dokumenta`
--
ALTER TABLE `dokumenta`
  MODIFY `Kod_Dokumenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dokymeti1`
--
ALTER TABLE `dokymeti1`
  MODIFY `kod_dokymenti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `educational_program`
--
ALTER TABLE `educational_program`
  MODIFY `Kod_educational` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `filial`
--
ALTER TABLE `filial`
  MODIFY `idF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `forma_obucheniya`
--
ALTER TABLE `forma_obucheniya`
  MODIFY `ID_formy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT для таблицы `kabinet`
--
ALTER TABLE `kabinet`
  MODIFY `Kod_kabi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `kabinetov`
--
ALTER TABLE `kabinetov`
  MODIFY `Kod_Kabinetova` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `level_education`
--
ALTER TABLE `level_education`
  MODIFY `Kod_urovnya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `objectovz`
--
ALTER TABLE `objectovz`
  MODIFY `Kod_obje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oborudovanie`
--
ALTER TABLE `oborudovanie`
  MODIFY `Kod_Oborudovanie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT для таблицы `pomejenia`
--
ALTER TABLE `pomejenia`
  MODIFY `Kod_Pomejenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `povkval`
--
ALTER TABLE `povkval`
  MODIFY `idKv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `premises`
--
ALTER TABLE `premises`
  MODIFY `Kod_prem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `prepod`
--
ALTER TABLE `prepod`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `result_priem`
--
ALTER TABLE `result_priem`
  MODIFY `kod_result` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `rukovodstvo`
--
ALTER TABLE `rukovodstvo`
  MODIFY `idR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sotrud`
--
ALTER TABLE `sotrud`
  MODIFY `id_sotrud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `specialty`
--
ALTER TABLE `specialty`
  MODIFY `Kod_Specialty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `typekab`
--
ALTER TABLE `typekab`
  MODIFY `Kod_typka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `viddocum`
--
ALTER TABLE `viddocum`
  MODIFY `id_vidDocum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `viddokumenta`
--
ALTER TABLE `viddokumenta`
  MODIFY `ID_vida_dokumenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `vidkabineta`
--
ALTER TABLE `vidkabineta`
  MODIFY `Kod_Vida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`idP`) REFERENCES `prepod` (`idP`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Ограничения внешнего ключа таблицы `plan_priem`
--
ALTER TABLE `plan_priem`
  ADD CONSTRAINT `plan_priem_ibfk_1` FOREIGN KEY (`id_op`) REFERENCES `obraz_programm` (`id_op`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Ограничения внешнего ключа таблицы `result_priem`
--
ALTER TABLE `result_priem`
  ADD CONSTRAINT `result_priem_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan_priem` (`id_plan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rukovodstvo`
--
ALTER TABLE `rukovodstvo`
  ADD CONSTRAINT `rukovodstvo_ibfk_1` FOREIGN KEY (`idF`) REFERENCES `filial` (`idF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id_grupp`) REFERENCES `grupp` (`id_grupp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `trydoystroistve`
--
ALTER TABLE `trydoystroistve`
  ADD CONSTRAINT `trydoystroistve_ibfk_1` FOREIGN KEY (`kod_spec`) REFERENCES `spec1` (`kod_spec`);

--
-- Ограничения внешнего ключа таблицы `viddokumenta`
--
ALTER TABLE `viddokumenta`
  ADD CONSTRAINT `viddokumenta_ibfk_1` FOREIGN KEY (`Kod_educational`) REFERENCES `educational_program` (`Kod_educational`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `zdanie1`
--
ALTER TABLE `zdanie1`
  ADD CONSTRAINT `zdanie1_ibfk_1` FOREIGN KEY (`ID_vida_zdaniya`) REFERENCES `vid_zdaniya` (`ID_vida_zdaniya`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
