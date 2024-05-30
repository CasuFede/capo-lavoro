-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mag 30, 2024 alle 14:30
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
(1, 'salsiccia', 1.5),
(3, 'funghi', 2),
(4, 'patatine', 3);

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
(75, '777', '2024-02-21 14:41:45', 23, '', 2, '', 'Pronto', 0, 'Si', 2, 2),
(77, '777', '2024-02-21 15:41:45', 12, '', 1, '', 'Pronto', 1, 'Si', 4, 4),
(81, '777', '2024-02-21 14:42:28', 11, '', 1, '', 'Pronto', 1, 'Si', 2, 4),
(145, '333', '2024-02-25 18:20:07', 23, '', 4, '', 'Pronto', 0, 'Si', 3, 4),
(146, '333', '2024-02-25 18:20:07', 11, '', 2, '', 'Pronto', 0, 'Si', 4, 4),
(160, '123', '2024-03-01 19:42:45', 22, '', 4, '', 'Pronto', 0, 'Si', 3, 4),
(164, '333', '2024-03-03 15:39:24', 19, '', 4, '', 'Pronto', 2, 'Si', 4, 12),
(165, '534', '2024-03-10 10:31:05', 14, '', 1, '', 'Pronto', 0, 'Si', 2, 1),
(179, '333', '2024-04-08 20:55:44', 12, '', 6, '', 'Pronto', 3, 'Si', 2, 6),
(180, '333', '2024-04-09 20:55:44', 13, '', 1, '', 'Pronto', 3, 'Si', 2, 6),
(181, '333', '2024-04-09 19:01:16', 14, '', 2, '', 'Pronto', 3, 'Si', 2, 6);

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

--
-- Dump dei dati per la tabella `date_data`
--

INSERT INTO `date_data` (`id`, `codPersona`, `giorno`, `nrOre`, `costoOre`, `codTipoOra`) VALUES
(1, 2, '22-01-2024', '8', 5, 't1'),
(2, 2, '21-01-2024', '8', 6, 't2'),
(3, 2, '25-01-2024', '5.5', 4, 't1'),
(4, 3, '23-01-2024', '5.5', 3, 't3'),
(5, 4, '23-01-2024', '5.5', 3, 't3'),
(8, 4, '23-01-2024', '8', 5, 't1'),
(9, 3, '24-01-2024', '5.5', 3, 't1'),
(10, 4, '25-01-2024', '12', 6, 't1'),
(13, 3, '26-01-2024', '12', 4, 't1'),
(14, 4, '27-01-2024', '9', 6, 't1'),
(15, 2, '28-01-2024', '1.5', 6, 't2'),
(16, 4, '21-01-2024', '1.5', 6, 't1'),
(17, 3, '08-02-2024', '12', 13, 't1'),
(18, 4, '21-02-2024', '12', 150, 't2');

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

--
-- Dump dei dati per la tabella `fatture`
--

