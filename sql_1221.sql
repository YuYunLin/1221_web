-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Dec 21, 2014, 09:08 AM
-- 伺服器版本: 5.0.45
-- PHP 版本: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `D10116114`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `user_profile`
-- 

CREATE TABLE `user_profile` (
  `id` varchar(256) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `name` (`name`,`telephone`),
  KEY `name_2` (`name`),
  KEY `telephone` (`telephone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- 列出以下資料庫的數據： `user_profile`
-- 

INSERT INTO `user_profile` VALUES ('test114', 'e19d5cd5af0378da05f63f891c7467af', 'lin', '0912345678', 'Taiwan');
