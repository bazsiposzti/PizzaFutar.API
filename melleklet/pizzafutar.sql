-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Feb 05. 18:08
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pizzafutar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `futar`
--

CREATE TABLE `futar` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `telefon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `futar`
--

INSERT INTO `futar` (`id`, `nev`, `telefon`) VALUES
(1, 'Sebes István', '+36301111111'),
(2, 'Lassú Lajos', '+36202222222'),
(3, 'Gyors Gyula', '+36703333333'),
(4, 'Pontos Petra', '+36304444444'),
(5, 'Kerekes Károly', '+36205555555');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `pizza`
--

INSERT INTO `pizza` (`id`, `nev`, `ar`) VALUES
(1, 'Sonkás', 2200),
(2, 'Hawaii', 2400),
(3, 'Csípős', 2500),
(4, 'Margaréta', 1950),
(5, 'Négysajtos', 2800),
(6, 'Húsimádó', 3200),
(7, 'Vega', 2100),
(8, 'Magyaros', 2600);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `id` int(11) NOT NULL,
  `futar_id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  `kiszallitas_datum` datetime NOT NULL,
  `cim` varchar(100) NOT NULL,
  `borravalo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`id`, `futar_id`, `pizza_id`, `kiszallitas_datum`, `cim`, `borravalo`) VALUES
(1, 1, 1, '2023-10-01 12:30:00', 'Budapest, Fő utca 10.', 500),
(2, 1, 2, '2023-10-01 13:15:00', 'Budapest, Mellék utca 5.', 200),
(3, 2, 3, '2023-10-02 18:45:00', 'Budapest, Hosszú út 120.', 0),
(4, 2, 1, '2023-10-05 11:00:00', 'Érd, Alsó sor 2.', 1000),
(5, 3, 4, '2023-10-06 12:00:00', 'Pécs, Király utca 1.', 300),
(6, 3, 5, '2023-10-06 12:45:00', 'Pécs, Ferencesek utcája 10.', 500),
(7, 4, 6, '2023-10-07 19:20:00', 'Szeged, Kárász utca 5.', 0),
(8, 4, 7, '2023-10-07 20:10:00', 'Szeged, Tisza Lajos krt. 40.', 600),
(9, 5, 8, '2023-10-08 13:00:00', 'Debrecen, Piac utca 20.', 450),
(10, 1, 4, '2023-10-09 11:30:00', 'Budapest, Bartók Béla út 33.', 200),
(11, 1, 5, '2023-10-09 14:00:00', 'Budapest, Móricz Zsigmond körtér 2.', 800),
(12, 2, 6, '2023-10-10 17:00:00', 'Érd, Felső utca 8.', 0),
(13, 2, 2, '2023-10-10 18:30:00', 'Biatorbágy, Fő tér 1.', 1500),
(14, 3, 8, '2023-10-11 12:15:00', 'Pécs, Rákóczi út 55.', 250),
(15, 5, 1, '2023-10-12 15:00:00', 'Debrecen, Egyetem tér 1.', 500),
(16, 5, 3, '2023-10-12 16:30:00', 'Debrecen, Nagyerdő 5.', 1000),
(17, 4, 2, '2023-10-13 19:45:00', 'Szeged, Dugonics tér 12.', 300),
(18, 4, 4, '2023-10-13 21:00:00', 'Szeged, Aradi vértanúk tere 3.', 0),
(19, 1, 6, '2023-10-14 11:30:00', 'Budapest, Váci utca 88.', 1200),
(20, 1, 7, '2023-10-14 13:00:00', 'Budapest, Andrássy út 50.', 600),
(21, 3, 5, '2023-10-15 12:00:00', 'Pécs, Zsolnay negyed 4.', 400),
(22, 2, 8, '2023-10-16 18:00:00', 'Törökbálint, Munkácsy utca 2.', 200),
(23, 5, 2, '2023-10-17 14:20:00', 'Debrecen, Kossuth tér 5.', 0),
(24, 4, 1, '2023-10-18 20:00:00', 'Szeged, Dóm tér 1.', 1000),
(25, 1, 3, '2023-10-19 12:10:00', 'Budapest, Oktogon 1.', 300),
(26, 2, 4, '2023-10-20 19:00:00', 'Budaörs, Szabadság út 10.', 500),
(27, 3, 7, '2023-10-21 13:45:00', 'Pécs, Árkád', 200),
(28, 5, 6, '2023-10-22 15:30:00', 'Debrecen, Malompark', 400),
(29, 4, 8, '2023-10-23 18:15:00', 'Szeged, Napfény park', 600),
(30, 1, 5, '2023-10-24 11:00:00', 'Budapest, Corvin köz 2.', 800),
(31, 2, 3, '0001-01-01 00:00:00', 'Budapest, Teszt utca 99.', 500);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `futar`
--
ALTER TABLE `futar`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `futar_id` (`futar_id`),
  ADD KEY `pizza_id` (`pizza_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `futar`
--
ALTER TABLE `futar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `rendeles`
--
ALTER TABLE `rendeles`
  ADD CONSTRAINT `rendeles_ibfk_1` FOREIGN KEY (`futar_id`) REFERENCES `futar` (`id`),
  ADD CONSTRAINT `rendeles_ibfk_2` FOREIGN KEY (`pizza_id`) REFERENCES `pizza` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
