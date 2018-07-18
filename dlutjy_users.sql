-- phpMyAdmin SQL Dump
-- version 4.7.0-beta1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-07-18 07:58:21
-- 服务器版本： 5.5.55-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlutjydata`
--

-- --------------------------------------------------------

--
-- 表的结构 `dlutjy_users`
--

CREATE TABLE `dlutjy_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；mb_password加密',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像，相对于upload/avatar目录',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `email_code` varchar(60) DEFAULT NULL COMMENT '激活码',
  `phone` bigint(11) UNSIGNED DEFAULT NULL COMMENT '手机号',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `register_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` int(10) UNSIGNED NOT NULL COMMENT '最后登录时间',
  `xueyuan` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dlutjy_users`
--

INSERT INTO `dlutjy_users` (`id`, `username`, `password`, `avatar`, `email`, `email_code`, `phone`, `status`, `register_time`, `last_login_ip`, `last_login_time`, `xueyuan`) VALUES
(88, 'admin', '10ff8ee5f078f385976e83effbc7de67', '/Upload/avatar/user1.jpg', 'wenhao01@126.com', '', 13589745563, 1, 1449199996, '', 0, 'all'),
(89, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '/Upload/avatar/user2.jpg', '', '', NULL, 1, 1449199996, '', 0, ''),
(90, 'test', '202cb962ac59075b964b07152d234b70', '', '', NULL, 135646, 1, 1510818792, '', 0, '机械');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dlutjy_users`
--
ALTER TABLE `dlutjy_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_login_key` (`username`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dlutjy_users`
--
ALTER TABLE `dlutjy_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
