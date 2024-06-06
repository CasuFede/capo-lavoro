-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Giu 06, 2024 alle 18:42
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ristorante_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `account`
--

CREATE TABLE `account` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `codiceFiscale` varchar(16) NOT NULL,
  `anni` int(11) NOT NULL,
  `via` varchar(255) NOT NULL,
  `civico` varchar(255) NOT NULL,
  `paese` varchar(255) NOT NULL,
  `telefono` int(255) NOT NULL,
  `costo` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `nome`, `cognome`, `codiceFiscale`, `anni`, `via`, `civico`, `paese`, `telefono`, `costo`) VALUES
(1, 'Capo', '$2y$10$3NCaL71NciGwhl0k42f1q.9ZS0.5ziVk9cwBsbQO.QMdJka4DMmvu', 'Pierluigi', 'tassano', 'cfahej85j94j778d', 30, 'fratelli', '12', 'Carpi', 1234567890, ''),
(2, 'Cameriere1', '$2y$10$Rd7v.SjsPS56EVf1L9oZleGDvx1sYza7NlVzO96JNQ.nnKv3CXsE2', 'Marco', 'pipa', 'cfewej45s54j778d', 25, 'zocca', 'A1', 'Modena', 987654321, '1500'),
(3, 'Cameriere2', '$2y$10$xkuSTuI4XzJ6h6jqIWM1OeBuIbc6ivpJOQiDecYvoKQ7H9ZDboGz6', 'Luciano', 'giugo', 'feahej45d44j778d', 24, 'geio', '12', 'Luzzara', 2147483647, '1100'),
(4, 'Cameriere3', '$2y$10$LLfQG8L4Boo0GXvT3aYolut.KkyVXTGt5liS.1Deu.9M/M1awcnsi', 'Maria', 'princ', 'hjshej81j92f458d', 22, 'firnce', '43', 'Novellara', 1029384756, '900');

-- --------------------------------------------------------

--
-- Struttura della tabella `aggiunte`
--

CREATE TABLE `aggiunte` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `costo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `aggiunte`
--

INSERT INTO `aggiunte` (`id`, `nome`, `costo`) VALUES
(5, 'Asparagi', 2),
(7, 'Salsiccia', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `conferma`
--

CREATE TABLE `conferma` (
  `id` int(11) NOT NULL,
  `tavolo` char(3) NOT NULL,
  `date` datetime NOT NULL,
  `codPiatto` int(11) NOT NULL,
  `aggiunte` varchar(225) NOT NULL,
  `quantita` int(11) NOT NULL,
  `descrizione` varchar(225) NOT NULL,
  `stato` enum('Attesa','Inviato','Pronto') NOT NULL,
  `num` int(11) NOT NULL,
  `pagato` enum('No','Si') NOT NULL,
  `codCameriere` int(11) NOT NULL,
  `coperti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `conferma`
--

