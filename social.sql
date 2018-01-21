-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 06:28 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `posted_at` datetime NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `posted_at`, `post_id`) VALUES
(1, 'hey', 1, '2017-05-10 19:10:31', 18),
(2, 'fdafASFF', 1, '2017-05-14 18:57:08', 17),
(3, 'sdanskjn', 1, '2017-05-14 18:57:27', 19),
(4, 'dzsDSZD', 1, '2017-05-14 18:57:52', 16),
(5, 'hey', 2, '2017-05-15 19:09:34', 23),
(6, 'd ,v ,', 2, '2017-05-15 19:30:38', 24),
(7, 'vbxf', 2, '2017-05-15 19:32:20', 23),
(8, 'fhths', 2, '2017-05-15 19:32:42', 22);

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `follower_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `follower_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE `login_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` char(64) NOT NULL DEFAULT '',
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `token`, `user_id`) VALUES
(49, '168479c85697d79d2da5369bbfb1b5a1dc06c0ab', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `sender` int(11) UNSIGNED NOT NULL,
  `receiver` int(11) UNSIGNED NOT NULL,
  `read` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `body`, `sender`, `receiver`, `read`) VALUES
(1, 'hi', 1, 2, 1),
(2, 'hello', 1, 2, 1),
(3, 'hello', 1, 2, 1),
(4, 'n  k n ', 2, 1, 1),
(5, '', 2, 1, 0),
(6, 'nxz ', 2, 1, 1),
(7, 'n  b', 2, 1, 1),
(8, 'vghvhvvcg', 2, 2, 0),
(9, 'hello hi from khitk', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` int(11) UNSIGNED NOT NULL,
  `receiver` int(10) UNSIGNED NOT NULL,
  `sender` int(11) UNSIGNED NOT NULL,
  `extra` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `receiver`, `sender`, `extra`) VALUES
(1, 2, 2, 2, ''),
(2, 1, 2, 2, ' { "postbody": "@akki is good" } '),
(3, 2, 2, 2, ''),
(4, 2, 2, 1, ''),
(5, 2, 2, 1, ''),
(6, 2, 2, 1, ''),
(7, 2, 2, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `password_tokens`
--

CREATE TABLE `password_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` char(64) NOT NULL DEFAULT '',
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_tokens`
--

INSERT INTO `password_tokens` (`id`, `token`, `user_id`) VALUES
(1, '3965ae91ec4e5314c2f224c15edeaee4b96369ac', 1),
(2, '56aac2469b4f5cab747a8ca826108f775f055114', 8),
(3, '71503c93730cfd35b111e9739c4fb49c3dd66d88', 1),
(4, '286da1c18b964e02e8f60f0d0a50f98397c38be2', 1),
(5, 'a2a9a00ba5a29d5bf43719a3b9150be939f2fd4a', 1),
(6, '04044a4722ef648bee67749837221af6f374868b', 1),
(7, '9531e2aea2c5f2e79cf6840620b75a47327f2fe8', 1),
(8, 'fad934846edcfa6088ee2dda3c87809a35cc80af', 1),
(9, '5e459aa9a499498f951a2a3d72c9beb05c7db6ed', 1),
(10, '522b7613c32213c83ebdfa7e9c824e33492b1e04', 1),
(11, 'f22d9edc857c19c99444998accabcb0f02f05adf', 1),
(12, 'fdf3b499c798b1a44e6ce5c50ae131c3ff050e1c', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` varchar(160) NOT NULL DEFAULT '',
  `posted_at` datetime NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `likes` int(11) UNSIGNED NOT NULL,
  `postimg` varchar(255) DEFAULT NULL,
  `topics` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `posted_at`, `user_id`, `likes`, `postimg`, `topics`) VALUES
(16, 'sfdfD', '2017-05-08 20:29:04', 2, 1, '', ''),
(17, 'vdssgsf', '2017-05-08 20:29:08', 2, 4, '', ''),
(18, 'asdfgsfdg', '2017-05-08 23:04:20', 2, 2, '', ''),
(19, 'xvfsfBF', '2017-05-10 18:52:22', 2, 1, '', ''),
(20, 'VSDDQSDW', '2017-05-10 18:52:25', 2, 1, '', ''),
(21, 'fegehngrjnrszdbgb', '2017-05-10 19:02:42', 2, 1, '', ''),
(22, 'hello\r\n', '2017-05-10 19:03:41', 1, 0, '', ''),
(23, 'd dkjnwkf', '2017-05-10 19:03:44', 1, 0, '', ''),
(24, 'fwbfnkjn', '2017-05-10 19:03:47', 1, 0, '', ''),
(25, 'dfkwenfkjnek', '2017-05-10 19:03:51', 1, 1, '', ''),
(26, 'nkjn', '2017-05-10 19:09:51', 1, 0, '', ''),
(27, 'hey', '2017-05-13 18:26:50', 2, 0, '', ''),
(28, 'fvgbgrb', '2017-05-13 18:43:18', 2, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `post_id`, `user_id`) VALUES
(2, 16, 2),
(5, 21, 1),
(6, 20, 1),
(9, 18, 2),
(10, 19, 2),
(11, 17, 2),
(13, 17, 1),
(24, 25, 2),
(25, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` text,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `profileimg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `verified`, `profileimg`) VALUES
(1, 'khitk', '$2y$10$1Wd8.6FFv8OdmCIvMrdBMebzYU0Eeig4hjw.y.Qi6qfOJ/pJ7haRy', 'khitk9738@gmail.com', 0, NULL),
(2, 'akki', '$2y$10$K69KuIzuScr3QB84vIMCN.qu9ZH785keP.Ue3nII9iASHQ1qEdyuK', 'akki@gmail.com', 0, 'http://i.imgur.com/x5lrFkj.jpg'),
(5, 'valid', '$2y$10$/uAzACWh80Och3embt7S4Ol5W/ZxJvwcsi.f/cUmLP/EHNaa1QLh.', 'kumar3010arun@gmail.com', 0, ''),
(6, 'jumbo', '$2y$10$pE2H/NQIAzYxNSSqqmEN0.JqeXWlIv6910oeXt2C3aqwBKPfotZOO', 'jumbo@gmail.com', 0, ''),
(7, 'abcde', '$2y$10$A4dmV2ESxADgQj.5KZC2w.5UMSPLHUyr3am0QyrJ0cyVPx8gXThxC', 'jmn@gmail.com', 0, ''),
(8, '20158010', '$2y$10$Dx165eOOjXTTvhpeRRCFp.V..UmpqBX772/IZWRALPClcLqhElGQ.', 'khitkwizard@gmail.com', 0, ''),
(9, '201580100', '$2y$10$uv15Mo9R1pzaD4KrpEh4XeB9QGWwphn5imQMqpzzBf2QF4tk7LI82', 'akshitsharma2811@gmail.com', 0, ''),
(10, 'Francis', '$2y$10$ItP1N2rfRZy07RdB4af.uOuzLbVl/bgJ8ODQkePPfsvZvGmTPrhGm', 'akki878787@gmail.com', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_tokens`
--
ALTER TABLE `password_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login_tokens`
--
ALTER TABLE `login_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `password_tokens`
--
ALTER TABLE `password_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD CONSTRAINT `login_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
