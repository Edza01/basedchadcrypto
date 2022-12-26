-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2022 at 11:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cryptonews`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `postid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_comment` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `username` varchar(128) NOT NULL,
  `page_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`postid`, `user_id`, `post_comment`, `date`, `username`, `page_id`) VALUES
(264, 18, 'Ada', '2022-12-25 13:23:03', 'eeqweqw', 463),
(265, 18, '1', '2022-12-25 13:32:32', 'eeqweqw', 445),
(266, 18, 'D', '2022-12-25 13:50:26', 'eeqweqw', 468),
(267, 18, 'Dd', '2022-12-25 13:50:47', 'eeqweqw', 3),
(268, 18, 'G', '2022-12-25 14:00:31', 'eeqweqw', 472),
(269, 19, '22', '2022-12-25 14:06:48', 'easda1212', 445),
(270, 19, 'D', '2022-12-25 15:08:36', 'easda1212', 508),
(271, 19, 'Ddd', '2022-12-25 15:49:27', 'easda1212', 508),
(272, 19, 'S', '2022-12-25 15:49:36', 'easda1212', 493),
(273, 19, 'D', '2022-12-25 17:13:58', 'easda1212', 541),
(274, 19, 'Ad', '2022-12-25 17:50:48', 'easda1212', 492),
(275, 19, 'D', '2022-12-25 17:59:40', 'easda1212', 516),
(276, 19, 'Card-containercard-containercard-containercard-containercard-containercard-containercard-containercard-containercard-containercard-container', '2022-12-25 18:01:19', 'easda1212', 516),
(277, 19, 'Ad', '2022-12-25 18:05:28', 'easda1212', 509),
(278, 19, 'Adad', '2022-12-25 18:10:11', 'easda1212', 509),
(279, 18, 'Ada', '2022-12-25 18:10:34', 'eeqweqw', 509),
(280, 18, 'Ad', '2022-12-25 18:12:11', 'eeqweqw', 509),
(281, 18, 'Ad', '2022-12-25 18:13:43', 'eeqweqw', 539),
(282, 18, 'F', '2022-12-25 18:22:01', 'eeqweqw', 509),
(283, 18, 'F', '2022-12-25 18:22:06', 'eeqweqw', 539),
(284, 18, 'F', '2022-12-25 18:22:12', 'eeqweqw', 507),
(285, 18, 'A', '2022-12-25 18:22:17', 'eeqweqw', 523),
(286, 18, 'Adad', '2022-12-25 18:22:20', 'eeqweqw', 523),
(287, 18, 'Da', '2022-12-25 18:23:48', 'eeqweqw', 539),
(288, 18, 'D', '2022-12-25 18:24:22', 'eeqweqw', 517),
(289, 18, 'Adadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadadad dadad22323, aad . adadadadadadadadadadadadadadadadadadadadadadadad !', '2022-12-25 18:27:45', 'eeqweqw', 539),
(290, 18, 'F', '2022-12-25 19:04:10', 'eeqweqw', 514),
(291, 18, 'Dadada', '2022-12-25 19:29:34', 'eeqweqw', 509),
(292, 18, '1', '2022-12-25 19:29:39', 'eeqweqw', 509),
(293, 18, '222', '2022-12-25 22:25:00', 'eeqweqw', 509),
(294, 18, 'D', '2022-12-25 22:25:18', 'eeqweqw', 538),
(295, 18, 'Ddd', '2022-12-25 22:31:44', 'eeqweqw', 509),
(296, 18, 'D', '2022-12-26 10:31:53', 'eeqweqw', 509),
(297, 18, 'Ad', '2022-12-26 13:51:11', 'eeqweqw', 904),
(298, 18, 'A', '2022-12-26 13:51:22', 'eeqweqw', 907),
(299, 18, 'Eeqweqw', '2022-12-26 15:18:24', 'eeqweqw', 905),
(300, 18, 'F', '2022-12-26 15:27:59', 'eeqweqw', 904),
(301, 18, 'D', '2022-12-26 16:24:41', 'eeqweqw', 906),
(302, 18, 'D', '2022-12-26 17:18:56', 'eeqweqw', 908),
(303, 18, 'D', '2022-12-26 17:34:49', 'eeqweqw', 907),
(304, 18, 'D', '2022-12-26 19:08:56', 'eeqweqw', 903),
(305, 18, 'Dad', '2022-12-26 19:30:12', 'eeqweqw', 904),
(306, 18, '&lt;h1&gt; sds&lt;/h1&gt;', '2022-12-26 21:01:37', 'eeqweqw', 904),
(308, 18, 'D', '2022-12-26 22:26:14', 'eeqweqw', 904),
(309, 18, 'Ada', '2022-12-26 22:32:49', 'eeqweqw', 904),
(310, 18, 'Dadad', '2022-12-26 22:37:38', 'eeqweqw', 904),
(311, 18, 'Ad', '2022-12-26 23:23:38', 'eeqweqw', 905),
(312, 18, 'Ada', '2022-12-26 23:35:07', 'eeqweqw', 905),
(313, 18, 'Ada', '2022-12-26 23:35:14', 'eeqweqw', 943);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `post_header` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `image_name`, `created_at`, `post_header`) VALUES
(903, 4, '6.jpeg', '2022-12-24 12:23:49', 'Born Brave with Kamaru Usman Sweepstakes - Official US Rules'),
(904, 446, '10.jpg', '2022-12-24 12:48:44', 'A FIXED length string (can contain letters)'),
(905, 446, '9.jpeg', '2022-12-24 12:48:44', NULL),
(906, 446, '8.jpg', '2022-12-24 12:48:44', NULL),
(907, 446, '7.jpeg', '2022-12-24 12:48:44', NULL),
(908, 1, '1.webp', '2022-12-24 12:23:49', NULL),
(909, 2, '2.jpg', '2022-12-24 12:23:49', NULL),
(910, 3, '3.jpeg', '2022-12-24 12:23:49', NULL),
(942, 4, '6.jpeg', '2022-12-24 12:23:49', 'Born Brave with Kamaru Usman Sweepstakes - Official US Rules'),
(943, 446, '10.jpg', '2022-12-24 12:48:44', 'A FIXED length string (can contain letters)'),
(944, 446, '9.jpeg', '2022-12-24 12:48:44', NULL),
(945, 446, '8.jpg', '2022-12-24 12:48:44', NULL),
(946, 446, '7.jpeg', '2022-12-24 12:48:44', NULL),
(947, 1, '1.webp', '2022-12-24 12:23:49', NULL),
(948, 2, '2.jpg', '2022-12-24 12:23:49', NULL),
(949, 3, '3.jpeg', '2022-12-24 12:23:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`) VALUES
(7, 'admin', 'admin@admin.com', '$2y$10$p.sB534.vLKk6YMstSeoZ.cM0RFHk/y5Dz/0w4hze4Oy6FMnCLrrC', '2022-11-21 23:53:30'),
(8, 'dads', 'user@user.user', '$2y$10$lxsr6l0UgLD4jMS0ewp/5uVOFPGvb2MZpTeH/9vMTA/usPqlra7sW', '2022-11-22 13:50:19'),
(9, 'easda', 'edgars@cxcc.cc', '$2y$10$gvH20oGvsNsj2KbBgYcp3uiIiKuju13ImoOZyGYGv.1Ill4zO0p.i', '2022-12-23 13:01:47'),
(10, 'asdasda', 'asdasda@asdasda.asdasda', '$2y$10$dq3VCK183qweHVislbXOse0AhFIk5xlg1Jqnc.FUL3w0KA9vdWfRO', '2022-12-24 01:18:39'),
(11, 'adad@sdada.sdada', 'adad@sdada.sdada', '$2y$10$jsZQp5eYbMmwoi9h.dcwKudMuoQzjp5iDQgzQ6M44tt.VJ6HV3w4S', '2022-12-24 16:10:03'),
(12, 'easda', 'easda', '$2y$10$6hHHB3nNc7J/HT87WjadBuEch8nwNX/wTmDgVLEH5.piiXp/oB8Gi', '2022-12-24 17:25:14'),
(13, 'asdasda1', 'asdasda1', '$2y$10$I.EjIAUuCTCEE0Mk3B541OpYWTUGHk95DtGh3Cnk6jIxn.xWegQaO', '2022-12-24 17:25:34'),
(14, 'asdasda12', 'asdasda12', '$2y$10$CjgQJZvODPcXzppwVuESw.6uPHHKjSrYf6wMTkvfU5aIYXo.kMlpi', '2022-12-24 17:25:56'),
(15, 'adasd', 'adasd', '$2y$10$HJpDJQ0pFXEi6.2MfmUFFuUnJMrVQNjer3nuqzsrJ.pnoM6Gpe20i', '2022-12-24 19:34:11'),
(16, 'easdaeasda', 'easdaeasda', '$2y$10$fEis11b8xnMzSl8Ehuh9PerRqiksN.d.Pm00Zi4VHqw/AuJgdi.TW', '2022-12-25 12:07:34'),
(17, 'asdasda1', 'asdasda1asdasda1', '$2y$10$A1qSCSpsUDy.zdVVPg6Gt.kPwBkLULhamcWSm3t9xf4ohEp7uCFy.', '2022-12-25 12:35:14'),
(18, 'eeqweqw', 'eeqweqw', '$2y$10$stcovZQVV9Al0vhMfRAr5e.j6K2r3HGJmNniarTPv67LUwNxsc0ZK', '2022-12-25 12:49:48'),
(19, 'easda1212', 'easda1212', '$2y$10$lfLPCD2aMeF2t0.4UoVx2eMPjgTo9DEhJAk8LtLc8M9O1Ur6Q5zQy', '2022-12-25 14:06:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=950;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
