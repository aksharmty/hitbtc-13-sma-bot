-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2021 at 12:43 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashicko_botm`
--

-- --------------------------------------------------------

--
-- Table structure for table `candle`
--

CREATE TABLE `candle` (
  `id` int(100) NOT NULL,
  `open` varchar(50) NOT NULL,
  `close` varchar(50) NOT NULL,
  `min` varchar(50) NOT NULL,
  `max` varchar(50) NOT NULL,
  `timestamp` varchar(50) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `count` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candle`
--

INSERT INTO `candle` (`id`, `open`, `close`, `min`, `max`, `timestamp`, `volume`, `count`) VALUES
(1, '0.015717', '0.015705', '0.015705', '0.015717', '2021-06-17T12:30:00.000Z', '', ''),
(2, '0.015767', '0.015731', '0.015731', '0.015767', '2021-06-17T12:00:00.000Z', '', ''),
(3, '0.015768', '0.015749', '0.015740', '0.015771', '2021-06-17T11:30:00.000Z', '', ''),
(4, '0.015717', '0.015770', '0.015717', '0.015784', '2021-06-17T11:00:00.000Z', '', ''),
(5, '0.015673', '0.015717', '0.015673', '0.015727', '2021-06-17T10:30:00.000Z', '', ''),
(6, '0.015705', '0.015669', '0.015665', '0.015711', '2021-06-17T10:00:00.000Z', '', ''),
(7, '0.015741', '0.015675', '0.015675', '0.015741', '2021-06-17T09:30:00.000Z', '', ''),
(8, '0.015761', '0.015722', '0.015697', '0.015761', '2021-06-17T09:00:00.000Z', '', ''),
(9, '0.015743', '0.015773', '0.015740', '0.015773', '2021-06-17T08:30:00.000Z', '', ''),
(10, '0.015721', '0.015719', '0.015719', '0.015771', '2021-06-17T08:00:00.000Z', '', ''),
(11, '0.015728', '0.015718', '0.015718', '0.015742', '2021-06-17T07:30:00.000Z', '', ''),
(12, '0.015748', '0.015734', '0.015711', '0.015787', '2021-06-17T07:00:00.000Z', '', ''),
(13, '0.015750', '0.015755', '0.015730', '0.015759', '2021-06-17T06:30:00.000Z', '', ''),
(14, '0.015799', '0.015743', '0.015727', '0.015818', '2021-06-17T06:00:00.000Z', '', ''),
(15, '0.015705', '0.015813', '0.015705', '0.015813', '2021-06-17T05:30:00.000Z', '', ''),
(16, '0.015728', '0.015707', '0.015707', '0.015750', '2021-06-17T05:00:00.000Z', '', ''),
(17, '0.015739', '0.015737', '0.015717', '0.015755', '2021-06-17T04:30:00.000Z', '', ''),
(18, '0.015762', '0.015711', '0.015711', '0.015762', '2021-06-17T04:00:00.000Z', '', ''),
(19, '0.015764', '0.015776', '0.015757', '0.015776', '2021-06-17T03:30:00.000Z', '', ''),
(20, '0.015785', '0.015779', '0.015779', '0.015803', '2021-06-17T03:00:00.000Z', '', ''),
(21, '0.015739', '0.015758', '0.015739', '0.015790', '2021-06-17T02:30:00.000Z', '', ''),
(22, '0.015715', '0.015735', '0.015703', '0.015740', '2021-06-17T02:00:00.000Z', '', ''),
(23, '0.015640', '0.015715', '0.015640', '0.015730', '2021-06-17T01:30:00.000Z', '', ''),
(24, '0.015654', '0.015624', '0.015624', '0.015684', '2021-06-17T01:00:00.000Z', '', ''),
(25, '0.015641', '0.015641', '0.015606', '0.015641', '2021-06-17T00:30:00.000Z', '', ''),
(26, '0.015510', '0.015625', '0.015510', '0.015639', '2021-06-17T00:00:00.000Z', '', ''),
(27, '0.015479', '0.015459', '0.015456', '0.015485', '2021-06-16T23:30:00.000Z', '', ''),
(28, '0.015471', '0.015492', '0.015449', '0.015517', '2021-06-16T23:00:00.000Z', '', ''),
(29, '0.015559', '0.015494', '0.015484', '0.015559', '2021-06-16T22:30:00.000Z', '', ''),
(30, '0.015544', '0.015566', '0.015543', '0.015575', '2021-06-16T22:00:00.000Z', '', ''),
(31, '0.015533', '0.015561', '0.015519', '0.015599', '2021-06-16T21:30:00.000Z', '', ''),
(32, '0.015582', '0.015556', '0.015485', '0.015597', '2021-06-16T21:00:00.000Z', '', ''),
(33, '0.015568', '0.015582', '0.015537', '0.015582', '2021-06-16T20:30:00.000Z', '', ''),
(34, '0.015647', '0.015595', '0.015587', '0.015656', '2021-06-16T20:00:00.000Z', '', ''),
(35, '0.015613', '0.015641', '0.015599', '0.015641', '2021-06-16T19:30:00.000Z', '', ''),
(36, '0.015553', '0.015547', '0.015538', '0.015586', '2021-06-16T19:00:00.000Z', '', ''),
(37, '0.015471', '0.015512', '0.015451', '0.015517', '2021-06-16T18:30:00.000Z', '', ''),
(38, '0.015322', '0.015481', '0.015257', '0.015481', '2021-06-16T18:00:00.000Z', '', ''),
(39, '0.015332', '0.015321', '0.015321', '0.015365', '2021-06-16T17:30:00.000Z', '', ''),
(40, '0.015327', '0.015331', '0.015292', '0.015342', '2021-06-16T17:00:00.000Z', '', ''),
(41, '0.015352', '0.015351', '0.015340', '0.015398', '2021-06-16T16:30:00.000Z', '', ''),
(42, '0.015425', '0.015358', '0.015358', '0.015425', '2021-06-16T16:00:00.000Z', '', ''),
(43, '0.015357', '0.015421', '0.015356', '0.015435', '2021-06-16T15:30:00.000Z', '', ''),
(44, '0.015339', '0.015357', '0.015338', '0.015419', '2021-06-16T15:00:00.000Z', '', ''),
(45, '0.015390', '0.015329', '0.015329', '0.015412', '2021-06-16T14:30:00.000Z', '', ''),
(46, '0.015391', '0.015371', '0.015333', '0.015391', '2021-06-16T14:00:00.000Z', '', ''),
(47, '0.015381', '0.015395', '0.015356', '0.015412', '2021-06-16T13:30:00.000Z', '', ''),
(48, '0.015430', '0.015394', '0.015373', '0.015436', '2021-06-16T13:00:00.000Z', '', ''),
(49, '0.015482', '0.015435', '0.015433', '0.015500', '2021-06-16T12:30:00.000Z', '', ''),
(50, '0.015513', '0.015483', '0.015431', '0.015516', '2021-06-16T12:00:00.000Z', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `coin`
--

CREATE TABLE `coin` (
  `id` int(10) NOT NULL,
  `coin` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `market` varchar(50) NOT NULL,
  `ch` varchar(50) NOT NULL,
  `son` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coin`
--

INSERT INTO `coin` (`id`, `coin`, `quantity`, `market`, `ch`, `son`) VALUES
(1, 'LTC', '0.001', 'BTC', '1', '1'),
(2, 'ADA', '1', 'BTC', '1', '1'),
(3, 'TRX', '1', 'BTC', '1', '1'),
(4, 'DOGE', '10', 'BTC', '1', '1'),
(5, 'BCH', '0.0001', 'BTC', '0', '1'),
(6, 'ETH', '0.0001', 'BTC', '0', '1'),
(7, 'XRP', '0.1', 'BTC', '0', '1'),
(8, 'XMR', '0.001', 'BTC', '0', '1'),
(9, 'XLM', '0.1', 'BTC', '0', '1'),
(10, 'VET', '10', 'BTC', '0', '1'),
(11, 'EOS', '0.01', 'BTC', '0', '1'),
(12, 'BSV', '0.001', 'BTC', '0', '1'),
(13, 'ETC', '0.01', 'BTC', '0', '1'),
(14, 'BNB', '0.01', 'BTC', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `id` int(225) NOT NULL,
  `pair` varchar(100) NOT NULL,
  `mrk` varchar(225) NOT NULL,
  `currency` varchar(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `stoploss` varchar(225) NOT NULL,
  `sell` varchar(50) NOT NULL,
  `sellprice` varchar(225) NOT NULL,
  `type` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `lastbal` varchar(50) NOT NULL,
  `selldate` varchar(50) NOT NULL,
  `dlastbal` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `clientOrderId` varchar(225) NOT NULL,
  `ma9` varchar(50) NOT NULL,
  `sellcid` varchar(225) NOT NULL,
  `ask` varchar(50) NOT NULL,
  `hma` varchar(50) NOT NULL,
  `hmas` varchar(225) NOT NULL,
  `ba` varchar(100) NOT NULL DEFAULT '0',
  `sa` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trade`
--

INSERT INTO `trade` (`id`, `pair`, `mrk`, `currency`, `price`, `stoploss`, `sell`, `sellprice`, `type`, `quantity`, `lastbal`, `selldate`, `dlastbal`, `date`, `clientOrderId`, `ma9`, `sellcid`, `ask`, `hma`, `hmas`, `ba`, `sa`) VALUES
(1, 'LTCETH', 'BTC', 'LTC', '0.00000398705', '0.00000404657', '0.00000399702', '0.00000399702', '1', '200', '0', '2021-04-30 14:51:01', '0', '2021-04-30 14:01:02', '0ff29b3ea743aef421096afa4242395b', '', '331f9981af5c8728570cbc869ef7e0e5', '', '', '3', '', ''),
(2, 'ADABTC', 'BTC', 'ADA', '57379.03', '56668.62', '58566.96', '57522.47757500000', '1', '0.00014', '0.000003026331', '2021-05-10 21:02:02', '0', '2021-05-10 21:00:11', 'ad2ab82052ba67b64055c5df3fe0bfe0', '', 'e793bd02d694a3771718fba413d61bdd', '0', '', '3', '1', ''),
(3, 'TRXBTC', 'BTC', 'TRX', '-', '', '0.000010883', '-', '1', '0', '0', '2021-04-24 12:03:01', '0', '2021-04-24 12:01:03', '3f6c871235609e31f0f12efcfb4934e5', '', '', '0.0000018033', '0.297', '3', '', ''),
(4, 'DOGEBTC', 'BTC', 'DOGE', '58420.91', '58263.92', '58566.96', '58566.96227500001', '1', '0.00014', '0.000003026331', '2021-05-10 14:37:02', '0', '2021-05-10 14:35:03', 'd789446f19d29ff0780f6279c6bddb8c', '', '247aff796112813b206cb8101ba774e3', '0.00000219554', '', '3', '1', '1'),
(5, 'BCHBTC', 'BTC', 'BCH', '59090.60', '58720.00', '59238.32', '59238.32650000000', '1', '0.00028', '0.000003026331', '2021-05-10 11:32:02', '0', '2021-05-10 11:30:13', '1d71ffe7a38cd1444e88111adafe2c30', '', '8fa3d4046a7f49e9a1c414e0af6edbc7', '', '', '3', '', ''),
(6, 'ETHBTC', 'BTC', 'ETH', '58779.09', '58626.75', '58926.03', '58926.03772499999', '1', '0.00014', '0.000003026331', '2021-05-10 07:32:02', '0', '2021-05-10 07:30:12', 'f6b8be00e93febc439f9d32d9340d62b', '', '786a9411e34109a271e5474a550137b4', '0.015767', '', '3', '1', '1'),
(7, 'XRPBTC', 'BTC', 'XRP', '57410.00', '57113.80', '57553.52', '57553.52500000000', '1', '0.00014', '0.000003026331', '2021-05-10 01:33:02', '0', '2021-05-10 01:31:03', '7afd27219f82a02dba7b962e9ce4fa0c', '', 'c8ca36c199940965d2f0ffc51aa87e91', '0.000021843', '', '3', '1', ''),
(8, 'XMRBTC', 'BTC', 'XMR', '57484.46', '57292.60', '57628.17', '57628.17115000000', '1', '0.00014', '0.000003026331', '2021-05-09 23:32:03', '0', '2021-05-09 23:30:13', '43ee328764dca5447118c4da011a365e', '', 'ae02bac015909d65925b88f62dd4ff65', '', '', '3', '', ''),
(9, 'XLMBTC', 'BTC', 'XLM', '56969.40', '56418.08', '57111.82', '57111.82350000000', '1', '0.00014', '0.000003026331', '2021-05-09 19:03:01', '0', '2021-05-09 19:01:02', '356acf0f9c398dc9a610b376dbcbfe7a', '', 'fbbcb98c61cfa883261cf25672571d69', '', '', '3', '', ''),
(10, 'VETBTC', 'BTC', 'VET', '58007.34', '57710.00', '58152.35', '58152.35834999999', '1', '0.00014', '0.000003026331', '2021-05-09 16:33:01', '0', '2021-05-09 16:31:02', 'a7182ee07d5f6508bb15be94a575fe83', '', '4f9aa7cf1006313f3889b387c5a442c5', '0', '', '3', '1', '1'),
(11, 'EOSBTC', 'BTC', 'EOS', '58971.01', '58550.00', '0.00012797000', '59118.43752500000', '1', '0.00028', '0.000003026331', '2021-06-17 06:47:02', '0', '2021-05-09 09:00:10', '8a915df17c9372037209d79d0bcf1232', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '', '', '1', '', ''),
(12, 'NEOBTC', 'BTC', 'NEO', '58429.18', '57940.00', '58575.25', '58575.25295000000', '1', '0.00014', '0.000003026331', '2021-05-09 11:05:04', '0', '2021-05-09 11:03:01', '9b4ffb5cf97da717547df27fe8c3b6cc', '', '4d90f998ea3b4d4e3c40c5e88eb7cc54', '', '', '3', '', ''),
(13, 'ETCBTC', 'BTC', 'ETC', '58140.00', '57814.40', '58285.35', '58285.35000000000', '1', '0.00014', '0.000003026331', '2021-05-09 14:02:02', '0', '2021-05-09 14:00:11', 'c82c685416b912f8071d7f342065d090', '', '33a5cf67342c691413d1887e06124b90', '0.0010085', '', '3', '1', '1'),
(14, 'BNBBTC', 'BTC', 'BNB', '0.00000360926', '', '0.00000360926', '0.00000361828', '1', '250', '0', '2021-04-27 18:32:02', '0', '2021-04-27 18:11:02', '3cd845b13cf02dc046e01e6266abdefa', '', '', '0.0091851', '250', '3', '1', ''),
(15, 'DASHBTC', 'BTC', 'DASH', '58713.99', '58551.81', '58860.77', '58860.77497500000', '1', '0.00028', '0.000003026331', '2021-05-09 05:13:01', '0', '2021-05-09 05:11:01', 'e40426b4314b19c2e8eaee7066293776', '', 'a9f2ce0fe8b44e863ca1ac01f69a0896', '', '', '3', '', ''),
(338, 'BSVBTC', 'BTC', 'BSV', '0', '', '', '0.00000000000', '1', '0.10000000000', '0.006321481825', '', '0.000091873999', '2021-06-17 07:00:12', '9d50c58488859a1d74e02fba4d343765', '', 'NA', '0.004221', '', 'NA', '1', ''),
(337, 'EOSBTC', 'BTC', 'EOS', '0.00012797', '', '0.00012797', '0.00012828993', '1', '0.05000000000', '0.006321481825', '2021-06-17 06:47:02', '0.000045693590', '2021-06-17 03:08:03', 'f403aff93a941c1212c34800ea3c3244', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0.00012848', '5', 'FUND MISSING', '1', '1'),
(336, 'EOSBTC', 'BTC', 'EOS', '0.00012658', '', '0.00012797000', '0.00012689645', '1', '0.05000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000045689498', '2021-06-16 20:45:06', '3d37a02d001db590db62700040837b30', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '3', 'FUND MISSING', '', ''),
(335, 'EOSBTC', 'BTC', 'EOS', '0.00012809', '', '0.00012797000', '0.00012841023', '1', '0.02000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000022649272', '2021-06-16 17:08:04', 'c40133bb9dfea9446ef1292c600a58f2', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0.00012666', '1', '1', '', ''),
(334, 'EOSBTC', 'BTC', 'EOS', '0.00012781', '', '0.00012797000', '0.00012812953', '1', '0.02000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000022648879', '2021-06-16 16:59:02', '1455d80c7ba32ee5254cdf686d356586', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0.00012806', '', 'NA', '', ''),
(333, 'EOSBTC', 'BTC', 'EOS', '0.00012775', '', '0.00012797000', '0.00012806938', '1', '0.02000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000025206179', '2021-06-16 16:55:04', '295e6b1b86b59b1395acb4b7cde9687a', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(332, 'EOSBTC', 'BTC', 'EOS', '0.00012788', '', '0.00012797000', '0.00012819970', '1', '0.03000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000029046032', '2021-06-16 16:53:02', '7b72a99c981790bf2d91587c0e7d1168', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(331, 'EOSBTC', 'BTC', 'EOS', '0.00012784', '', '0.00012797000', '0.00012815960', '1', '0.04000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000034163434', '2021-06-16 16:51:02', '1626215652bd140f28218505e178e8cc', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(330, 'EOSBTC', 'BTC', 'EOS', '0.00012784', '', '0.00012797000', '0.00012815960', '1', '0.02000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000021379060', '2021-06-16 16:45:06', 'f4eb8c193b8aa6afa18b6f287b615246', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(329, 'EOSBTC', 'BTC', 'EOS', '0.00012756', '', '0.00012797000', '0.00012787890', '1', '0.02000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000021377459', '2021-06-16 16:28:03', 'c69bf07ddb112808e2a387a68b8f704f', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(328, 'EOSBTC', 'BTC', 'EOS', '0.00012763', '', '0.00012797000', '0.00012794908', '1', '0.02000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000023932357', '2021-06-16 16:26:03', '0f48d79d9efea052a5c74b56f1da23be', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(327, 'EOSBTC', 'BTC', 'EOS', '0.00012762', '', '0.00012797000', '0.00012793905', '1', '0.03000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000027764403', '2021-06-16 16:24:03', '134d183a4e5600536c10f88b97f42295', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(326, 'EOSBTC', 'BTC', 'EOS', '0.00012763', '', '0.00012797000', '0.00012794908', '1', '0.03000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000031596750', '2021-06-16 16:22:03', 'b0be85749412c249a6267e5a54153f71', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(325, 'EOSBTC', 'BTC', 'EOS', '0.00012775', '', '0.00012797000', '0.00012806938', '1', '0.04000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000036711349', '2021-06-16 16:20:06', '23fcd1a958749bbf87976cff702b5aa0', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(324, 'EOSBTC', 'BTC', 'EOS', '0.00012781', '', '0.00012797000', '0.00012812953', '1', '0.04000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000041828351', '2021-06-16 16:18:03', '73d4f67f3ca29ec27e9097cbf6c63959', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(323, 'EOSBTC', 'BTC', 'EOS', '0.00012780', '', '0.00012797000', '0.00012811950', '1', '0.05000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000048224102', '2021-06-16 15:59:02', '649561724fb7ff0367b71ff00f7b8e42', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(322, 'EOSBTC', 'BTC', 'EOS', '0.00012798', '', '0.00012797000', '0.00012829995', '1', '0.06000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000055909813', '2021-06-16 15:57:02', '630d1efa78ec895e88cafd801c652ef4', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(321, 'EOSBTC', 'BTC', 'EOS', '0.00012808', '', '0.00012797000', '0.00012840020', '1', '0.07000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000064883483', '2021-06-16 15:55:04', 'f05d5d54a53bdab966fec4039eb11ccd', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(320, 'EOSBTC', 'BTC', 'EOS', '0.00012823', '', '0.00012797000', '0.00012855058', '1', '0.08000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000075149515', '2021-06-16 15:53:02', 'c14d61c7f10b58b4a758579280f67609', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(319, 'EOSBTC', 'BTC', 'EOS', '0.00012803', '', '0.00012797000', '0.00012835008', '1', '0.10000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000087964038', '2021-06-16 15:51:03', '5fea1241acdb096a23e5ae2bdd51cfdc', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(318, 'EOSBTC', 'BTC', 'EOS', '0.00012807', '', '0.00012797000', '0.00012839018', '1', '0.11000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000102064417', '2021-06-16 15:49:02', 'cb6951777ecc6bf5d99d1dc8b19ec707', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(317, 'EOSBTC', 'BTC', 'EOS', '0.00012832', '', '0.00012797000', '0.00012864080', '1', '0.14000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000120045386', '2021-06-16 15:47:02', 'd6a3cfa8105fd3ce95d4f182bf7024e8', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(316, 'EOSBTC', 'BTC', 'EOS', '0.00012827', '', '0.00012797000', '0.00012859068', '1', '0.16000000000', '0.008232012125', '2021-06-17 06:47:02', '0.000140587057', '2021-06-16 15:45:06', 'efa16053482193630c18c86c9ca2f0a4', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(315, 'EOSBTC', 'BTC', 'EOS', '0.00012883', '', '0.00012797000', '0.00012915208', '1', '0.48', '0.688232012125', '2021-06-17 06:47:02', '0.000062866879', '2021-06-16 00:18:03', '22d01ae7bf5ff8b72f34cbf6c59e5195', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '0', '', '1', '', ''),
(314, 'EOSBTC', 'BTC', 'EOS', '0.00013131', '', '0.00012797000', '0.00013163828', '1', '0.24', '0.448232012125', '2021-06-17 06:47:02', '0.000094409642', '2021-06-15 17:34:03', '989f4b6655d98cabf6034c6f80462624', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '', '', '1', '', ''),
(313, 'EOSBTC', 'BTC', 'EOS', '0.00013250', '', '0.00012797000', '0.00013283125', '1', '0.12000000000', '0.328232012125', '2021-06-17 06:47:02', '0.000110323952', '2021-06-15 13:31:04', 'a65341e3b824bae1720902620674ca5b', '', '7bd24eeff8f3d6f19e7758c0bb3f1df3', '', '', '1', '', ''),
(312, 'TRXEOS', 'BTC', 'TRX', '0.01406863', '', '0.01411423000', '0.01410380158', '1', '5.00000000000', '323.00000000', '2021-06-13 02:50:05', '0.165393333106', '2021-06-13 02:44:50', 'fb7971db6bec3667e765b6f1c6f833d1', '', 'c9fded4d168030e887d3049a21d2ff4c', '0', '', '1', '1', ''),
(311, 'TRXEOS', 'BTC', 'TRX', '0.01413032', '', '0.01418139000', '0.01416564580', '1', '11.00000000000', '312.00000000', '2021-06-13 11:18:04', '0.320966743274', '2021-06-12 19:49:02', '4ae72ee4e1dc80994c697523a79cd21b', '', 'ce30fd6246e9083589cbc50ac6167d8a', '0', '', '1', '', ''),
(310, 'TRXEOS', 'BTC', 'TRX', '0.01422559', '', '0.01426305000', '0.01426115398', '1', '22.00000000000', '290.00000000', '2021-06-13 18:08:03', '0.634211389956', '2021-06-12 13:32:03', '83d55285b0d076e19b05edb7c123b6fc', '', '5580009c89e501ff3d3daa919a8c93b9', '', '', '1', '', ''),
(308, 'TRXEOS', 'BTC', 'TRX', '0.01407479', '', '0.01421543000', '0.01410997698', '1', '11.00000000000', '312.00000000', '2021-06-12 06:28:00', '0.319408468794', '2021-06-11 20:48:03', 'be226948300f2bf1f5c67263d7ba4717', '', '2fd33dd2aec81bb700f61686017b00e8', '', '', '1', '', ''),
(309, 'TRXEOS', 'BTC', 'TRX', '0.01397731', '', '0.01421797000', '0.01401225328', '1', '5.00000000000', '323.00000000', '2021-06-12 06:17:13', '0.164446438373', '2021-06-11 23:32:04', '27457e64a03c1133c3d27b9f600cee8a', '', 'cdce24273555131039dafd8c5074f598', '', '', '1', '', ''),
(307, 'TRXEOS', 'BTC', 'TRX', '0.01379747', '', '0.01421369000', '0.01383196368', '1', '22.00000000000', '290.00000000', '2021-06-12 06:08:03', '0.623225998700', '2021-06-11 19:32:04', '09f2c90d379c438ec4e81f76077a27e2', '', 'ff6e3d85310b1e2f228d0dae2fbeb020', '', '', '1', '', ''),
(304, 'TRXEOS', 'BTC', 'TRX', '0.01437867', '', '0.01450454000', '0.01441461668', '1', '84.00000000000', '165.00000000', '2021-06-11 07:53:48', '2.419449430601', '2021-06-11 06:02:03', '0651353e922f4bcce11b1fed758971b1', '', 'ddc30f076552d25d1ec72e7f828ce6b7', '', '', '1', '', ''),
(302, 'TRXEOS', 'BTC', 'TRX', '0.01447974', '', '0.01452827000', '0.01451593935', '1', '166.00000000000', '0', '2021-06-10 17:34:03', '4.817009558085', '2021-06-10 16:36:03', 'faf7cee996b5f86144e4be7601e393cb', '', '781b0c0896fe47c3db2cd3ed22f36e37', '', '', '1', '', ''),
(301, 'TRXEOS', 'BTC', 'TRX', '0.01424816', '', '0.01428605000', '0.01428378040', '1', '82.00000000000', '174.00000000', '2021-06-10 13:53:02', '2.336798122005', '2021-06-10 12:21:02', 'ea24bf342acef6057fef99cbd6d24277', '', 'c0efd94bbea12eacf2593267a8f1f363', '', '', '1', '', ''),
(300, 'TRXEOS', 'BTC', 'TRX', '0.01421820', '', '0.01426117000', '0.01425374550', '1', '174.00000000000', '0', '2021-06-10 12:49:43', '2.502991492125', '2021-06-10 04:02:03', '6436b03d5eb336da21b2f173212c4ccb', '', '4fd5330be25357cb688c89f548a6ff08', '0.01417416', '', '1', '', ''),
(299, 'TRXEOS', 'BTC', 'TRX', '0.01419775', '', '0.01424034325', '0.01424034325', '1', '174.00000000000', '0', '2021-06-10 02:18:03', '2.500034237019', '2021-06-10 02:17:02', '40f37724b3a78cce131446c0c174c1a1', '', '128b1f22c891baa5d060579a17efeab8', '0.01417186', '', '1', '', ''),
(298, 'TRXEOS', 'BTC', 'TRX', '0.01414007', '', '0.01418249021', '0.01418249021', '1', '1', '0', '2021-06-09 23:02:03', '2.500017307323', '2021-06-09 23:01:03', '07ebabb3579d1d78aceb4a70e74befc7', '', '6aa3efb0cfe0d8f83a4b46d428754f38', '0.01406759', '', '3', '', ''),
(297, 'TRXEOS', 'BTC', 'TRX', '0.01445758', '', '0.01450095274', '0.01450095274', '1', '1', '0', '2021-06-09 19:50:28', '2.500000000000', '2021-06-09 19:50:06', '7b23150e3bf6ae8bcdaa87f24b816c49', '', '550e32e94f101b84903214fbada48d26', '0.01445758', '', '3', '', ''),
(296, 'XLMUSD', 'BTC', 'XLM', '0.401235', '0.40224410250', '0.402817', '0.40223808750', '1', '0.4', '0', '2021-06-05 13:12:03', '0.190364832208', '2021-06-05 13:11:02', '6d05f2b0fb849d04d3e3c651f3d94403', '', 'dd5baa86228d7716f663dad30ca0207a', '', '', '3', '1', ''),
(295, 'LTCUSD', 'BTC', 'LTC', '183.0309', '183.49348975000', '183.5895', '183.48847725000', '1', '0.001', '0', '2021-06-05 09:04:02', '0.190136190568', '2021-06-05 09:03:02', '2c4ec954c8ac52d6ed647f463102ae57', '', '23406a46fc555760ed83166c66c546de', '', '', '3', '1', '1'),
(294, 'BCHUSD', 'BTC', 'BCH', '682.535', '684.24133750000', '685.691', '684.24133750000', '1', '0.0002', '0.000006338199', '2021-06-05 07:59:02', '0.189751271248', '2021-06-05 07:58:03', '3d570d95485dc9d819752f42858be320', '', 'e0a8425177915d0aa9b092e92d33243c', '', '', '3', '1', ''),
(293, 'BCHUSD', 'BTC', 'BCH', '669.459', '671.13264750000', '676.546', '676.54656900000', '1', '0.0002', '0.000006338199', '2021-06-05 04:43:02', '0.188569546208', '2021-06-05 04:42:03', 'bcf10de8a0da8abfef8230bf65168ecc', '', '5265bb733598c0d822ae8bbacf95407c', '', '', '3', '', ''),
(292, 'EOSUSD', 'BTC', 'EOS', '6.04021', '6.05531052500', '6.08686', '6.08686598000', '1', '0.03', '0', '2021-06-05 03:51:02', '0.187497477098', '2021-06-05 03:42:03', '896b61fc5eb0575d49bedfc6efa5f7e8', '', '94d9889cf871c6159f4f0dff52215da0', '', '', '3', '', ''),
(291, 'EOSUSD', 'BTC', 'EOS', '6.03016', '6.04523540000', '6.05408', '6.05408794000', '1', '0.03', '0', '2021-06-05 00:57:02', '0.187106151578', '2021-06-05 00:56:03', '78036b209e1fd05d713fb21c0eed2016', '', '33092d35e42ba8897c360d73da6b389f', '', '', '3', '', ''),
(290, 'XMRUSD', 'BTC', 'XMR', '299.1628', '299.91090750000', '307.0159', '299.91070700000', '1', '0.001', '0', '2021-06-04 07:10:06', '0.486538198098', '2021-06-04 07:09:02', '1711fa3b0b965350fcae8099849e3687', '', 'f40eef8400234ed60b0bb0310306cc3d', '', '', '3', '1', ''),
(289, 'XLMUSD', 'BTC', 'XLM', '0.413488', '0.41452172000', '0.417270', '0.41727006600', '1', '0.5', '0', '2021-06-03 07:37:02', '0.240750975788', '2021-06-03 07:36:02', 'cad9326677e4db86f27cb00be39456d8', '', '205e0a4538e5379e2b7310bd25b8f4d2', '', '', '3', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candle`
--
ALTER TABLE `candle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coin`
--
ALTER TABLE `coin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candle`
--
ALTER TABLE `candle`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `coin`
--
ALTER TABLE `coin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