INSERT INTO `fatture` (`id`, `nome`, `datiFile`, `dataIns`, `Importo`, `scadenza`, `stato`) VALUES
(7, 'Gas', 0x666174747572652f696e6465782e68746d6c, '2024-01-03', 138.8, '30', 'scaduta'),
(8, 'Luce', 0x666174747572652f666174747572614573656d70696f2e646f6378, '2023-12-25', 220.25, '60', 'pagata'),
(9, 'Telefonia', 0x666174747572652f7374796c652e637373, '2023-12-31', 500.3, '30', 'scaduta'),
(11, 'carne', 0x666174747572652f66617474757261322e646f6378, '2024-02-04', 150, '90', 'niente'),
(12, 'Prosciutto', 0x666174747572652f6661747475726132202d20436f7069612e646f6378, '2024-02-04', 123, '60', 'niente'),
(14, 'calze', 0x666174747572652f31666174747572614573656d70696f2e646f6378, '2024-02-04', 50, '60', 'niente'),
(15, 'Fattura maglioncini', 0x666174747572652f32666174747572614573656d70696f2e646f6378, '2024-02-08', 111111, '60', 'pagata');

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
(1, 'projectFOOD', '333-333-3333', 'projectFOOD@gmail.com', 'hamburger', 12.5, 'gr'),
(2, 'fornitorePane', '111-111-1111', 'pane@gmail.com', 'pane da hamburger', 10, 'Kg'),
(8, 'francesco', '333-333-3334', 'frefer@gmail.com', 'olio', 12, 'L'),
(10, 'Dru', '333-222-1111', 'fefef@gmail.com', 'Vino', 14, 'L'),
(11, 'Unknown', '333-333-4444', 'gergergr@gmail.com', 'Farina', 12, 'ml');

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
(74, 'Carne', 59, 8),
(77, 'farina', 14, 11),
(78, 'SSD', 26, 1);

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
(11, 'Antipasti', 'Salumi e formaggi misti', 'Bresaola, salame, prosciutto cotto, prosciutto crudo, parmigiano reggiano, stracchino.', 'image/salumi e formaggi.jpg', '18.50', 'funghi-salsiccia-patatine'),
(12, 'Primi', 'Pasta alla carbonara', 'Spaghetti, tuorli uova, guanciale, pecorino romano, pepe nero.', 'image/carbonara.jpg', '12.50', ''),
(13, 'Secondi', 'Fiorentina', '250 gr di carne (2 persone).', 'image/fiorentina.jpg', '23', ''),
(14, 'Dolci', 'Tiramisù', 'Mascarpone, Savoiardi, caffè, uova, zucchero.', 'image/tiramisu.jpg', '8', ''),
(19, 'Vini', 'GatoNegro', 'VINO GATO NEGRO CABERNET SAUVIGNON BOTELLA 750ML', 'image/gato nero.png', '25', ''),
(20, 'Bibite', 'Sprite', '', 'image/sprite.jpg', '14', ''),
(22, 'Bibite', 'Gassosa', '', 'image/th.jpg', '5', ''),
(23, 'Antipasti', 'INsalata', 'pomodori, insalat, tonno', 'image/th.jpg', '14', 'pomodoro-cipolla');

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
(11, 'Federico', 'Pavaro', '2024-02-28 21:00:00', 5, '333 435 5180', 'menu solo pesce'),
(12, 'Federico', 'Pavaro', '2024-03-08 14:07:00', 2, '333 435 5180', ''),
(13, 'Francesca', 'Rossa', '2024-02-26 20:09:00', 5, '123 345 3190', ''),
(14, 'Pippo', 'Bianchi', '2024-03-10 12:04:00', 8, '122 321 3190', 'menu carne e patatine'),
(17, 'Federico', 'Pavaro', '2024-03-09 17:40:00', 5, '444 159 3190', ''),
(21, 'Federico', 'Pavaro', '2024-03-08 08:00:00', 2, '333 435 5180', ''),
(24, 'Federico', 'Pavaro', '2024-03-11 12:15:00', 5, '333 435 5180', '1 veetario'),
(25, 'Pippo', 'Bianchi', '2024-03-11 11:30:00', 5, '122 321 3190', ''),
(26, 'Federico', 'Pavaro', '2024-03-11 18:15:00', 5, '444 159 3190', ''),
(28, 'Federico', 'Pavaro', '2024-03-17 13:30:00', 6, '333 435 5180', '');

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
(38, 'Gas', '2024-02-01', 'fattureSpese/3fattura.docx', '123', '60', 'pagata', 'PayPal'),
(39, 'Gas', '2024-01-17', 'fattureSpese/4fattura.docx', '123', '30', 'pagata', 'Mastercard'),
(40, 'Luce', '2024-02-01', 'fattureSpese/5fattura.docx', '1001', '30', 'pagata', 'Bonifico'),
(42, 'Dipendenti', '2024-02-25', 'fattureSpese/7fattura.docx', '5000', '30', 'pagata', 'paypal');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `conferma`
--
ALTER TABLE `conferma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `magazzino`
--
ALTER TABLE `magazzino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT per la tabella `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT per la tabella `spese`
--
ALTER TABLE `spese`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
