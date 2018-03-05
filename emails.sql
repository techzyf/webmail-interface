-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: sophia
-- 生成日期: 2017-10-10 16:52:43
-- 服务器版本: 5.1.35
-- PHP 版本: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `yfzhang`
--

-- --------------------------------------------------------

--
-- 表的结构 `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `emailID` int(11) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `mailbox` varchar(10) NOT NULL,
  PRIMARY KEY (`emailID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `emails`
--

INSERT INTO `emails` (`emailID`, `sender`, `title`, `date`, `content`, `mailbox`) VALUES
(1, 'Jim@cs.hku.hk', 'Hello from Toronto', 'Sep 25 2016', 'Hi Alice, I am travelling in Toronto now.', 'inbox'),
(2, 'notice@hku.hk', 'HKU Daily Notice', 'Sep 30 2016', 'There is no notice today. Enjoy your holiday!', 'inbox'),
(3, 'admin@keihan.co.jp', 'Refresh your student pass', 'OCT 1 2016', 'Please Refreash your student pass No.5656 from Uji to Demajiyanagi.   Thank you very much. Keihan Electric Railway Co.\r\n\r\n', 'inbox'),
(4, 'pengkang@xjtu.edu.cn', 'Wanna win a student prize?', 'OCT 16 2016', 'Wanna win a student prize? Join the XJTU2017 robocup!', 'inbox'),
(5, 'eie@xjtu.edu.cn', 'XJTU EIE needs your help', 'OCT 20 2016', 'There will be a global EIE conference held in XJTU next month, we need your help as volunteers. ', 'inbox'),
(6, 'toefl@ets.com', 'Your TOEFL score only last two', 'OCT 27 2016', 'Please note that your TOEFL score only lasts 2 years, if you want to apply for universities graduate program, you need to test again.', 'inbox'),
(7, 'gre@ets.com', 'GRE is different', 'NOV 27 2016', 'Please note that although GRE is a more difficult test, the duration of GRE score is five years, longer than TOEFL.', 'inbox'),
(8, 'admin@ceair.com', 'Get Free Air Tickets on DECEMB', 'NOV 27 2016', 'We are delight to invite you to the China Eastern Airlines 2016 MEGA sale!', 'inbox'),
(9, 'notice@xjtu.edu.cn', 'XJTU now provides free MATLAB', 'JAN 2 2017', 'We are pleased to inform you that XJTU now provides free MATLAB copy to all staff and students.', 'inbox'),
(10, 'zyl@gmail.com', 'RE:Questions about compiling e', 'JAN 15 2017', 'Although designing a cool language compiler seems difficult to grade 2 students, I hope you can work it out.', 'inbox'),
(11, 'abchina@abchina.com.', 'Account Balance', 'MAR 15 2017', 'Thank you for choosing Agricultural Bank of China. Your Account Balance is RMB2016', 'inbox'),
(12, 'cao@hku.hk', 'Welcome to HKU!', 'JUL 5 2017', 'We are pleased to inform you that you are now admitted as an incoming exchange student to HKU.', 'inbox'),
(14, 'zyh@126.com', 'Birthday Greetings', 'SEP 29 2017', 'Happy Birthday my son! Do you live well in Hong Kong?', 'inbox'),
(15, 'jdcloud@jd.com', 'Weekly Report of your Jdcloud ', 'OCT 1 2017', 'This is your updated usage report of cloud machine. Thank you for using JINGDONG.', 'inbox'),
(13, 'zw@xjtu.edu.cn', 'Please help me ', 'AUG 8 2017', 'Please help me pick up the student card! Thanks!\r\nZhao Wei', 'inbox');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
