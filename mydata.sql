-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 02:18 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) NOT NULL,
  `post_id_c` int(10) NOT NULL,
  `user_id_c` int(10) NOT NULL,
  `comment` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id_c`, `user_id_c`, `comment`, `comment_time`) VALUES
(2, 0, 0, 'DSKJAHFIUADS', '2017-06-10 20:46:12'),
(3, 3, 1, 'ASUDYFU', '2017-06-10 20:46:46'),
(4, 2, 1, 'DSKAYFUI', '2017-06-10 20:46:54'),
(6, 3, 1, 'dskjfhasdk', '2017-06-10 20:50:11'),
(8, 3, 1, 'xzkcvhkz', '2017-06-10 20:52:11'),
(10, 3, 1, 'vccbcxvb', '2017-06-10 20:59:25'),
(11, 25, 13, 'CVDVS', '2017-06-11 08:39:49'),
(13, 3, 13, 'shkjcdsh', '2017-06-11 08:41:59'),
(14, 3, 2, 'kjashka', '2017-06-11 08:43:18'),
(15, 2, 2, 'jahk', '2017-06-11 08:43:39'),
(17, 5, 1, 'oidfugioudsi', '2017-06-11 22:21:58'),
(18, 5, 2, 'kjchvuds', '2017-06-11 22:23:11'),
(19, 7, 2, 'lfjgkldflsg kjdhgkjhk kjfdshgkjjf', '2017-06-12 02:03:51'),
(20, 8, 2, 'fdhgkfjds', '2017-06-12 02:04:49'),
(21, 8, 2, 'kjkghtrkjh jrhtgkjtrk', '2017-06-12 02:05:34'),
(22, 8, 2, 'ksjfdgkjhs', '2017-06-12 02:07:17'),
(23, 2, 2, 'kcxzhkjbhv zxciuvhui kjzxchiuv', '2017-06-12 02:08:07'),
(24, 10, 1, 'kjdsahfkj kjhdfs dgafa jdahsfj ', '2017-06-12 02:08:59'),
(25, 10, 1, 'ksdhgkjf fdhgui kjfdh', '2017-06-12 02:09:07'),
(26, 9, 1, 'kdfhgkj jfdhg fgds', '2017-06-12 02:09:13'),
(27, 10, 1, 'kjdhvkjsdh', '2017-06-12 02:24:22'),
(28, 10, 1, 'dskjhfdkj', '2017-06-12 02:29:12'),
(29, 0, 2, 'dskjhvfkjds', '2017-06-12 03:37:25'),
(30, 0, 2, 'dskjhfkjdah', '2017-06-12 03:47:28'),
(31, 10, 6, 'hhhhhhhhhhhhhhhhhhhhhhhhh', '2017-06-12 09:58:04'),
(32, 10, 6, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', '2017-06-12 09:58:17'),
(33, 7, 6, 'luliuououoiuo', '2017-06-12 09:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `noti_id` int(10) NOT NULL,
  `pos_id` int(10) NOT NULL,
  `post_usr` int(10) NOT NULL,
  `comm_user` int(10) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `project` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`noti_id`, `pos_id`, `post_usr`, `comm_user`, `comment`, `status`, `time`, `project`, `experience`, `skill`) VALUES
(3, 10, 2, 1, 'kjdsahfkj kjhdfs dgafa jdahsfj ', 0, '2017-06-12 02:18:29', '', '', ''),
(4, 10, 2, 1, 'ksdhgkjf fdhgui kjfdh', 0, '2017-06-12 02:18:29', '', '', ''),
(5, 9, 2, 1, 'kdfhgkj jfdhg fgds', 0, '2017-06-12 02:18:29', '', '', ''),
(7, 10, 2, 1, 'dskjhfdkj', 0, '2017-06-12 02:29:12', '', '', ''),
(8, 0, 0, 2, 'dskjhvfkjds', 0, '2017-06-12 03:37:25', '', '', ''),
(9, 10, 2, 6, 'hhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2017-06-12 09:58:04', '', '', ''),
(10, 10, 2, 6, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', 0, '2017-06-12 09:58:17', '', '', ''),
(11, 7, 1, 6, 'luliuououoiuo', 0, '2017-06-12 09:59:35', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) NOT NULL,
  `usr_id_p` int(10) NOT NULL,
  `status_title` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `status_image` varchar(200) NOT NULL,
  `status_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `usr_id_p`, `status_title`, `status`, `status_image`, `status_time`) VALUES
(12, 10, 'need a developer', 'Skills: Web and app developement.\r\nSalary- 10 LPA', '', '2021-06-20 12:13:39'),
(13, 10, 'newswing', 'asasas', '', '2021-06-20 12:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `p_id` int(11) NOT NULL,
  `Project_name` varchar(100) NOT NULL,
  `Proejct_lang` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`p_id`, `Project_name`, `Proejct_lang`, `user`) VALUES
(1, 'Social network', 'PHP', 'gurtej');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `usr_id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `project` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`usr_id`, `name`, `email`, `image`, `password`, `project`, `experience`, `skill`) VALUES
(1, 'rahul', 'rahul@gmail.com', 'New Doc 2017-02-26_2.jpg', '123456', 'Core Php Project', '1', 'I am experineced Wlordpress develpoer'),
(2, 'shafik', 'shafik@gmail.com', '1888448_898409750258226_6887486239911226423_n.jpg', '123456', 'Social Netwrok, E commerce, Blogs- News portal', '4', 'I am a PHP- Mysqli - wordpress- drupal developer'),
(3, 'bipin', 'bipin@gmail.com', 'rsz_new_doc_2017-02-26_2.jpg', '123456', 'Ecommerce -Shonow.com,Shopingg.com\r\nSocialnetwork- Meetme.com', '4', 'Java PHP Drupal Majento Wordpress'),
(4, 'Gurtej', 'grutejsinghanrwal@gmail.com', 'blog-widget-03.png', '123', 'Social Network', '1', 'PHP JAVA'),
(5, 'shubham sh', 'shubham@gmail.com', 'blog-widget-02.png', '123', '', '', ''),
(6, 'tasneem', 'tasneem@gmail.com', 'Hydrangeas - Copy.jpg', '12345', 'LAW  MANAGEMNET SYSTEM, Online Shopping, dfldjfldjfld\r\n', '5', 'PHP, MySQL, HTML, CSS, JAVASCRIPT................'),
(7, 'ss', 'as@fdf.com', 'blog-widget-01.png', '1234', '', '', ''),
(8, 'AS', 'AS@G.COM', 'blog-widget-01.png', '1234', '', '', ''),
(9, 'Shivam', 'sk8shivam@gmail.com', '17158f35-764a-4b72-abac-62349b6061a0.jpg', '1234', '', '', ''),
(10, 'Shivam', 'sk8shivam@gmail.com', '17158f35-764a-4b72-abac-62349b6061a0.jpg', '1234', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `noti_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `usr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