INSERT INTO `conferma` (`id`, `tavolo`, `date`, `codPiatto`, `aggiunte`, `quantita`, `descrizione`, `stato`, `num`, `pagato`, `codCameriere`, `coperti`) VALUES
(222, '111', '2024-06-06 18:26:22', 26, '', 2, 'Cottura media', 'Attesa', 0, 'No', 2, 2),
(223, '111', '2024-06-06 18:26:22', 25, '', 1, '', 'Attesa', 0, 'No', 2, 2),
(224, '111', '2024-06-06 19:26:22', 28, '', 2, '', 'Attesa', 0, 'No', 2, 2),
(225, '111', '2024-06-06 19:26:22', 30, '', 2, '', 'Attesa', 0, 'No', 2, 2),
(226, '222', '2024-06-06 18:29:25', 26, '', 3, '', 'Pronto', 0, 'No', 2, 3),
(227, '222', '2024-06-06 18:29:25', 31, '', 2, '', 'Pronto', 0, 'No', 2, 3),
(228, '123', '2024-06-06 12:30:05', 26, '', 2, '', 'Inviato', 0, 'No', 3, 2),
(229, '123', '2024-06-06 12:30:05', 29, '', 2, '', 'Attesa', 0, 'No', 3, 2),
(230, '123', '2024-06-06 13:30:05', 30, '', 2, '', 'Attesa', 0, 'No', 3, 2),
(231, '123', '2024-06-06 13:30:23', 30, '', 2, '', 'Attesa', 0, 'No', 3, 2),
(232, '444', '2024-06-06 18:36:29', 26, '', 3, '', 'Pronto', 0, 'Si', 1, 5),
(233, '444', '2024-06-06 18:36:29', 25, '', 2, '', 'Pronto', 0, 'Si', 1, 5),
(234, '444', '2024-06-06 18:36:29', 29, '', 2, '', 'Pronto', 0, 'Si', 1, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `date_data`
--

CREATE TABLE `date_data` (
  `id` int(11) NOT NULL,
  `codPersona` int(11) NOT NULL,
  `giorno` varchar(255) NOT NULL,
  `nrOre` varchar(255) NOT NULL,
  `costoOre` decimal(10,0) NOT NULL,
  `codTipoOra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `fatture`
--

CREATE TABLE `fatture` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `datiFile` blob NOT NULL,
  `dataIns` date NOT NULL,
  `Importo` float NOT NULL,
  `scadenza` enum('30','60','90') NOT NULL,
  `stato` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `fornitore`
--

CREATE TABLE `fornitore` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ingrediente` varchar(50) NOT NULL,
  `prezzo` float NOT NULL,
  `misura` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `fornitore`
--

INSERT INTO `fornitore` (`id`, `nome`, `telefono`, `email`, `ingrediente`, `prezzo`, `misura`) VALUES
(12, 'Alimentari S.r.l.', '02 1234 5678', 'info@forniturealimentari.it', 'Pomodori', 1.2, 'Kg'),
(13, 'Agricoltura Bio S.p.A.', '06 2345 6789', 'contatti@agricolturabio.com', 'Patate', 0.9, 'Kg'),
(14, 'Pescheria Fresca', '081 3456 789', 'ordini@pescheriafresca.it', 'Gamberi', 15, 'Kg'),
(15, 'Caseificio La Bufala', '081 4567 890', 'vendite@caseificiolabufala.it', 'Mozzarella di Bufala', 11, 'Kg');

-- --------------------------------------------------------

--
-- Struttura della tabella `magazzino`
--

CREATE TABLE `magazzino` (
  `id` int(11) NOT NULL,
  `descrizione` varchar(225) NOT NULL,
  `quantita` int(11) NOT NULL,
  `codFornitore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `magazzino`
--

INSERT INTO `magazzino` (`id`, `descrizione`, `quantita`, `codFornitore`) VALUES
(80, 'Mozzarella di bufala', 5, 15),
(81, 'Gamberi', 200, 14),
(82, 'Patate', 300, 13);

-- --------------------------------------------------------

--
-- Struttura della tabella `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `sezione` enum('Antipasti','Primi','Secondi','Dolci','Bibite','Vini') NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descrizione` varchar(200) NOT NULL,
  `percorso` varchar(200) NOT NULL,
  `prezzo` varchar(50) NOT NULL,
  `aggiunte` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `menu`
--

INSERT INTO `menu` (`id`, `sezione`, `nome`, `descrizione`, `percorso`, `prezzo`, `aggiunte`) VALUES
(25, 'Antipasti', 'Bruschetta al Pomodoro', 'Pane tostato condito con pomodori freschi, basilico, aglio e olio d\'oliva.', 'image/bruschetta.jpg', '5.00', 'Asparagi-Salsiccia'),
(26, 'Antipasti', 'Carpaccio di Manzo', 'Fette sottili di manzo crudo condite con rucola, scaglie di parmigiano e limone.', 'image/carpaccio.webp', '10.00', 'Salsiccia'),
(27, 'Primi', 'Spaghetti alla Carbonara', 'Spaghetti conditi con uova, pancetta, pecorino romano e pepe nero.', 'image/carbonara.jpg', '12.00', ''),
(28, 'Secondi', 'Bistecca alla Fiorentina', 'aglio di carne di manzo alla griglia, servito con contorno di patate al forno.', 'image/fiorentina.jpg', '25.00', ''),
(29, 'Dolci', 'Tiramisù', 'Classico dolce italiano a base di savoiardi, mascarpone, caffè e cacao.', 'image/tiramisu.jpg', '6.00', ''),
(30, 'Vini', 'Chardonnay', 'Un vino bianco secco con aromi di mela verde, agrumi e note di vaniglia. Perfetto per accompagnare pesce e piatti di pollo.', 'image/chardonay.jpg', '20.00', ''),
(31, 'Bibite', 'coca cola', '', 'image/chardonay.jpg', '5', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL,
  `coperti` int(11) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `note` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `prenotazioni`
--

INSERT INTO `prenotazioni` (`id`, `nome`, `cognome`, `datetime`, `coperti`, `telefono`, `note`) VALUES
(33, 'Francesco', 'Lasagni', '2024-06-06 20:00:00', 8, '328 123 3390', ''),
(34, 'Bruno', 'Pavaro', '2024-06-06 12:30:00', 3, '133 222 1290', 'Menu bambini');

-- --------------------------------------------------------

--
-- Struttura della tabella `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `cameriere_id` int(11) NOT NULL,
  `last_activity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `sessions`
--

INSERT INTO `sessions` (`session_id`, `cameriere_id`, `last_activity`) VALUES
('2pbdpi99o9dfr8cubjkgucng1m', 2, '2024-03-10 09:59:04'),
('s2mhrvb2d041j0e2ge33qcgfca', 2, '2024-02-22 09:41:41'),
('tatitp88b0mlbojkbv2tvkb0a7', 2, '2024-06-03 17:38:56'),
('jenr0vgcnf2lnhcdcdj7um1uia', 3, '2024-02-28 19:23:29'),
('s2mhrvb2d041j0e2ge33qcgfca', 3, '2024-02-22 09:40:44'),
('s2mhrvb2d041j0e2ge33qcgfca', 3, '2024-02-22 09:41:08'),
('s2mhrvb2d041j0e2ge33qcgfca', 4, '2024-02-22 09:41:32');

-- --------------------------------------------------------

--
-- Struttura della tabella `spese`
--

CREATE TABLE `spese` (
  `id` int(10) UNSIGNED NOT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `dataIns` date DEFAULT NULL,
  `percorso` varchar(50) NOT NULL,
  `importo` varchar(10) DEFAULT NULL,
  `scadenza` enum('30','60','90') NOT NULL,
  `stato` varchar(50) NOT NULL,
  `metodo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `spese`
--

INSERT INTO `spese` (`id`, `motivo`, `dataIns`, `percorso`, `importo`, `scadenza`, `stato`, `metodo`) VALUES
(43, 'Acquisto ingredienti (pomodori, mozzarella, basilico)', '2024-03-01', 'fattureSpese/8Fattura.txt', '250.00', '30', 'pagata', 'Bonifico'),
(44, 'Manutenzione cucina (riparazione forno)', '2024-03-05', 'fattureSpese/9Fattura.txt', '150', '60', 'niente', ''),
(45, 'Fornitura di vino (6 casse di Chianti Classico)', '2024-04-16', 'fattureSpese/10Fattura.txt', '600', '30', 'niente', ''),
(46, 'Servizi di pulizia', '2024-05-14', 'fattureSpese/11Fattura.txt', '200', '90', 'niente', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `tipo_ora`
--

CREATE TABLE `tipo_ora` (
  `id` varchar(255) NOT NULL,
  `nome` enum('Settimanale','Straordinari','Weekend') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `tipo_ora`
--

INSERT INTO `tipo_ora` (`id`, `nome`) VALUES
('t1', 'Settimanale'),
('t2', 'Straordinari'),
('t3', 'Weekend');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `aggiunte`
--
ALTER TABLE `aggiunte`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `conferma`
--
ALTER TABLE `conferma`
  ADD PRIMARY KEY (`id`,`tavolo`,`date`),
  ADD KEY `codPiatto` (`codPiatto`),
  ADD KEY `codCameriere` (`codCameriere`);

--
-- Indici per le tabelle `date_data`
--
ALTER TABLE `date_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codPersona` (`codPersona`),
  ADD KEY `codTipoOra` (`codTipoOra`);

--
-- Indici per le tabelle `fatture`
--
ALTER TABLE `fatture`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `fornitore`
--
ALTER TABLE `fornitore`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `magazzino`
--
ALTER TABLE `magazzino`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codFornitore` (`codFornitore`);

--
-- Indici per le tabelle `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`,`last_activity`),
  ADD KEY `cameriere_id` (`cameriere_id`);

--
-- Indici per le tabelle `spese`
--
ALTER TABLE `spese`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tipo_ora`
--
ALTER TABLE `tipo_ora`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `aggiunte`
--
ALTER TABLE `aggiunte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `conferma`
--
ALTER TABLE `conferma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT per la tabella `date_data`
--
ALTER TABLE `date_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `fatture`
--
ALTER TABLE `fatture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `fornitore`
--
ALTER TABLE `fornitore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `magazzino`
--
ALTER TABLE `magazzino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT per la tabella `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT per la tabella `spese`
--
ALTER TABLE `spese`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `conferma`
--
ALTER TABLE `conferma`
  ADD CONSTRAINT `conferma_ibfk_1` FOREIGN KEY (`codPiatto`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `conferma_ibfk_2` FOREIGN KEY (`codCameriere`) REFERENCES `account` (`id`);

--
-- Limiti per la tabella `date_data`
--
ALTER TABLE `date_data`
  ADD CONSTRAINT `date_data_ibfk_1` FOREIGN KEY (`codPersona`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `date_data_ibfk_2` FOREIGN KEY (`codTipoOra`) REFERENCES `tipo_ora` (`id`);

--
-- Limiti per la tabella `magazzino`
--
ALTER TABLE `magazzino`
  ADD CONSTRAINT `magazzino_ibfk_1` FOREIGN KEY (`codFornitore`) REFERENCES `fornitore` (`id`);

--
-- Limiti per la tabella `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`cameriere_id`) REFERENCES `account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
