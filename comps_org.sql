-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 19 2022 г., 14:45
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `comps_org`
--
CREATE DATABASE IF NOT EXISTS `comps_org` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `comps_org`;

-- --------------------------------------------------------

--
-- Структура таблицы `computer`
--

CREATE TABLE `computer` (
  `ID_Computer` int(11) NOT NULL,
  `netname` text NOT NULL,
  `motherboard` text NOT NULL,
  `RAM_capacity` int(11) NOT NULL,
  `HDD_capacity` int(11) NOT NULL,
  `monitor` text NOT NULL,
  `vendor` text NOT NULL,
  `guarantee` date NOT NULL,
  `FID_Processor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `computer`
--

INSERT INTO `computer` (`ID_Computer`, `netname`, `motherboard`, `RAM_capacity`, `HDD_capacity`, `monitor`, `vendor`, `guarantee`, `FID_Processor`) VALUES
(1, 'Alex', 'AMD', 44000, 15000000, 'Samsung', 'AMD', '2025-06-01', 1),
(2, 'Alena', 'ASRock', 8000, 500000, 'LG', 'ASRock', '2024-07-07', 4),
(3, 'Dima', 'Gigabyte', 44000, 1500000, 'Gigabyte', 'Gigabyte', '2021-07-26', 2),
(4, 'Stas', 'Dell', 8000, 500000, 'HP', 'Dell', '2021-08-11', 1),
(5, 'Petya', 'Intel', 16000, 2000000, 'Intel', 'Intel', '2023-07-14', 5),
(6, 'Vasya', 'Biostar', 16000, 5000000, 'Biostar', 'Biostar', '2024-01-14', 4),
(7, 'Miho', 'AMD', 16, 512, 'Samsung', 'AMD', '2020-06-01', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `computer_software`
--

CREATE TABLE `computer_software` (
  `FID_Computer` int(11) NOT NULL,
  `FID_Software` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `computer_software`
--

INSERT INTO `computer_software` (`FID_Computer`, `FID_Software`) VALUES
(1, 1),
(4, 4),
(2, 3),
(1, 5),
(4, 5),
(5, 2),
(5, 4),
(6, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `processor`
--

CREATE TABLE `processor` (
  `ID_Pocessor` int(11) NOT NULL,
  `name` text NOT NULL,
  `frequency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `processor`
--

INSERT INTO `processor` (`ID_Pocessor`, `name`, `frequency`) VALUES
(1, 'Intel', 300),
(2, 'MediaTek', 100),
(3, 'Nvidia', 700),
(4, 'AMD', 200),
(5, 'Samsung', 500);

-- --------------------------------------------------------

--
-- Структура таблицы `software`
--

CREATE TABLE `software` (
  `ID_Software` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `software`
--

INSERT INTO `software` (`ID_Software`, `name`) VALUES
(1, 'XAMPP'),
(2, 'OpenServer'),
(3, 'Visual studio'),
(4, 'MongoDB'),
(5, 'VirtualBox');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
