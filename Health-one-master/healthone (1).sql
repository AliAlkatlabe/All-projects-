-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 30 apr 2023 om 12:39
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie`
--

CREATE TABLE `categorie` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `categorie`
--

INSERT INTO `categorie` (`id`, `name`, `picture`) VALUES
(1, 'overhemt', '/img/categories/overhemt.png'),
(2, 'tshirt', '/img/categories/tshirt.jpg'),
(3, 'broeken', '/img/categories/broeken.jpg'),
(4, 'tassen', '/img/categories/tassen.jpg'),
(5, 'schoenen', '/img/categories/tassen.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opening_hours`
--

CREATE TABLE `opening_hours` (
  `id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `opening_hours`
--

INSERT INTO `opening_hours` (`id`, `day`, `open_time`, `close_time`) VALUES
(1, ' maandag', '08:00:00', '23:00:00'),
(2, 'dinsdag', '08:00:00', '23:00:00'),
(3, 'woensdag', '08:00:00', '23:00:00'),
(4, 'donderdag', '08:00:00', '23:00:00'),
(5, 'vrijdag', '08:00:00', '20:00:00'),
(6, 'zaterdag', '10:00:00', '17:00:00'),
(7, 'zondag', '10:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `picture`, `description`, `cat_id`) VALUES
(19, 'Tshirt1', '/img/categories/T-shirt/Tshirt1.jpg', 'mooie T-shirt', 2),
(20, 'tshirt2', '\\img\\categories\\T-shirt\\Tshirt2.jpg', 'Kids will love Molo\'s Jurassic World park t-shirt. This dino-themed tee is made from a soft organic cotton jersey in classic white with an iconic black and yellow logo print on the front and a casual crew neckline. Mix and match with the rest of the label\'s collection for the total look.', 2),
(22, 'broek1', '\\img\\categories\\broeken\\broek1.png', 'Jeans zijn de belichaming van werkkleding. Robuust, praktisch en gewoonweg ongelooflijk cool! Bij deze beweeglijke 5-pocket jeans is het draagcomfort heel belangrijk. Duurzaam denim in combinatie met zeer elastisch materiaal voor meer beweeglijkheid en een perfecte pasvorm: de e.s. 5-pocket-stretch-jeans in verschillende wassingen en met rechte pijpen brengen casual denim-stijl, kracht en gezelligheid samen. \r\n\r\n', 3),
(23, 'broek2', '\\img\\categories\\broeken\\broek2.png', 'MET POWER\r\nOP DE BOUWPLAATS\r\n\r\n\r\nOp zoek naar een werkbroek die bestand is tegen intensief gebruik, comfortabel blijft, zelfs op stressvolle werkdagen, en er ook nog modieus uitziet? De cargo worker-jeans e.s.concrete combineert alle drie de specificaties in perfectie. De elastische stof maakt alle bewegingen probleemloos mogelijk en is extra verstevigd op bijzonder belaste plaatsen zoals de kniedelen of aan de binnenzijde van het been.\r\n\r\nBovendien kunnen de jeans-gereedschapzakken* e.s.concrete gemakkelijk rechtstreeks aan de broek worden bevestigd. voor extra opbergruimte voor gereedschap. Gewoon praktisch - gewoon cool.\r\n\r\n\r\n\r\nModieuze en comfortabele jeans met casual cargo snit\r\n\r\nsterke jeans met elastische vezels\r\nelastische FLEXBELT®-band aan de zijkant\r\n2 steekzakken\r\n2 achterzakken met klittenbandsluiting\r\nmeerdelige beenzakken met duimstokzak, multifunctionele lussen, ritszak en gsm-zakje\r\n*innovatief slide-systeem aan de linker- en rechterkant van de broek, speciaal voor de bevestiging van de optionele heren-gereedschapszakken e.s.concrete (niet in leveringsomvang inbegrepen)\r\nverstevigde kniedelen door POWERdenim\r\nzakken voor kniebeschermers met insteek aan de bovenkant en klittenbandsluiting\r\n\r\n\r\nMateriaal:\r\n1. bovenmateriaal 74% katoen/22% polyester/3% elastolefine/1% elasthan (ca. 380 g/m²),\r\n2. bovenmateriaal 93% katoen/6% polyethyleen/1% elasthan.\r\nWasbaar op 40 °C', 3),
(24, 'broek3', '\\img\\categories\\broeken\\broek3.png', 'Specificaties\r\nKwaliteit: 415 gr/m²\r\nPasvorm: Recht model (regular fit)\r\nMateriaal: 98.5% Katoen, 1.5% Elasthaan\r\nStretch\r\n5-Pocket jeans\r\nDuurzame kwaliteit\r\nEen echte Wrangler-klassieker\r\nMetalen ritssluiting\r\nSoepeler dan de TEXAS van 100% katoen\r\nStevige stof\r\nVoor actief, dagelijks gebruik\r\nZeer goed houdende kleur', 3),
(25, 'broek4', '\\img\\categories\\broeken\\broek4.jpg', 'De Flex Cargo LC: gemaakt voor comfort, uitgerust voor veeleisende dragers. Deze loose-fit brengt klassieke cargo elementen samen, zoals afgedekte zijzakken, versterkte kniestukken en verstelbare enkelkoorden. De innovatieve midweight Flex Twillstof geeft deze constructie een optische canvas look. Verkrijgbaar in een reeks van uniforme kleuren.\r\n\r\nAfgedekte zijzakken\r\nVersterkte kniestukken\r\nVerstelbare enkelkoorden\r\nMiddengewicht Flex Twill', 3),
(98, 'tshirt3', '/img/uploads/Tshirt3.jpg', '', 2),
(99, 'Overhemt1', '/img/uploads/overhemt1.jpg', 'Wij adviseren om een maatje groter te bestellen.\r\n\r\n• Getailleerd overhemd met klassieke kraag\r\n• Ruiten in de kraag\r\n• Beige accent langs de knopen\r\n• Beige, ruiten mouwen, zichtbaar bij omgevouwen mouwen\r\n• Klassieke knopen om de polsen\r\n• Klassieke knoopsluiting\r\n\r\nGROOTTE EN GESNEDEN\r\n\r\nBestel een maatje groter\r\nLengte van het model: 1m81\r\nHet gepresenteerde model is maat M\r\n\r\nMachinewasbaar op 30 °C\r\n100% katoen\r\n\r\nAls overhemden liefhebber kan je de overhemd blauw met dubbele kraag niet missen. De kleur past perfect thuis in garderobe en is een absolute bestseller. Bij Valenci koop je deze blauwe overhemd in maat S t/m maat 3XL. Door de slim fit van deze overhemd sluit de shirt mooi aan op ieder heren postuur. De heren overhemd blauw met dubbele kraag is gemaakt van 100% katoen. De heren overhemd blauw is wasbaar op 30 graden. Bestel vandaag de heren overhemd wit voor 17:00, morgen in huis (werkdagen). Gecombineerd met een andere toffe overhemd of chino maakt dit iedere outfit compleet.', 1),
(100, 'Overhemt2', '/img/uploads/overhemt2.jpg', 'Dit lichtblauwe GENTS overhemd heeft witte knopen waardoor er een mooi contrast ontstaat. Hiernaast kan je zien dat het lichtblauwe GENTS overhemd een enkele manchet en een klassieke kraag heeft.\r\nHet GENTS overhemd is gemaakt van een stevige stofmix met katoen en heeft als pasvorm een modern fit, dit houdt in dat het overhemd licht getailleerd is. Het GENTS overhemd is zowel te combineren voor in een zakelijke omgeving zoals naar je werk maar je kunt hem ook dragen in een meer casual omgeving waar je minder netjes gekleed hoeft. Het hemd kan perfect gecombineerd worden met de pakken van GENTS.\r\n\r\nWanneer je op zoek bent naar goedkope overhemden is dit een goede keuze.', 1),
(101, 'Overhemt3', '/img/uploads/overhemt3.jpg', 'Dit chique Blumfontain dubbele manchet overhemd is volledig strijkvrij dus heel praktisch. Het hemd na het wassen in de wasmachine twee keer uitkloppen en daarna uithangen, dan is het hemd weer klaar voor de volgende keer! Je kunt eventueel manchetknopen gebruiken in dit overhemd.\r\n\r\n\r\nStaffelkorting\r\n\r\nGENTS hanteert een staffelkorting bij Blumfontain hemden, bij aanschaf van twee Blumfontain hemden geldt een korting van €9,95. Combineren is mogelijk. Deze korting wordt automatisch verrekend in de winkelmand.', 1),
(102, 'Tas1', '/img/uploads/tas1.jpg', '-Ruim hoofdvak met ons kenmerkend ontworpen voorvak\r\n-Height: 40cm, Width: 30cm, Depth: 18cm\r\n-Crafted from 100% nylon for a sturdy finish\r\n-Comfy padded shoulder straps and back panel let you carry it anywhere', 4),
(103, 'Tas2', '/img/uploads/tas2.jpg', 'Leren schoudertas zowel te dragen voor dames en heren. De tas is gemaakt van een mooie kwaliteit rundleer. De kleine leren schoudertas heeft een lang verstelbare schouderband die je op iedere gewenste lengte kan dragen. Bij deze tas heb je allerlei handige ritsvakken waardoor je al spulletjes makkelijk kan opbergen. Het materiaal van deze tas zorgt voor een prettig draagcomfort en een lange levensduur.\r\n\r\nIn deze tas heb je een royaal hoofdvak afsluitbaar met een ritssluiting en een binnen ritsje. Aan de voorkant heb je 3 ritsvakken handig om bijvoorbeeld een telefoon of een sleutel in op te bergen. Ook heb je aan de achterkant nog een ritsvak\r\n\r\nOver deze leren schoudertas:\r\n\r\nAfmetingen: 21 x 19 x 4 cm\r\nHoogwaardige kwaliteit leer\r\nLang verstelbare schouderband\r\nRoyaal hoofdvak met ritssluiting\r\n3 ritsvakken aan de voorkant\r\n1 ritsvak aan de achterkant\r\nOp voorraad direct leverbaar.\r\nThuisbezorgd binnen 1-4 werkdagen.', 4),
(104, 'Tas3', '/img/uploads/tas3.jpg', 'Schoudertas Man Small - Crossbody tas heren met verstelbare riem van het merk Lois. Uniseks.\r\nHoge weerstand sling bag tas heren, dit product is het resultaat van de evolutie van het merk Skechers in zijn voortdurende zoektocht naar de beste kwaliteit tegen de beste prijs.\r\nCrossbody bag, perfect voor dagelijks gebruik. Crossbodytassen voor Heren Zeer compleet. Slijtvaste en hoogwaardige naden en materialen.\r\nEveryday sling bag zeer praktische en stevige kleine mannentas. Naden en hoogwaardige materialen. Perfect voor elke dag en voor uitstapjes. Lichtgewicht en resistent.\r\nGrootte: 16x20x6,5 cm Materiaal: Eco synthetisch leer.', 4),
(105, 'Tas4', '/img/uploads/tas4.jpg', 'Schoudertas Man Small - Crossbody tas heren met verstelbare riem van het merk Lois. Uniseks.\r\nHoge weerstand sling bag tas heren, dit product is het resultaat van de evolutie van het merk Skechers in zijn voortdurende zoektocht naar de beste kwaliteit tegen de beste prijs.\r\nCrossbody bag, perfect voor dagelijks gebruik. Crossbodytassen voor Heren Zeer compleet. Slijtvaste en hoogwaardige naden en materialen.\r\nEveryday sling bag zeer praktische en stevige kleine mannentas. Naden en hoogwaardige materialen. Perfect voor elke dag en voor uitstapjes. Lichtgewicht en resistent.\r\nGrootte: 16x20x6,5 cm Materiaal: Eco synthetisch leer.', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `stars` double NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `title`, `description`, `stars`, `product_id`, `date`) VALUES
(153, 32, '', 'goed', 3, 91, '2023-01-15'),
(154, 32, '', 'PRIMA', 4, 19, '2023-01-16'),
(155, 32, '', 'goed', 5, 20, '2023-01-16'),
(156, 32, '', 'mooi', 5, 99, '2023-01-17'),
(157, 32, '', 'kkr harde broek&#13;&#10;valt wel een beetje klein maat thijs', 1, 25, '2023-01-17'),
(158, 34, '', 'mooi', 4, 102, '2023-01-23'),
(159, 32, '', 'alialai', 1, 99, '2023-01-26'),
(160, 68, '', 'heel mooi', 1, 102, '2023-02-02'),
(161, 68, '', 'heel mooi', 1, 102, '2023-02-02');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(31, 'admin', 'amdin@admin.com', '$2y$10$wY9ERp445i0CcjDJRD3Plu8sryGsDrMd/ZjSPbiW/oMu6CZHEWdTW', 'admin'),
(72, 'ali', 'aliqaitlbe7@gmail.com', '$2y$10$FqQX00900uIrpK/SYz4xFumap7FkvRRJcU9Iu9Pyxupq6ZnuaMvk6', 'user');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_prod` (`cat_id`);

--
-- Indexen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `opening_hours`
--
ALTER TABLE `opening_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT voor een tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `cat_prod` FOREIGN KEY (`cat_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
