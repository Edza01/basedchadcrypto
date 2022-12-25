-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 25, 2022 at 09:38 PM
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
-- Database: `myfreegirlsclub`
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
(295, 18, 'Ddd', '2022-12-25 22:31:44', 'eeqweqw', 509);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `image_name`, `created_at`) VALUES
(1, 1, '1.webp', '2022-12-24 12:23:49'),
(2, 2, '2.jpg', '2022-12-24 12:23:49'),
(3, 3, '3.jpeg', '2022-12-24 12:23:49'),
(4, 4, 'blank.webp', '2022-12-24 12:23:49'),
(442, 446, '10.jpg', '2022-12-24 12:48:44'),
(443, 446, '9.jpeg', '2022-12-24 12:48:44'),
(444, 446, '8.jpg', '2022-12-24 12:48:44'),
(445, 446, '7.jpeg', '2022-12-24 12:48:44'),
(486, 1, '1.webp', '2022-12-24 12:23:49'),
(487, 2, '2.jpg', '2022-12-24 12:23:49'),
(488, 3, '3.jpeg', '2022-12-24 12:23:49'),
(489, 4, 'blank.webp', '2022-12-24 12:23:49'),
(490, 446, '10.jpg', '2022-12-24 12:48:44'),
(491, 446, '9.jpeg', '2022-12-24 12:48:44'),
(492, 446, '8.jpg', '2022-12-24 12:48:44'),
(493, 446, '7.jpeg', '2022-12-24 12:48:44'),
(494, 1, '1.webp', '2022-12-24 12:23:49'),
(495, 2, '2.jpg', '2022-12-24 12:23:49'),
(496, 3, '3.jpeg', '2022-12-24 12:23:49'),
(497, 4, 'blank.webp', '2022-12-24 12:23:49'),
(498, 446, '10.jpg', '2022-12-24 12:48:44'),
(499, 446, '9.jpeg', '2022-12-24 12:48:44'),
(500, 446, '8.jpg', '2022-12-24 12:48:44'),
(501, 446, '7.jpeg', '2022-12-24 12:48:44'),
(502, 1, '1.webp', '2022-12-24 12:23:49'),
(503, 2, '2.jpg', '2022-12-24 12:23:49'),
(504, 3, '3.jpeg', '2022-12-24 12:23:49'),
(505, 4, 'blank.webp', '2022-12-24 12:23:49'),
(506, 446, '10.jpg', '2022-12-24 12:48:44'),
(507, 446, '9.jpeg', '2022-12-24 12:48:44'),
(508, 446, '8.jpg', '2022-12-24 12:48:44'),
(509, 446, '7.jpeg', '2022-12-24 12:48:44'),
(510, 1, '1.webp', '2022-12-24 12:23:49'),
(511, 2, '2.jpg', '2022-12-24 12:23:49'),
(512, 3, '3.jpeg', '2022-12-24 12:23:49'),
(513, 4, 'blank.webp', '2022-12-24 12:23:49'),
(514, 446, '10.jpg', '2022-12-24 12:48:44'),
(515, 446, '9.jpeg', '2022-12-24 12:48:44'),
(516, 446, '8.jpg', '2022-12-24 12:48:44'),
(517, 446, '7.jpeg', '2022-12-24 12:48:44'),
(518, 1, '1.webp', '2022-12-24 12:23:49'),
(519, 2, '2.jpg', '2022-12-24 12:23:49'),
(520, 3, '3.jpeg', '2022-12-24 12:23:49'),
(521, 4, 'blank.webp', '2022-12-24 12:23:49'),
(522, 446, '10.jpg', '2022-12-24 12:48:44'),
(523, 446, '9.jpeg', '2022-12-24 12:48:44'),
(524, 446, '8.jpg', '2022-12-24 12:48:44'),
(525, 446, '7.jpeg', '2022-12-24 12:48:44'),
(526, 1, '1.webp', '2022-12-24 12:23:49'),
(527, 2, '2.jpg', '2022-12-24 12:23:49'),
(528, 3, '3.jpeg', '2022-12-24 12:23:49'),
(529, 4, 'blank.webp', '2022-12-24 12:23:49'),
(530, 446, '10.jpg', '2022-12-24 12:48:44'),
(531, 446, '9.jpeg', '2022-12-24 12:48:44'),
(532, 446, '8.jpg', '2022-12-24 12:48:44'),
(533, 446, '7.jpeg', '2022-12-24 12:48:44'),
(534, 1, '1.webp', '2022-12-24 12:23:49'),
(535, 2, '2.jpg', '2022-12-24 12:23:49'),
(536, 3, '3.jpeg', '2022-12-24 12:23:49'),
(537, 4, 'blank.webp', '2022-12-24 12:23:49'),
(538, 446, '10.jpg', '2022-12-24 12:48:44'),
(539, 446, '9.jpeg', '2022-12-24 12:48:44'),
(540, 446, '8.jpg', '2022-12-24 12:48:44'),
(541, 446, '7.jpeg', '2022-12-24 12:48:44'),
(542, 1, '1.webp', '2022-12-24 12:23:49'),
(543, 2, '2.jpg', '2022-12-24 12:23:49'),
(544, 3, '3.jpeg', '2022-12-24 12:23:49'),
(545, 4, 'blank.webp', '2022-12-24 12:23:49'),
(546, 446, '10.jpg', '2022-12-24 12:48:44'),
(547, 446, '9.jpeg', '2022-12-24 12:48:44'),
(548, 446, '8.jpg', '2022-12-24 12:48:44'),
(549, 446, '7.jpeg', '2022-12-24 12:48:44'),
(550, 1, '1.webp', '2022-12-24 12:23:49'),
(551, 2, '2.jpg', '2022-12-24 12:23:49'),
(552, 3, '3.jpeg', '2022-12-24 12:23:49'),
(553, 4, 'blank.webp', '2022-12-24 12:23:49'),
(554, 446, '10.jpg', '2022-12-24 12:48:44'),
(555, 446, '9.jpeg', '2022-12-24 12:48:44'),
(556, 446, '8.jpg', '2022-12-24 12:48:44'),
(557, 446, '7.jpeg', '2022-12-24 12:48:44'),
(558, 1, '1.webp', '2022-12-24 12:23:49'),
(559, 2, '2.jpg', '2022-12-24 12:23:49'),
(560, 3, '3.jpeg', '2022-12-24 12:23:49'),
(561, 4, 'blank.webp', '2022-12-24 12:23:49'),
(562, 446, '10.jpg', '2022-12-24 12:48:44'),
(563, 446, '9.jpeg', '2022-12-24 12:48:44'),
(564, 446, '8.jpg', '2022-12-24 12:48:44'),
(565, 446, '7.jpeg', '2022-12-24 12:48:44'),
(566, 1, '1.webp', '2022-12-24 12:23:49'),
(567, 2, '2.jpg', '2022-12-24 12:23:49'),
(568, 3, '3.jpeg', '2022-12-24 12:23:49'),
(569, 4, 'blank.webp', '2022-12-24 12:23:49'),
(570, 446, '10.jpg', '2022-12-24 12:48:44'),
(571, 446, '9.jpeg', '2022-12-24 12:48:44'),
(572, 446, '8.jpg', '2022-12-24 12:48:44'),
(573, 446, '7.jpeg', '2022-12-24 12:48:44'),
(574, 1, '1.webp', '2022-12-24 12:23:49'),
(575, 2, '2.jpg', '2022-12-24 12:23:49'),
(576, 3, '3.jpeg', '2022-12-24 12:23:49'),
(577, 4, 'blank.webp', '2022-12-24 12:23:49'),
(578, 446, '10.jpg', '2022-12-24 12:48:44'),
(579, 446, '9.jpeg', '2022-12-24 12:48:44'),
(580, 446, '8.jpg', '2022-12-24 12:48:44'),
(581, 446, '7.jpeg', '2022-12-24 12:48:44'),
(582, 1, '1.webp', '2022-12-24 12:23:49'),
(583, 2, '2.jpg', '2022-12-24 12:23:49'),
(584, 3, '3.jpeg', '2022-12-24 12:23:49'),
(585, 4, 'blank.webp', '2022-12-24 12:23:49'),
(586, 446, '10.jpg', '2022-12-24 12:48:44'),
(587, 446, '9.jpeg', '2022-12-24 12:48:44'),
(588, 446, '8.jpg', '2022-12-24 12:48:44'),
(589, 446, '7.jpeg', '2022-12-24 12:48:44'),
(590, 1, '1.webp', '2022-12-24 12:23:49'),
(591, 2, '2.jpg', '2022-12-24 12:23:49'),
(592, 1, '1.webp', '2022-12-24 12:23:49'),
(593, 2, '2.jpg', '2022-12-24 12:23:49'),
(594, 3, '3.jpeg', '2022-12-24 12:23:49'),
(595, 4, 'blank.webp', '2022-12-24 12:23:49'),
(596, 446, '10.jpg', '2022-12-24 12:48:44'),
(597, 446, '9.jpeg', '2022-12-24 12:48:44'),
(598, 446, '8.jpg', '2022-12-24 12:48:44'),
(599, 446, '7.jpeg', '2022-12-24 12:48:44'),
(600, 1, '1.webp', '2022-12-24 12:23:49'),
(601, 2, '2.jpg', '2022-12-24 12:23:49'),
(602, 3, '3.jpeg', '2022-12-24 12:23:49'),
(603, 4, 'blank.webp', '2022-12-24 12:23:49'),
(604, 446, '10.jpg', '2022-12-24 12:48:44'),
(605, 446, '9.jpeg', '2022-12-24 12:48:44'),
(606, 446, '8.jpg', '2022-12-24 12:48:44'),
(607, 446, '7.jpeg', '2022-12-24 12:48:44'),
(608, 1, '1.webp', '2022-12-24 12:23:49'),
(609, 2, '2.jpg', '2022-12-24 12:23:49'),
(610, 3, '3.jpeg', '2022-12-24 12:23:49'),
(611, 4, 'blank.webp', '2022-12-24 12:23:49'),
(612, 446, '10.jpg', '2022-12-24 12:48:44'),
(613, 446, '9.jpeg', '2022-12-24 12:48:44'),
(614, 446, '8.jpg', '2022-12-24 12:48:44'),
(615, 446, '7.jpeg', '2022-12-24 12:48:44'),
(616, 1, '1.webp', '2022-12-24 12:23:49'),
(617, 2, '2.jpg', '2022-12-24 12:23:49'),
(618, 3, '3.jpeg', '2022-12-24 12:23:49'),
(619, 4, 'blank.webp', '2022-12-24 12:23:49'),
(620, 446, '10.jpg', '2022-12-24 12:48:44'),
(621, 446, '9.jpeg', '2022-12-24 12:48:44'),
(622, 446, '8.jpg', '2022-12-24 12:48:44'),
(623, 446, '7.jpeg', '2022-12-24 12:48:44'),
(624, 1, '1.webp', '2022-12-24 12:23:49'),
(625, 2, '2.jpg', '2022-12-24 12:23:49'),
(626, 3, '3.jpeg', '2022-12-24 12:23:49'),
(627, 4, 'blank.webp', '2022-12-24 12:23:49'),
(628, 446, '10.jpg', '2022-12-24 12:48:44'),
(629, 446, '9.jpeg', '2022-12-24 12:48:44'),
(630, 446, '8.jpg', '2022-12-24 12:48:44'),
(631, 446, '7.jpeg', '2022-12-24 12:48:44'),
(632, 1, '1.webp', '2022-12-24 12:23:49'),
(633, 2, '2.jpg', '2022-12-24 12:23:49'),
(634, 3, '3.jpeg', '2022-12-24 12:23:49'),
(635, 4, 'blank.webp', '2022-12-24 12:23:49'),
(636, 446, '10.jpg', '2022-12-24 12:48:44'),
(637, 446, '9.jpeg', '2022-12-24 12:48:44'),
(638, 446, '8.jpg', '2022-12-24 12:48:44'),
(639, 446, '7.jpeg', '2022-12-24 12:48:44'),
(640, 1, '1.webp', '2022-12-24 12:23:49'),
(641, 2, '2.jpg', '2022-12-24 12:23:49'),
(642, 1, '1.webp', '2022-12-24 12:23:49'),
(643, 2, '2.jpg', '2022-12-24 12:23:49'),
(644, 3, '3.jpeg', '2022-12-24 12:23:49'),
(645, 4, 'blank.webp', '2022-12-24 12:23:49'),
(646, 446, '10.jpg', '2022-12-24 12:48:44'),
(647, 446, '9.jpeg', '2022-12-24 12:48:44'),
(648, 446, '8.jpg', '2022-12-24 12:48:44'),
(649, 446, '7.jpeg', '2022-12-24 12:48:44'),
(650, 1, '1.webp', '2022-12-24 12:23:49'),
(651, 2, '2.jpg', '2022-12-24 12:23:49'),
(652, 3, '3.jpeg', '2022-12-24 12:23:49'),
(653, 4, 'blank.webp', '2022-12-24 12:23:49'),
(654, 446, '10.jpg', '2022-12-24 12:48:44'),
(655, 446, '9.jpeg', '2022-12-24 12:48:44'),
(656, 446, '8.jpg', '2022-12-24 12:48:44'),
(657, 446, '7.jpeg', '2022-12-24 12:48:44'),
(658, 1, '1.webp', '2022-12-24 12:23:49'),
(659, 2, '2.jpg', '2022-12-24 12:23:49'),
(660, 3, '3.jpeg', '2022-12-24 12:23:49'),
(661, 4, 'blank.webp', '2022-12-24 12:23:49'),
(662, 446, '10.jpg', '2022-12-24 12:48:44'),
(663, 446, '9.jpeg', '2022-12-24 12:48:44'),
(664, 446, '8.jpg', '2022-12-24 12:48:44'),
(665, 446, '7.jpeg', '2022-12-24 12:48:44'),
(666, 1, '1.webp', '2022-12-24 12:23:49'),
(667, 2, '2.jpg', '2022-12-24 12:23:49'),
(668, 3, '3.jpeg', '2022-12-24 12:23:49'),
(669, 4, 'blank.webp', '2022-12-24 12:23:49'),
(670, 446, '10.jpg', '2022-12-24 12:48:44'),
(671, 446, '9.jpeg', '2022-12-24 12:48:44'),
(672, 446, '8.jpg', '2022-12-24 12:48:44'),
(673, 446, '7.jpeg', '2022-12-24 12:48:44'),
(674, 1, '1.webp', '2022-12-24 12:23:49'),
(675, 2, '2.jpg', '2022-12-24 12:23:49'),
(676, 3, '3.jpeg', '2022-12-24 12:23:49'),
(677, 4, 'blank.webp', '2022-12-24 12:23:49'),
(678, 446, '10.jpg', '2022-12-24 12:48:44'),
(679, 446, '9.jpeg', '2022-12-24 12:48:44'),
(680, 446, '8.jpg', '2022-12-24 12:48:44'),
(681, 446, '7.jpeg', '2022-12-24 12:48:44'),
(682, 1, '1.webp', '2022-12-24 12:23:49'),
(683, 2, '2.jpg', '2022-12-24 12:23:49'),
(684, 3, '3.jpeg', '2022-12-24 12:23:49'),
(685, 4, 'blank.webp', '2022-12-24 12:23:49'),
(686, 446, '10.jpg', '2022-12-24 12:48:44'),
(687, 446, '9.jpeg', '2022-12-24 12:48:44'),
(688, 446, '8.jpg', '2022-12-24 12:48:44'),
(689, 446, '7.jpeg', '2022-12-24 12:48:44'),
(690, 1, '1.webp', '2022-12-24 12:23:49'),
(691, 2, '2.jpg', '2022-12-24 12:23:49'),
(692, 1, '1.webp', '2022-12-24 12:23:49'),
(693, 2, '2.jpg', '2022-12-24 12:23:49'),
(694, 3, '3.jpeg', '2022-12-24 12:23:49'),
(695, 4, 'blank.webp', '2022-12-24 12:23:49'),
(696, 446, '10.jpg', '2022-12-24 12:48:44'),
(697, 446, '9.jpeg', '2022-12-24 12:48:44'),
(698, 446, '8.jpg', '2022-12-24 12:48:44'),
(699, 446, '7.jpeg', '2022-12-24 12:48:44'),
(700, 1, '1.webp', '2022-12-24 12:23:49'),
(701, 2, '2.jpg', '2022-12-24 12:23:49'),
(702, 3, '3.jpeg', '2022-12-24 12:23:49'),
(703, 4, 'blank.webp', '2022-12-24 12:23:49'),
(704, 446, '10.jpg', '2022-12-24 12:48:44'),
(705, 446, '9.jpeg', '2022-12-24 12:48:44'),
(706, 446, '8.jpg', '2022-12-24 12:48:44'),
(707, 446, '7.jpeg', '2022-12-24 12:48:44'),
(708, 1, '1.webp', '2022-12-24 12:23:49'),
(709, 2, '2.jpg', '2022-12-24 12:23:49'),
(710, 3, '3.jpeg', '2022-12-24 12:23:49'),
(711, 4, 'blank.webp', '2022-12-24 12:23:49'),
(712, 446, '10.jpg', '2022-12-24 12:48:44'),
(713, 446, '9.jpeg', '2022-12-24 12:48:44'),
(714, 446, '8.jpg', '2022-12-24 12:48:44'),
(715, 446, '7.jpeg', '2022-12-24 12:48:44'),
(716, 1, '1.webp', '2022-12-24 12:23:49'),
(717, 2, '2.jpg', '2022-12-24 12:23:49'),
(718, 3, '3.jpeg', '2022-12-24 12:23:49'),
(719, 4, 'blank.webp', '2022-12-24 12:23:49'),
(720, 446, '10.jpg', '2022-12-24 12:48:44'),
(721, 446, '9.jpeg', '2022-12-24 12:48:44'),
(722, 446, '8.jpg', '2022-12-24 12:48:44'),
(723, 446, '7.jpeg', '2022-12-24 12:48:44'),
(724, 1, '1.webp', '2022-12-24 12:23:49'),
(725, 2, '2.jpg', '2022-12-24 12:23:49'),
(726, 3, '3.jpeg', '2022-12-24 12:23:49'),
(727, 4, 'blank.webp', '2022-12-24 12:23:49'),
(728, 446, '10.jpg', '2022-12-24 12:48:44'),
(729, 446, '9.jpeg', '2022-12-24 12:48:44'),
(730, 446, '8.jpg', '2022-12-24 12:48:44'),
(731, 446, '7.jpeg', '2022-12-24 12:48:44'),
(732, 1, '1.webp', '2022-12-24 12:23:49'),
(733, 2, '2.jpg', '2022-12-24 12:23:49'),
(734, 3, '3.jpeg', '2022-12-24 12:23:49'),
(735, 4, 'blank.webp', '2022-12-24 12:23:49'),
(736, 446, '10.jpg', '2022-12-24 12:48:44'),
(737, 446, '9.jpeg', '2022-12-24 12:48:44'),
(738, 446, '8.jpg', '2022-12-24 12:48:44'),
(739, 446, '7.jpeg', '2022-12-24 12:48:44'),
(740, 1, '1.webp', '2022-12-24 12:23:49'),
(741, 2, '2.jpg', '2022-12-24 12:23:49'),
(742, 1, '1.webp', '2022-12-24 12:23:49'),
(743, 2, '2.jpg', '2022-12-24 12:23:49'),
(744, 3, '3.jpeg', '2022-12-24 12:23:49'),
(745, 4, 'blank.webp', '2022-12-24 12:23:49'),
(746, 446, '10.jpg', '2022-12-24 12:48:44'),
(747, 446, '9.jpeg', '2022-12-24 12:48:44'),
(748, 446, '8.jpg', '2022-12-24 12:48:44'),
(749, 446, '7.jpeg', '2022-12-24 12:48:44'),
(750, 1, '1.webp', '2022-12-24 12:23:49'),
(751, 2, '2.jpg', '2022-12-24 12:23:49'),
(752, 3, '3.jpeg', '2022-12-24 12:23:49'),
(753, 4, 'blank.webp', '2022-12-24 12:23:49'),
(754, 446, '10.jpg', '2022-12-24 12:48:44'),
(755, 446, '9.jpeg', '2022-12-24 12:48:44'),
(756, 446, '8.jpg', '2022-12-24 12:48:44'),
(757, 446, '7.jpeg', '2022-12-24 12:48:44'),
(758, 1, '1.webp', '2022-12-24 12:23:49'),
(759, 2, '2.jpg', '2022-12-24 12:23:49'),
(760, 3, '3.jpeg', '2022-12-24 12:23:49'),
(761, 4, 'blank.webp', '2022-12-24 12:23:49'),
(762, 446, '10.jpg', '2022-12-24 12:48:44'),
(763, 446, '9.jpeg', '2022-12-24 12:48:44'),
(764, 446, '8.jpg', '2022-12-24 12:48:44'),
(765, 446, '7.jpeg', '2022-12-24 12:48:44'),
(766, 1, '1.webp', '2022-12-24 12:23:49'),
(767, 2, '2.jpg', '2022-12-24 12:23:49'),
(768, 3, '3.jpeg', '2022-12-24 12:23:49'),
(769, 4, 'blank.webp', '2022-12-24 12:23:49'),
(770, 446, '10.jpg', '2022-12-24 12:48:44'),
(771, 446, '9.jpeg', '2022-12-24 12:48:44'),
(772, 446, '8.jpg', '2022-12-24 12:48:44'),
(773, 446, '7.jpeg', '2022-12-24 12:48:44'),
(774, 1, '1.webp', '2022-12-24 12:23:49'),
(775, 2, '2.jpg', '2022-12-24 12:23:49'),
(776, 3, '3.jpeg', '2022-12-24 12:23:49'),
(777, 4, 'blank.webp', '2022-12-24 12:23:49'),
(778, 446, '10.jpg', '2022-12-24 12:48:44'),
(779, 446, '9.jpeg', '2022-12-24 12:48:44'),
(780, 446, '8.jpg', '2022-12-24 12:48:44'),
(781, 446, '7.jpeg', '2022-12-24 12:48:44'),
(782, 1, '1.webp', '2022-12-24 12:23:49'),
(783, 2, '2.jpg', '2022-12-24 12:23:49'),
(784, 3, '3.jpeg', '2022-12-24 12:23:49'),
(785, 4, 'blank.webp', '2022-12-24 12:23:49'),
(786, 446, '10.jpg', '2022-12-24 12:48:44'),
(787, 446, '9.jpeg', '2022-12-24 12:48:44'),
(788, 446, '8.jpg', '2022-12-24 12:48:44'),
(789, 446, '7.jpeg', '2022-12-24 12:48:44'),
(790, 1, '1.webp', '2022-12-24 12:23:49'),
(791, 2, '2.jpg', '2022-12-24 12:23:49'),
(792, 1, '1.webp', '2022-12-24 12:23:49'),
(793, 2, '2.jpg', '2022-12-24 12:23:49'),
(794, 3, '3.jpeg', '2022-12-24 12:23:49'),
(795, 4, 'blank.webp', '2022-12-24 12:23:49'),
(796, 446, '10.jpg', '2022-12-24 12:48:44'),
(797, 446, '9.jpeg', '2022-12-24 12:48:44'),
(798, 446, '8.jpg', '2022-12-24 12:48:44'),
(799, 446, '7.jpeg', '2022-12-24 12:48:44'),
(800, 1, '1.webp', '2022-12-24 12:23:49'),
(801, 2, '2.jpg', '2022-12-24 12:23:49'),
(802, 3, '3.jpeg', '2022-12-24 12:23:49'),
(803, 4, 'blank.webp', '2022-12-24 12:23:49'),
(804, 446, '10.jpg', '2022-12-24 12:48:44'),
(805, 446, '9.jpeg', '2022-12-24 12:48:44'),
(806, 446, '8.jpg', '2022-12-24 12:48:44'),
(807, 446, '7.jpeg', '2022-12-24 12:48:44'),
(808, 1, '1.webp', '2022-12-24 12:23:49'),
(809, 2, '2.jpg', '2022-12-24 12:23:49'),
(810, 3, '3.jpeg', '2022-12-24 12:23:49'),
(811, 4, 'blank.webp', '2022-12-24 12:23:49'),
(812, 446, '10.jpg', '2022-12-24 12:48:44'),
(813, 446, '9.jpeg', '2022-12-24 12:48:44'),
(814, 446, '8.jpg', '2022-12-24 12:48:44'),
(815, 446, '7.jpeg', '2022-12-24 12:48:44'),
(816, 1, '1.webp', '2022-12-24 12:23:49'),
(817, 2, '2.jpg', '2022-12-24 12:23:49'),
(818, 3, '3.jpeg', '2022-12-24 12:23:49'),
(819, 4, 'blank.webp', '2022-12-24 12:23:49'),
(820, 446, '10.jpg', '2022-12-24 12:48:44'),
(821, 446, '9.jpeg', '2022-12-24 12:48:44'),
(822, 446, '8.jpg', '2022-12-24 12:48:44'),
(823, 446, '7.jpeg', '2022-12-24 12:48:44'),
(824, 1, '1.webp', '2022-12-24 12:23:49'),
(825, 2, '2.jpg', '2022-12-24 12:23:49'),
(826, 3, '3.jpeg', '2022-12-24 12:23:49'),
(827, 4, 'blank.webp', '2022-12-24 12:23:49'),
(828, 446, '10.jpg', '2022-12-24 12:48:44'),
(829, 446, '9.jpeg', '2022-12-24 12:48:44'),
(830, 446, '8.jpg', '2022-12-24 12:48:44'),
(831, 446, '7.jpeg', '2022-12-24 12:48:44'),
(832, 1, '1.webp', '2022-12-24 12:23:49'),
(833, 2, '2.jpg', '2022-12-24 12:23:49'),
(834, 3, '3.jpeg', '2022-12-24 12:23:49'),
(835, 4, 'blank.webp', '2022-12-24 12:23:49'),
(836, 446, '10.jpg', '2022-12-24 12:48:44'),
(837, 446, '9.jpeg', '2022-12-24 12:48:44'),
(838, 446, '8.jpg', '2022-12-24 12:48:44'),
(839, 446, '7.jpeg', '2022-12-24 12:48:44'),
(840, 1, '1.webp', '2022-12-24 12:23:49'),
(841, 2, '2.jpg', '2022-12-24 12:23:49'),
(842, 1, '1.webp', '2022-12-24 12:23:49'),
(843, 2, '2.jpg', '2022-12-24 12:23:49'),
(844, 3, '3.jpeg', '2022-12-24 12:23:49'),
(845, 4, 'blank.webp', '2022-12-24 12:23:49'),
(846, 446, '10.jpg', '2022-12-24 12:48:44'),
(847, 446, '9.jpeg', '2022-12-24 12:48:44'),
(848, 446, '8.jpg', '2022-12-24 12:48:44'),
(849, 446, '7.jpeg', '2022-12-24 12:48:44'),
(850, 1, '1.webp', '2022-12-24 12:23:49'),
(851, 2, '2.jpg', '2022-12-24 12:23:49'),
(852, 3, '3.jpeg', '2022-12-24 12:23:49'),
(853, 4, 'blank.webp', '2022-12-24 12:23:49'),
(854, 446, '10.jpg', '2022-12-24 12:48:44'),
(855, 446, '9.jpeg', '2022-12-24 12:48:44'),
(856, 446, '8.jpg', '2022-12-24 12:48:44'),
(857, 446, '7.jpeg', '2022-12-24 12:48:44'),
(858, 1, '1.webp', '2022-12-24 12:23:49'),
(859, 2, '2.jpg', '2022-12-24 12:23:49'),
(860, 3, '3.jpeg', '2022-12-24 12:23:49'),
(861, 4, 'blank.webp', '2022-12-24 12:23:49'),
(862, 446, '10.jpg', '2022-12-24 12:48:44'),
(863, 446, '9.jpeg', '2022-12-24 12:48:44'),
(864, 446, '8.jpg', '2022-12-24 12:48:44'),
(865, 446, '7.jpeg', '2022-12-24 12:48:44'),
(866, 1, '1.webp', '2022-12-24 12:23:49'),
(867, 2, '2.jpg', '2022-12-24 12:23:49'),
(868, 3, '3.jpeg', '2022-12-24 12:23:49'),
(869, 4, 'blank.webp', '2022-12-24 12:23:49'),
(870, 446, '10.jpg', '2022-12-24 12:48:44'),
(871, 446, '9.jpeg', '2022-12-24 12:48:44'),
(872, 446, '8.jpg', '2022-12-24 12:48:44'),
(873, 446, '7.jpeg', '2022-12-24 12:48:44'),
(874, 1, '1.webp', '2022-12-24 12:23:49'),
(875, 2, '2.jpg', '2022-12-24 12:23:49'),
(876, 3, '3.jpeg', '2022-12-24 12:23:49'),
(877, 4, 'blank.webp', '2022-12-24 12:23:49'),
(878, 446, '10.jpg', '2022-12-24 12:48:44'),
(879, 446, '9.jpeg', '2022-12-24 12:48:44'),
(880, 446, '8.jpg', '2022-12-24 12:48:44'),
(881, 446, '7.jpeg', '2022-12-24 12:48:44'),
(882, 1, '1.webp', '2022-12-24 12:23:49'),
(883, 2, '2.jpg', '2022-12-24 12:23:49'),
(884, 3, '3.jpeg', '2022-12-24 12:23:49'),
(885, 4, 'blank.webp', '2022-12-24 12:23:49'),
(886, 446, '10.jpg', '2022-12-24 12:48:44'),
(887, 446, '9.jpeg', '2022-12-24 12:48:44'),
(888, 446, '8.jpg', '2022-12-24 12:48:44'),
(889, 446, '7.jpeg', '2022-12-24 12:48:44'),
(890, 1, '1.webp', '2022-12-24 12:23:49'),
(891, 2, '2.jpg', '2022-12-24 12:23:49'),
(892, 1, '1.webp', '2022-12-24 12:23:49'),
(893, 2, '2.jpg', '2022-12-24 12:23:49'),
(894, 3, '3.jpeg', '2022-12-24 12:23:49'),
(895, 4, 'blank.webp', '2022-12-24 12:23:49'),
(896, 446, '10.jpg', '2022-12-24 12:48:44'),
(897, 446, '9.jpeg', '2022-12-24 12:48:44'),
(898, 446, '8.jpg', '2022-12-24 12:48:44'),
(899, 446, '7.jpeg', '2022-12-24 12:48:44'),
(900, 1, '1.webp', '2022-12-24 12:23:49'),
(901, 2, '2.jpg', '2022-12-24 12:23:49'),
(902, 3, '3.jpeg', '2022-12-24 12:23:49'),
(903, 4, 'blank.webp', '2022-12-24 12:23:49'),
(904, 446, '10.jpg', '2022-12-24 12:48:44'),
(905, 446, '9.jpeg', '2022-12-24 12:48:44'),
(906, 446, '8.jpg', '2022-12-24 12:48:44'),
(907, 446, '7.jpeg', '2022-12-24 12:48:44'),
(908, 1, '1.webp', '2022-12-24 12:23:49'),
(909, 2, '2.jpg', '2022-12-24 12:23:49'),
(910, 3, '3.jpeg', '2022-12-24 12:23:49'),
(911, 4, 'blank.webp', '2022-12-24 12:23:49'),
(912, 446, '10.jpg', '2022-12-24 12:48:44'),
(913, 446, '9.jpeg', '2022-12-24 12:48:44'),
(914, 446, '8.jpg', '2022-12-24 12:48:44'),
(915, 446, '7.jpeg', '2022-12-24 12:48:44'),
(916, 1, '1.webp', '2022-12-24 12:23:49'),
(917, 2, '2.jpg', '2022-12-24 12:23:49'),
(918, 3, '3.jpeg', '2022-12-24 12:23:49'),
(919, 4, 'blank.webp', '2022-12-24 12:23:49'),
(920, 446, '10.jpg', '2022-12-24 12:48:44'),
(921, 446, '9.jpeg', '2022-12-24 12:48:44'),
(922, 446, '8.jpg', '2022-12-24 12:48:44'),
(923, 446, '7.jpeg', '2022-12-24 12:48:44'),
(924, 1, '1.webp', '2022-12-24 12:23:49'),
(925, 2, '2.jpg', '2022-12-24 12:23:49'),
(926, 3, '3.jpeg', '2022-12-24 12:23:49'),
(927, 4, 'blank.webp', '2022-12-24 12:23:49'),
(928, 446, '10.jpg', '2022-12-24 12:48:44'),
(929, 446, '9.jpeg', '2022-12-24 12:48:44'),
(930, 446, '8.jpg', '2022-12-24 12:48:44'),
(931, 446, '7.jpeg', '2022-12-24 12:48:44'),
(932, 1, '1.webp', '2022-12-24 12:23:49'),
(933, 2, '2.jpg', '2022-12-24 12:23:49'),
(934, 3, '3.jpeg', '2022-12-24 12:23:49'),
(935, 4, 'blank.webp', '2022-12-24 12:23:49'),
(936, 446, '10.jpg', '2022-12-24 12:48:44'),
(937, 446, '9.jpeg', '2022-12-24 12:48:44'),
(938, 446, '8.jpg', '2022-12-24 12:48:44'),
(939, 446, '7.jpeg', '2022-12-24 12:48:44'),
(940, 1, '1.webp', '2022-12-24 12:23:49'),
(941, 2, '2.jpg', '2022-12-24 12:23:49');

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
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=942;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;