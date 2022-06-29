-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 06:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `cadastro`
--

CREATE TABLE `cadastro` (
  `NOME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `CIDADE` varchar(100) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `cpf` int(11) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `sexo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cadastro`
--

INSERT INTO `cadastro` (`NOME`, `EMAIL`, `CIDADE`, `UF`, `cpf`, `endereco`, `celular`, `telefone`, `senha`, `sexo`) VALUES
('Matheus Mattesco', 'matheus.mattesco@edu.unifil.br', 'Sertao', 'pr', 5698742, 'Rua 7 de Setembro', 2147483647, 2147483647, ' senha', 'Masculino'),
('Olivia Asai', 'olivia.asai@gmail.com', 'londrina', 'PR', 2147483647, 'Rua 7 de Setembro', 2147483647, 2147483647, ' 12345', 'Feminino'),
('', '', '', '', 0, '', 0, 0, ' ', ''),
('Tênis', '', '', '', 0, '', 0, 0, ' ', ''),
('carlos', 'cgmiorin@edu.unifil.br', 'londrina', 'PR', 2147483647, 'Av. jk, 1500', 2147483647, 2147483647, ' senha', 'Masculino');

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `IDCATEGORIA` int(11) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`IDCATEGORIA`, `DESCRICAO`) VALUES
(1, 'Achocolatado'),
(3, 'Roupas'),
(10, 'celular'),
(11, 'celulares');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `IDCLI` int(10) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `SENHA` varchar(255) NOT NULL,
  `DTNASC` date NOT NULL,
  `ENDERECO` varchar(255) NOT NULL,
  `SEXO` int(1) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `TELEFONE` varchar(20) NOT NULL,
  `CELULAR` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`IDCLI`, `NOME`, `LOGIN`, `SENHA`, `DTNASC`, `ENDERECO`, `SEXO`, `CPF`, `RG`, `TELEFONE`, `CELULAR`) VALUES
(1, 'Anderson Macedo', 'anderson', '12345', '1979-03-22', 'Rua Lorem ipsum dolor sit amet', 1, '000.000.000-00', '00000000', '(43)3333-3333', '(43)3344-3344');

-- --------------------------------------------------------

--
-- Table structure for table `fornecedor`
--

CREATE TABLE `fornecedor` (
  `IDFOR` int(10) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `TELEFONE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fornecedor`
--

INSERT INTO `fornecedor` (`IDFOR`, `NOME`, `TELEFONE`) VALUES
(1, 'Unopar', '(43)3333-3333');

-- --------------------------------------------------------

--
-- Table structure for table `itempedido`
--

CREATE TABLE `itempedido` (
  `IDITEM` int(11) NOT NULL,
  `IDPED` int(11) NOT NULL,
  `IDPROD` int(11) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `QTDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itempedido`
--

INSERT INTO `itempedido` (`IDITEM`, `IDPED`, `IDPROD`, `SEQ`, `QTDE`) VALUES
(37, 50, 1, 1, 2),
(38, 50, 2, 2, 1),
(39, 51, 1, 1, 3),
(40, 51, 2, 2, 3),
(41, 52, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `marca`
--

CREATE TABLE `marca` (
  `IDMARCA` int(11) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marca`
--

INSERT INTO `marca` (`IDMARCA`, `DESCRICAO`) VALUES
(1, 'Native'),
(2, 'Nestle'),
(3, 'Nike'),
(7, 'vampetasso'),
(10, 'jordan');

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `IDPED` int(11) NOT NULL,
  `IDCLI` int(11) NOT NULL,
  `IDFOR` int(11) NOT NULL,
  `DATA` datetime NOT NULL DEFAULT current_timestamp(),
  `STATUS` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`IDPED`, `IDCLI`, `IDFOR`, `DATA`, `STATUS`) VALUES
(50, 1, 1, '2015-09-29 08:34:20', 'E'),
(51, 1, 1, '2015-09-30 12:05:28', 'E'),
(52, 1, 1, '2015-09-30 12:06:47', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `IDPROD` int(10) NOT NULL,
  `IDCATEGORIA` int(10) NOT NULL,
  `IDMARCA` int(10) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  `ESTOQUE` int(10) NOT NULL,
  `PRECO` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`IDPROD`, `IDCATEGORIA`, `IDMARCA`, `NOME`, `DESCRICAO`, `ESTOQUE`, `PRECO`) VALUES
(1, 1, 2, 'Nescau', 'Achocolatado em pó', 2, 20.3),
(2, 1, 1, 'Cereal', 'Cereal nutritivo', 17, 10.35),
(3, 3, 3, 'Tênis', 'Tênis da nike', 10, 450),
(10, 1, 1, 'Tênis', 'Nike', 12, 12),
(12, 1, 1, 'Tênis', 'Nike', 22, 67),
(17, 1, 2, 'Tênis', 'aaa', 22, 67),
(18, 1, 2, 'Tênis', 'aaa', 22, 67),
(19, 3, 2, 'Tênis', 'Nike', 25, 122);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IDCATEGORIA`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDCLI`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`IDFOR`);

--
-- Indexes for table `itempedido`
--
ALTER TABLE `itempedido`
  ADD PRIMARY KEY (`IDITEM`,`IDPED`),
  ADD KEY `IDPED` (`IDPED`),
  ADD KEY `IDPROD` (`IDPROD`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`IDMARCA`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IDPED`),
  ADD KEY `IDCLI` (`IDCLI`),
  ADD KEY `IDFOR` (`IDFOR`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`IDPROD`,`IDCATEGORIA`,`IDMARCA`),
  ADD KEY `IDCATEGORIA` (`IDCATEGORIA`),
  ADD KEY `IDMARCA` (`IDMARCA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `IDCATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IDCLI` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `IDFOR` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itempedido`
--
ALTER TABLE `itempedido`
  MODIFY `IDITEM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `marca`
--
ALTER TABLE `marca`
  MODIFY `IDMARCA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `IDPED` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `IDPROD` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itempedido`
--
ALTER TABLE `itempedido`
  ADD CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`IDPED`) REFERENCES `pedido` (`IDPED`),
  ADD CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`IDPROD`) REFERENCES `produtos` (`IDPROD`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`IDCLI`) REFERENCES `cliente` (`IDCLI`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`IDFOR`) REFERENCES `fornecedor` (`IDFOR`);

--
-- Constraints for table `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`IDCATEGORIA`) REFERENCES `categoria` (`IDCATEGORIA`),
  ADD CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`IDMARCA`) REFERENCES `marca` (`IDMARCA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
