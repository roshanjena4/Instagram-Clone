-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2024 at 03:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pictogram`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `password_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`, `password_text`) VALUES
(1, 'Roshan Jena', 'roshanjena464@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(49, 16, 14, '😎😎', '2023-03-14 12:14:41'),
(50, 16, 13, 'thanks bro', '2023-03-14 12:16:34'),
(51, 18, 13, 'nice pic bro', '2023-04-02 11:16:11'),
(52, 17, 13, 'Nice pic bro', '2023-04-02 11:17:04'),
(53, 18, 15, 'Thanks Everyone', '2023-04-02 11:18:00'),
(54, 17, 15, 'it\'s amazing', '2023-04-02 11:18:39'),
(55, 23, 15, 'Jay maa kali', '2023-04-28 02:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(91, 15, 13),
(92, 14, 13),
(93, 13, 14),
(94, 18, 15),
(95, 18, 13),
(96, 13, 16),
(97, 15, 14),
(98, 15, 16),
(99, 19, 15),
(100, 19, 14),
(101, 19, 13);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(96, 16, 13),
(97, 17, 13),
(98, 17, 14),
(100, 16, 14),
(101, 18, 13),
(102, 19, 17),
(105, 17, 18),
(106, 16, 18),
(109, 22, 13),
(112, 23, 15),
(115, 27, 19),
(116, 20, 16),
(117, 25, 15),
(118, 24, 13);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `msg`, `read_status`, `created_at`) VALUES
(48, 15, 14, 'hi bro', 1, '2023-03-14 12:24:11'),
(49, 14, 15, 'hiiii', 1, '2023-03-14 12:25:05'),
(50, 13, 15, 'hi', 1, '2023-04-02 11:06:21'),
(51, 15, 13, 'hey', 1, '2023-04-02 11:07:08'),
(52, 15, 13, 'how are you', 1, '2023-04-02 11:09:07'),
(53, 14, 13, 'hi ', 1, '2023-04-02 11:28:34'),
(54, 14, 13, 'kya kar raha hai', 1, '2023-04-02 11:28:43'),
(55, 13, 14, 'nothing', 0, '2023-04-25 09:05:18'),
(56, 13, 16, 'hi', 1, '2023-04-27 10:31:09'),
(57, 16, 13, 'bol', 1, '2023-04-27 10:31:23'),
(58, 15, 13, 'hi', 1, '2023-04-28 02:02:11'),
(59, 13, 15, 'Hmm', 1, '2023-04-28 02:02:24'),
(60, 15, 13, 'all ready ', 1, '2023-04-28 02:02:42'),
(61, 13, 15, 'Yes bro ', 1, '2023-04-28 02:02:55'),
(62, 13, 16, 'hi', 1, '2023-04-28 04:59:14'),
(63, 16, 13, 'Hii how are you?', 1, '2023-04-28 04:59:40'),
(64, 16, 13, '👍', 1, '2023-04-28 05:00:18'),
(65, 15, 13, 'hi', 1, '2023-04-28 05:17:08'),
(66, 13, 15, 'Hello ', 1, '2023-04-28 05:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(116, 13, 'started following you !', '2023-03-14 12:13:14', 14, 1, '0'),
(117, 14, 'started following you !', '2023-03-14 12:13:46', 13, 1, '0'),
(118, 13, 'liked your post !', '2023-03-14 12:14:16', 14, 1, '17'),
(119, 13, 'liked your post !', '2023-03-14 12:14:21', 14, 1, '16'),
(120, 13, 'commented on your post', '2023-03-14 12:14:41', 14, 1, '16'),
(121, 13, 'unliked your post !', '2023-03-14 12:15:04', 14, 1, '16'),
(122, 13, 'liked your post !', '2023-03-14 12:15:06', 14, 1, '16'),
(123, 15, 'started following you !', '2023-03-24 10:30:24', 13, 1, '0'),
(124, 14, 'Unfollowed you !', '2023-03-24 11:43:33', 13, 0, '0'),
(125, 15, 'liked your post !', '2023-03-24 11:45:43', 13, 1, '18'),
(126, 14, 'blocked you', '2023-04-02 09:34:44', 13, 0, '0'),
(127, 15, 'Unfollowed you !', '2023-04-02 10:55:11', 13, 1, '0'),
(128, 15, 'started following you !', '2023-04-02 11:01:10', 13, 1, '0'),
(129, 14, 'Unblocked you !', '2023-04-02 11:12:33', 13, 0, '0'),
(130, 14, 'blocked you', '2023-04-02 11:14:22', 13, 0, '0'),
(131, 14, 'Unblocked you !', '2023-04-02 11:15:35', 13, 0, '0'),
(132, 15, 'commented on your post', '2023-04-02 11:16:10', 13, 0, '18'),
(133, 13, 'started following you !', '2023-04-02 11:18:15', 15, 1, '0'),
(134, 13, 'commented on your post', '2023-04-02 11:18:39', 15, 1, '17'),
(135, 13, 'started following you !', '2023-04-02 11:22:38', 14, 1, '0'),
(136, 14, 'started following you !', '2023-04-02 11:22:53', 13, 0, '0'),
(137, 15, 'Unfollowed you !', '2023-04-02 11:30:43', 13, 0, '0'),
(138, 15, 'started following you !', '2023-04-25 09:07:32', 18, 0, '0'),
(139, 13, 'started following you !', '2023-04-25 09:07:36', 18, 1, '0'),
(140, 15, 'liked your post !', '2023-04-25 09:07:43', 18, 0, '21'),
(141, 15, 'liked your post !', '2023-04-25 09:07:47', 18, 0, '18'),
(142, 13, 'liked your post !', '2023-04-25 09:07:51', 18, 1, '17'),
(143, 13, 'liked your post !', '2023-04-25 09:07:53', 18, 1, '16'),
(144, 15, 'unliked your post !', '2023-04-25 09:07:58', 18, 0, '21'),
(145, 15, 'unliked your post !', '2023-04-25 09:08:02', 18, 0, '18'),
(146, 14, 'liked your post !', '2023-04-27 10:29:24', 13, 0, '22'),
(147, 14, 'unliked your post !', '2023-04-27 11:36:30', 13, 0, '22'),
(148, 14, 'liked your post !', '2023-04-27 11:36:33', 13, 0, '22'),
(149, 14, 'unliked your post !', '2023-04-27 11:36:44', 13, 0, '22'),
(150, 14, 'liked your post !', '2023-04-27 11:36:53', 13, 0, '22'),
(151, 16, 'started following you !', '2023-04-27 11:37:12', 13, 1, '0'),
(152, 16, 'liked your post !', '2023-04-27 11:37:21', 13, 1, '20'),
(153, 16, 'unliked your post !', '2023-04-27 11:37:58', 13, 1, '20'),
(154, 13, 'liked your post !', '2023-04-28 02:14:34', 15, 1, '23'),
(155, 13, 'commented on your post', '2023-04-28 02:15:27', 15, 1, '23'),
(156, 13, 'liked your post !', '2023-04-28 04:58:07', 15, 1, '24'),
(157, 14, 'started following you !', '2023-04-28 04:58:19', 15, 0, '0'),
(158, 16, 'started following you !', '2023-04-28 04:58:21', 15, 0, '0'),
(159, 15, 'started following you !', '2023-04-28 05:01:31', 19, 0, '0'),
(160, 14, 'started following you !', '2023-04-28 05:01:32', 19, 0, '0'),
(161, 13, 'started following you !', '2023-04-28 05:01:33', 19, 1, '0'),
(162, 13, 'unliked your post !', '2023-04-28 05:16:00', 15, 1, '24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(16, 13, '1678794719Screenshot 2023-03-10 092158.png', 'Collage time', '2023-03-14 11:51:59'),
(17, 13, '167879584735b9ea12-49aa-4b55-b25b-3ddd0c9efb27.jpeg', 'Chill with friends', '2023-03-14 12:10:47'),
(18, 15, '1679653807PicsArt_05-23-01.26.38.jpg', '😎😎', '2023-03-24 10:30:07'),
(19, 17, '1682412876Screenshot 2023-04-25 141602.png', '', '2023-04-25 08:54:36'),
(20, 16, '1682413345Screenshot 2023-04-25 142049.png', 'shree shyam mandir', '2023-04-25 09:02:25'),
(21, 15, '1682413409Screenshot 2023-04-25 141957.png', 'har har mahadev', '2023-04-25 09:03:29'),
(22, 14, '1682413450Screenshot 2023-04-25 141439.png', '', '2023-04-25 09:04:10'),
(23, 13, '1682647268Screenshot_20230224-213610~2.png', 'Jay mataji 🙏', '2023-04-28 02:01:08'),
(24, 13, '1682647571IMG_20230225_142943_772.jpg', 'Friends Forever ', '2023-04-28 02:06:11'),
(25, 15, '1682647877IMG_20230107_153250_373.jpg', 'Formal Day ', '2023-04-28 02:11:17'),
(27, 19, '1682658145IMG_20230312_084055_403.jpg', 'Hiii', '2023-04-28 05:02:25'),
(28, 15, '1682659073Screenshot 2023-04-25 141602.png', 'hiiii', '2023-04-28 05:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL COMMENT '0=not verified,1=active,2=blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`) VALUES
(13, 'roshan', 'jena', 1, 'roshanjena464@gmail.com', 'roshan', 'e10adc3949ba59abbe56e057f20f883e', '1682647647IMG_20220925_002006_382.jpg', '2023-03-14 11:47:15', '2023-04-28 02:07:27', 1),
(14, 'sachin', 'maurya', 1, 'sachinm2620@gmail.com', 'sachin', 'e10adc3949ba59abbe56e057f20f883e', 'default_profile.jpg', '2023-03-14 12:12:32', '2023-04-02 11:41:56', 1),
(15, 'aman', 'rajpoot', 1, 'rajputaman59137@gmail.com', 'aman', 'e10adc3949ba59abbe56e057f20f883e', 'default_profile.jpg', '2023-03-14 12:22:37', '2023-04-02 11:40:12', 1),
(16, 'amarjeet', 'shah', 1, 'amarjeetshah355@gamil.com', 'amarjeetshah', 'd01b8c6ea1a64ba2510df7cee1e4d604', '1682658250Screenshot_20230428_103337.jpg', '2023-04-02 11:39:40', '2023-04-28 05:04:44', 1),
(17, 'Rahul', 'shah', 1, 'rahulchaurasiya317@gmail.com', 'rahul', '827ccb0eea8a706c4c34a16891f84e7b', '1682412090[Downloader.la]-642be4ea08f7e.jpg', '2023-04-25 08:35:10', '2023-04-25 08:41:30', 1),
(18, 'anand', 'yadav', 1, 'anand123@gmail.com', 'anand', '827ccb0eea8a706c4c34a16891f84e7b', 'default_profile.jpg', '2023-04-25 09:06:44', '2023-04-25 09:07:08', 1),
(19, 'Rahul ', 'Chaurasiya ', 1, 'rahulrchaurasiya01@gmail.com', 'rahul1', '1298815fd9e0a06860203eefd188c354', '1682658265tmp-cam-5371787169557247243.jpg', '2023-04-28 05:00:19', '2023-12-07 14:05:49', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
