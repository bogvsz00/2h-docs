-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Lis 06, 2023 at 04:25 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boguszkacper`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(1) NOT NULL,
  `title` varchar(128) NOT NULL,
  `genre` varchar(128) NOT NULL,
  `image` varchar(2048) NOT NULL,
  `year` varchar(4) NOT NULL,
  `description` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`id`, `title`, `genre`, `image`, `year`, `description`) VALUES
(1, 'Znachor', 'Melodramat', 'https://images.ctfassets.net/4cd45et68cgf/1Be2BhGfYXmvYD8VDu2c6x/335863ac844158930fe4937f17060660/_Znachor__NETFLIX_Leszek_Lichota_jako_Antoni_Kosiba_Rafa__Wilczur.jpg', '2023', 'Renomowany niegdyś chirurg, który stracił rodzinę i pamięć, dostaje szansę na nowe życie, gdy po latach spotyka swoją córkę.'),
(2, 'Old', 'Thriller', 'https://cdn1.naekranie.pl/wp-content/uploads/2021%2F05%2FE2Z2GtkWYBYuwZ8_60afbda12d21c.jpeg', '2021', 'Grupa ludzi zostaje uwięziona na tajemniczej wyspie, gdzie dochodzi do anomalii związanych z upływem czasu.'),
(3, 'Shrek', 'Melodramat', 'https://i-viaplay-com.akamaized.net/viaplay-prod/993/800/1613762117-f07774c22a81b35740522f9e1b18e1e03331bc19.jpg?width=400&height=600', '2001', 'By odzyskać swój dom, brzydki ogr z gadatliwym osłem wyruszają uwolnić piękną księżniczkę.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `Imie` varchar(10) DEFAULT NULL,
  `Nazwisko` varchar(13) DEFAULT NULL,
  `PESEL` varchar(11) DEFAULT NULL,
  `Plec` varchar(9) DEFAULT NULL,
  `Rok urodzenia` int(4) DEFAULT NULL,
  `Kolor oczu` varchar(10) DEFAULT NULL,
  `Wz		rost` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `osoby`
--

INSERT INTO `osoby` (`Imie`, `Nazwisko`, `PESEL`, `Plec`, `Rok urodzenia`, `Kolor oczu`, `Wz		rost`) VALUES
('Karolina', 'Kowalska', '01321554329', 'Kobieta', 2001, 'Brązowe', 168),
('Szymon', 'Nowak', '04330776543', 'Mężczyzna', 2004, 'Niebieskie', 175),
('Natalia', 'Wójcik', '03330143210', 'Kobieta', 2000, 'Zielone', 165),
('Mikołaj', 'Kaczmarek', '02331898765', 'Mężczyzna', 2002, 'Piwne', 180),
('Julia', 'Jankowska', '05331023456', 'Kobieta', 2005, 'Brązowe', 160),
('Kacper', 'Lewandowski', '02330187654', 'Mężczyzna', 2000, 'Niebieskie', 185),
('Wiktoria', 'Nowak', '03332365432', 'Kobieta', 2000, 'Szare', 162),
('Michał', 'Kowalczyk', '02331656789', 'Mężczyzna', 2002, 'Zielone', 178),
('Zuzanna', 'Zawadzka', '03331598765', 'Kobieta', 2003, 'Piwne', 168),
('Filip', 'Szymański', '04331987654', 'Mężczyzna', 2004, 'Brązowe', 175),
('Oliwia', 'Wiśniewska', '02331976543', 'Kobieta', 2000, 'Niebieskie', 175),
('Bartosz', 'Wójcik', '05332876543', 'Mężczyzna', 2005, 'Zielone', 160),
('Aleksandra', 'Kamińska', '03331423456', 'Kobieta', 2003, 'Piwne', 170),
('Kamil', 'Kowal', '02332554329', 'Mężczyzna', 2002, 'Szare', 175),
('Nadia', 'Nowicka', '05332987654', 'Kobieta', 2005, 'Brązowe', 163),
('Oskar', 'Kowalski', '04330498765', 'Mężczyzna', 2004, 'Niebieskie', 170),
('Lena', 'Jasińska', '03330265432', 'Kobieta', 2003, 'Zielone', 178),
('Krzysztof', 'Kowal', '02331976543', 'Mężczyzna', 2000, 'Brązowe', 168),
('Zofia', 'Nowak', '03330898765', 'Kobieta', 2000, 'Niebieskie', 175),
('Dawid', 'Witkowski', '01330523456', 'Mężczyzna', 2001, 'Brązowe', 160),
('Agnieszka', 'Kwiatkowska', '90070287654', 'Kobieta', 1990, 'Brązowe', 160),
('Mariusz', 'Jasiński', '85080312345', 'Mężczyzna', 1985, 'Niebieskie', 175),
('Justyna', 'Kaczmarek', '92050465432', 'Kobieta', 1992, 'Zielone', 168),
('Paweł', 'Wojciechowski', '89081256789', 'Mężczyzna', 1989, 'Piwne', 180),
('Karolina', 'Adamczyk', '87071298765', 'Kobieta', 1987, 'Brązowe', 165),
('Grzegorz', 'Krawczyk', '86061123456', 'Mężczyzna', 1986, 'Niebieskie', 185),
('Martyna', 'Oleksy', '93030143210', 'Kobieta', 1993, 'Piwne', 162),
('Łukasz', 'Kowalewski', '84040576543', 'Mężczyzna', 1984, 'Szare', 175),
('Natalia', 'Zalewska', '91080654321', 'Kobieta', 1991, 'Zielone', 168),
('Kamil', 'Malinowski', '90020223456', 'Mężczyzna', 1990, 'Brązowe', 175),
('Izabela', 'Kowalczyk', '88060165432', 'Kobieta', 1988, 'Szare', 160),
('Marcin', 'Witkowski', '85071276543', 'Mężczyzna', 1985, 'Niebieskie', 180),
('Aneta', 'Kamińska', '92030887654', 'Kobieta', 1992, 'Zielone', 165),
('Łukasz', 'Nowak', '87040198765', 'Mężczyzna', 1987, 'Piwne', 175),
('Joanna', 'Sikorska', '83070112345', 'Kobieta', 1983, 'Brązowe', 168),
('Krzysztof', 'Krawiec', '89040187654', 'Mężczyzna', 1989, 'Niebieskie', 170),
('Monika', 'Szewczyk', '92050223456', 'Kobieta', 1992, 'Brązowe', 163),
('Tomasz', 'Zawisza', '86061087654', 'Mężczyzna', 1986, 'Szare', 175),
('Alicja', 'Dąbrowska', '90030176543', 'Kobieta', 1990, 'Niebieskie', 168),
('Paweł', 'Jaworski', '84080198765', 'Mężczyzna', 1984, 'Zielone', 180),
('Katarzyna', 'Nowicka', '91060134567', 'Kobieta', 1991, 'Brązowe', 170),
('Tomasz', 'Kaczor', '88080578901', 'Mężczyzna', 1988, 'Niebieskie', 175),
('Magdalena', 'Witkowska', '93071265432', 'Kobieta', 1993, 'Zielone', 165),
('Andrzej', 'Kowal', '86052098765', 'Mężczyzna', 1986, 'Piwne', 178),
('Monika', 'Wójcik', '90030123456', 'Kobieta', 1990, 'Szare', 160),
('Robert', 'Nowakowski', '85071487654', 'Mężczyzna', 1985, 'Niebieskie', 183),
('Joanna', 'Zając', '92040556789', 'Kobieta', 1992, 'Brązowe', 168),
('Marek', 'Lis', '87060187654', 'Mężczyzna', 1987, 'Zielone', 175),
('Beata', 'Kubiak', '89091212345', 'Kobieta', 1989, 'Brązowe', 163),
('Michał', 'Sikora', '84061043210', 'Mężczyzna', 1984, 'Niebieskie', 170),
('Jan', 'Kowalski', '85010212345', 'Mężczyzna', 1985, 'Niebieskie', 180),
('Anna', 'Nowak', '90031267890', 'Kobieta', 1990, 'Zielone', 165),
('Piotr', 'Wiśniewski', '80122198765', 'Mężczyzna', 1980, 'Brązowe', 175),
('Maria', 'Jankowska', '88060154321', 'Kobieta', 1988, 'Piwne', 170),
('Krzysztof', 'Lewandowski', '92071576543', 'Mężczyzna', 1992, 'Zielone', 185),
('Alicja', 'Wójcik', '85071287654', 'Kobieta', 1985, 'Brązowe', 160),
('Maciej', 'Kaminski', '91051265432', 'Mężczyzna', 1991, 'Niebieskie', 175),
('Ewa', 'Kowalczyk', '87071098765', 'Kobieta', 1987, 'Szare', 162),
('Marcin', 'Zawadzki', '89080523456', 'Mężczyzna', 1989, 'Zielone', 178),
('Agnieszka', 'Szymańska', '83021112345', 'Kobieta', 1983, 'Piwne', 168);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
