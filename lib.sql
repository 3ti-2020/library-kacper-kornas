-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Maj 2020, 06:52
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `lib`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `imie` varchar(25) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(25) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `autor`
--

INSERT INTO `autor` (`id_autor`, `imie`, `nazwisko`) VALUES
(1, 'Adam', 'Mickiewicz'),
(2, 'Ignacy', 'Krasicki'),
(3, 'Paulina', 'Świst'),
(4, 'Wojciech', 'Chmielarz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `krzyzowa`
--

CREATE TABLE `krzyzowa` (
  `id_krzyz` int(11) NOT NULL,
  `id_autor` int(5) NOT NULL,
  `id_tytul` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `krzyzowa`
--

INSERT INTO `krzyzowa` (`id_krzyz`, `id_autor`, `id_tytul`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tytul`
--

CREATE TABLE `tytul` (
  `id_tytul` int(11) NOT NULL,
  `tytul` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `isbn` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `tytul`
--

INSERT INTO `tytul` (`id_tytul`, `tytul`, `isbn`) VALUES
(1, 'Podpalacz', 979),
(2, 'Dziady cz.3', 978),
(3, 'Pijaństwo', 544),
(4, 'Przekręt', 655);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indeksy dla tabeli `krzyzowa`
--
ALTER TABLE `krzyzowa`
  ADD PRIMARY KEY (`id_krzyz`) USING BTREE,
  ADD KEY `id_autor` (`id_autor`);

--
-- Indeksy dla tabeli `tytul`
--
ALTER TABLE `tytul`
  ADD PRIMARY KEY (`id_tytul`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT dla tabeli `krzyzowa`
--
ALTER TABLE `krzyzowa`
  MODIFY `id_krzyz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `tytul`
--
ALTER TABLE `tytul`
  MODIFY `id_tytul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `krzyzowa`
--
ALTER TABLE `krzyzowa`
  ADD CONSTRAINT `krzyzowa_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
