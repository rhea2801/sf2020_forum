-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2020 at 09:09 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forumlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cmt_uniqid` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `commenter` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cmt_uniqid`, `post_id`, `commenter`, `comment`) VALUES
(34, 23, 'rrrr', 'cmmmmmt'),
(35, 23, 'rrrr', 'yusssssss'),
(36, 26, 'rrrr', 'mmm'),
(37, 26, 'rrrr', 'mm');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `post_id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `like_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`post_id`, `user_id`, `like_status`) VALUES
(23, 'rrrr', 0),
(24, 'rrrr', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `uniqid` int(11) NOT NULL,
  `author` text NOT NULL,
  `topic` text NOT NULL,
  `content` text NOT NULL,
  `likes` int(11) NOT NULL,
  `dislikes` int(11) NOT NULL,
  `comments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`uniqid`, `author`, `topic`, `content`, `likes`, `dislikes`, `comments`) VALUES
(25, 'test3', 'kya yaar', 'hadd hai', 0, 0, 0),
(26, 'rrrr', 'y', 'y', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uniqid` int(11) NOT NULL,
  `fname` tinytext NOT NULL,
  `lname` tinytext NOT NULL,
  `username` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `pwd` longtext NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f','nb') NOT NULL,
  `usertype` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uniqid`, `fname`, `lname`, `username`, `email`, `pwd`, `dob`, `gender`, `usertype`) VALUES
(6, 'test1', 'test1', 'test1', 't@t.com', '$2y$10$UkRgu4ZsIZdeGz5honLiK.znpbmBiSXy/opayEKMnGHEkPJNwYXUS', '2020-07-21', 'nb', 'admin'),
(8, 'rrrr', 'rrrr', 'rrrr', 'r@r.com', '$2y$10$/tGM9LuhpKoF0x3ev4/AmOth724HjQ.cu7d8aMPtCQkZ0sQsY8SC.', '2002-02-01', 'f', 'admin'),
(9, 'test3', 'test3', 'test3', 't@t.com', '$2y$10$HHnM8bASalTbte8thS1OxekIdC1IwPQ.eCGqt0Ehix3SEk/wlQoQi', '2020-07-24', 'f', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cmt_uniqid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD UNIQUE KEY `key` (`post_id`,`user_id`) USING HASH;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`uniqid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uniqid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cmt_uniqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `uniqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uniqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
