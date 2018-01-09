-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2018 at 09:31 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weddings_db`
--
CREATE DATABASE IF NOT EXISTS `weddings_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `weddings_db`;

-- --------------------------------------------------------

--
-- Table structure for table `consultant_details`
--

CREATE TABLE `consultant_details` (
  `id` int(11) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `consultant_details`
--

INSERT INTO `consultant_details` (`id`, `first_name`, `last_name`, `description`, `price`, `state`, `city`, `street`, `img_src`) VALUES
(1, 'Jan', 'Kowalski', 'Konsultant ślubny', 750, 'Śląskie', 'Katowice', 'Warszawska 1/1', 'img/flower.jpg'),
(2, 'Maria', 'Nowak', 'Konsultant ślubny', 1250, 'Śląskie', 'Katowice', 'Warszawska 1/1', 'img/flower.jpg'),
(3, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Dolnośląskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(4, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Dolnośląskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(5, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Kujawsko-Pomorskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(6, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Kujawsko-Pomorskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(7, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Lubelskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(8, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Lubelskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(9, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Lubuskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(10, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Lubuskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(11, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Łódzkie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(12, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Łódzkie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(13, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Małopolskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(14, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Małopolskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(15, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Mazowieckie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(16, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Mazowieckie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(17, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Opolskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(18, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Opolskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(19, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Podkarpackie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(20, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Podkarpackie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(21, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Podlaskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(22, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Podlaskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(23, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Pomorskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(24, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Pomorskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(25, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Świętokrzyskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(26, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Świętokrzyskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(27, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Warmińsko-Mazurskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(28, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Warmińsko-Mazurskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(29, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Wielkopolskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(30, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Wielkopolskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(31, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Zachodniopomorskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg'),
(32, 'Jan', 'Kowalski', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 750, 'Zachodniopomorskie', 'Miasto', 'Warszawska 1/1', 'img/flower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `consultant_reviews`
--

CREATE TABLE `consultant_reviews` (
  `id` int(11) NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `review` varchar(512) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `consultant_reviews`
--

INSERT INTO `consultant_reviews` (`id`, `consultant_id`, `review`, `rate`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(11, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(17, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(18, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(19, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(20, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(21, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(22, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(25, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(29, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `couple`
--

CREATE TABLE `couple` (
  `id` int(11) NOT NULL,
  `person1_first_name` varchar(32) NOT NULL,
  `person1_last_name` varchar(32) NOT NULL,
  `person1_gender` varchar(16) NOT NULL,
  `person2_first_name` varchar(32) NOT NULL,
  `person2_last_name` varchar(32) NOT NULL,
  `person2_gender` varchar(16) NOT NULL,
  `person1_user_id` int(11) DEFAULT NULL,
  `person2_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couple`
--

INSERT INTO `couple` (`id`, `person1_first_name`, `person1_last_name`, `person1_gender`, `person2_first_name`, `person2_last_name`, `person2_gender`, `person1_user_id`, `person2_user_id`) VALUES
(1, 'TestowyUser1', 'TestowyUser1', 'M', 'TestowyUser2', 'TestowyUser2', 'F', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `couple_transport_details`
--

CREATE TABLE `couple_transport_details` (
  `id` int(11) NOT NULL,
  `type` varchar(64) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couple_transport_details`
--

INSERT INTO `couple_transport_details` (`id`, `type`, `description`, `price`, `state`, `city`, `street`, `img_src`) VALUES
(1, 'Auto', 'Auto', 600, 'Śląskie', 'Katowice', 'Warszawska 2/3', 'img/flower.jpg'),
(2, 'Dorożka', 'Dorożka', 500, 'Śląskie', 'Katowice', 'Warszawska 2/3', 'img/flower.jpg'),
(3, 'Limuzyna', 'Limuzyna', 1250, 'Śląskie', 'Katowice', 'Warszawska 2/3', 'img/flower.jpg'),
(4, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Dolnośląskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(5, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Dolnośląskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(6, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Kujawsko-Pomorskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(7, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Kujawsko-Pomorskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(8, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Lubelskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(9, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Lubelskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(10, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Lubuskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(11, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Lubuskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(12, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Łódzkie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(13, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Łódzkie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(14, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Małopolskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(15, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Małopolskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(16, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Mazowieckie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(17, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Mazowieckie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(18, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Opolskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(19, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Opolskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(20, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Podkarpackie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(21, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Podkarpackie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(22, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Podlaskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(23, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Podlaskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(24, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Pomorskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(25, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Pomorskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(26, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Świętokrzyskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(27, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Świętokrzyskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(28, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Warmińsko-Mazurskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(29, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Warmińsko-Mazurskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(30, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Wielkopolskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(31, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Wielkopolskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(32, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Zachodniopomorskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg'),
(33, 'Pojazd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 500, 'Zachodniopomorskie', 'Miasto', 'Warszawska 2/3', 'img/flower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `couple_transport_reviews`
--

CREATE TABLE `couple_transport_reviews` (
  `id` int(11) NOT NULL,
  `couple_transport_id` int(11) NOT NULL,
  `review` varchar(512) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couple_transport_reviews`
--

INSERT INTO `couple_transport_reviews` (`id`, `couple_transport_id`, `review`, `rate`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(11, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(17, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(18, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(19, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(20, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(21, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(22, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(25, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(29, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `guest_transport_details`
--

CREATE TABLE `guest_transport_details` (
  `id` int(11) NOT NULL,
  `type` varchar(64) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `price_flat` float DEFAULT NULL,
  `price_per_person` float DEFAULT NULL,
  `person_amount_per_unit` int(11) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guest_transport_details`
--

INSERT INTO `guest_transport_details` (`id`, `type`, `description`, `price_flat`, `price_per_person`, `person_amount_per_unit`, `state`, `city`, `street`, `img_src`) VALUES
(1, 'Autobus', 'Autobus', 500, 15, 60, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'img/flower.jpg'),
(2, 'Bus', 'Bus', 400, 20, 30, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'img/flower.jpg'),
(3, 'Auta', 'Auta', 250, 0, 5, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'img/flower.jpg'),
(4, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(5, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(6, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(7, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(8, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(9, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(10, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(11, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(12, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(13, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(14, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(15, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(16, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(17, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(18, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(19, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(20, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(21, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(22, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(23, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(24, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(25, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(26, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(27, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(28, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(29, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(30, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(31, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(32, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(33, 'Auta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 250, 0, 5, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guest_transport_reviews`
--

CREATE TABLE `guest_transport_reviews` (
  `id` int(11) NOT NULL,
  `guest_transport_id` int(11) NOT NULL,
  `review` varchar(512) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guest_transport_reviews`
--

INSERT INTO `guest_transport_reviews` (`id`, `guest_transport_id`, `review`, `rate`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(11, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(17, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(18, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(19, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(20, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(21, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(22, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(25, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(29, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `music_details`
--

CREATE TABLE `music_details` (
  `id` int(11) NOT NULL,
  `type` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `price_flat` float DEFAULT NULL,
  `price_per_person` float DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `music_details`
--

INSERT INTO `music_details` (`id`, `type`, `name`, `description`, `price_flat`, `price_per_person`, `state`, `city`, `street`, `img_src`) VALUES
(1, 'Zespół', 'Zespół', 'Zespół', 1800, 0, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'img/flower.jpg'),
(2, 'Kapela', 'Kapela', 'Kapela', 2500, 0, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'img/flower.jpg'),
(3, 'DJ', 'DJ', 'DJ', 1000, 10, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'img/flower.jpg'),
(4, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(5, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(6, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(7, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(8, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(9, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(10, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(11, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(12, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(13, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(14, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(15, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(16, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(17, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(18, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(19, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(20, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(21, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(22, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(23, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(24, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(25, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(26, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(27, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(28, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(29, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(30, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(31, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(32, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg'),
(33, 'Zespół', 'Zespół', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 1800, 0, 'Śląskie', 'Miasto', 'Warszawska 3/4', 'img/flower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `music_reviews`
--

CREATE TABLE `music_reviews` (
  `id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL,
  `review` varchar(512) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `music_reviews`
--

INSERT INTO `music_reviews` (`id`, `music_id`, `review`, `rate`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(11, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(17, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(18, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(19, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(20, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(21, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(22, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(25, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(29, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `photo_detail`
--

CREATE TABLE `photo_detail` (
  `id` int(11) NOT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `company_name` varchar(64) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `photo` tinyint(1) DEFAULT NULL,
  `photo_price` float DEFAULT NULL,
  `video` tinyint(1) DEFAULT NULL,
  `video_price` float DEFAULT NULL,
  `drone` tinyint(1) DEFAULT NULL,
  `drone_price` float DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo_detail`
--

INSERT INTO `photo_detail` (`id`, `first_name`, `last_name`, `company_name`, `description`, `photo`, `photo_price`, `video`, `video_price`, `drone`, `drone_price`, `state`, `city`, `street`, `img_src`) VALUES
(1, 'Marek', 'Nowak', 'NowakFoto', 'Fotograf Marek Nowak', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Katowice', 'Warszawska 10/1', 'img/flower.jpg'),
(2, 'Katarzyna', 'Zegarek', 'ZegarekFoto', 'Fotograf Katarzyna Zegarek', 0, 1000, 0, 2000, 0, 5000, 'Śląskie', 'Katowice', 'Warszawska 10/1', 'img/flower.jpg'),
(3, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(4, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(5, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(6, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(7, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(8, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(9, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(10, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(11, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(12, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(13, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(14, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(15, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(16, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(17, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(18, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(19, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(20, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(21, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(22, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(23, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(24, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(25, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(26, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(27, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(28, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(29, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(30, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(31, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg'),
(32, 'Marek', 'Nowak', 'NowakFoto', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Miasto', 'Warszawska 10/1', 'img/flower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `photo_reviews`
--

CREATE TABLE `photo_reviews` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `review` varchar(512) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo_reviews`
--

INSERT INTO `photo_reviews` (`id`, `photo_id`, `review`, `rate`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(11, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(17, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(18, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(19, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(20, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(21, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(22, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(25, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(29, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `place_details`
--

CREATE TABLE `place_details` (
  `id` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `max_guests` int(11) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  `price_flat` float DEFAULT NULL,
  `price_per_person` float DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place_details`
--

INSERT INTO `place_details` (`id`, `type`, `max_guests`, `description`, `state`, `city`, `street`, `price_flat`, `price_per_person`, `img_src`) VALUES
(1, 'Restauracja Szafa', 240, 'Restauracja Szafa', 'Śląskie', 'Katowice', 'Warszawska 1/1', 4500, 60, 'img/flower.jpg'),
(2, 'Restauracja Drzwi', 120, 'Restauracja Drzwi', 'Śląskie', 'Katowice', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(3, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(4, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(5, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(6, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(7, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(8, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(9, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(10, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(11, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(12, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(13, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(14, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(15, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(16, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(17, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(18, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(19, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(20, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(21, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(22, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(23, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(24, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(25, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(26, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(27, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(28, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(29, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(30, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(31, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg'),
(32, 'Restauracja Drzwi', 120, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 2/2', 2500, 45, 'img/flower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `place_reviews`
--

CREATE TABLE `place_reviews` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `review` varchar(512) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place_reviews`
--

INSERT INTO `place_reviews` (`id`, `place_id`, `review`, `rate`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(11, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(17, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(18, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(19, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(20, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(21, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(22, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(25, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(29, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `transport_details`
--

CREATE TABLE `transport_details` (
  `id` int(11) NOT NULL,
  `couple_transport_id` int(11) NOT NULL,
  `guests_transport_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transport_details`
--

INSERT INTO `transport_details` (`id`, `couple_transport_id`, `guests_transport_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_details`
--

CREATE TABLE `type_details` (
  `id` int(11) NOT NULL,
  `type` varchar(128) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `city` varchar(128) NOT NULL,
  `street` varchar(128) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_details`
--

INSERT INTO `type_details` (`id`, `type`, `description`, `state`, `city`, `street`, `img_src`) VALUES
(1, 'Cywilny', 'Urząd Stanu Cywilnego', 'Śląskie', 'Katowice', 'Warszawska 3/3', 'img/flower.jpg'),
(2, 'Kościelny', 'Kościół', 'Śląskie', 'Katowice', 'Warszawska 4/4', 'img/flower.jpg'),
(3, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(4, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(5, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(6, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(7, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(8, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(9, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(10, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(11, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(12, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(13, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(14, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(15, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(16, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(17, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(18, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(19, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(20, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(21, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(22, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(23, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(24, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(25, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(26, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(27, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(28, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(29, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(30, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(31, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg'),
(32, 'Kościelny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam varius ullamcorper pulvinar. Suspendisse blandit quam a velit cursus porttitor. In at congue sem. Nullam nec hendrerit tellus, et malesuada nulla. Nulla aliquet augue id ex convallis, non consequat magna semper. Aenean a mi bibendum, mollis ipsum et, ultrices elit. Integer lacinia dolor a ex cursus, a ullamcorper massa aliquet. Donec id ullamcorper est.', 'Śląskie', 'Miasto', 'Warszawska 4/4', 'img/flower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type_reviews`
--

CREATE TABLE `type_reviews` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `review` varchar(512) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_reviews`
--

INSERT INTO `type_reviews` (`id`, `type_id`, `review`, `rate`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(6, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(7, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(8, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(9, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(10, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(11, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(12, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(13, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(14, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(16, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(17, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(18, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(19, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(20, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(21, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(22, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(23, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(24, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(25, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(26, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(27, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(28, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(29, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8),
(30, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu ipsum eros. Donec massa urna, lacinia non iaculis eu, egestas id velit. Nunc ac tellus vitae arcu placerat faucibus a ac metus. Mauris nec enim tortor. Etiam at porta ipsum. Suspendisse eu urna tempus, porta diam id, iaculis justo. Duis dapibus tellus ut aliquam malesuada. Sed quis faucibus turpis, quis tincidunt lacus. Duis suscipit tortor in aliquet mollis. Suspendisse in pulvinar tellus.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `gender` varchar(16) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `first_name`, `last_name`, `gender`, `admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 'admin', 'admin', 'none', 0),
(2, 'test_user_1', '21232f297a57a5a743894a0e4a801fc3', 'test1@test.com', 'TestowyUser1', 'TestowyUser1', 'M', 1),
(3, 'test_user_2', '21232f297a57a5a743894a0e4a801fc3', 'test2@test.com', 'TestowyUser2', 'TestowyUser2', 'F', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE `wedding` (
  `id` int(11) NOT NULL,
  `creator_user_id` int(11) NOT NULL,
  `second_user_id` int(11) DEFAULT NULL,
  `couple_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `music_id` int(11) NOT NULL,
  `consultant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wedding`
--

INSERT INTO `wedding` (`id`, `creator_user_id`, `second_user_id`, `couple_id`, `type_id`, `place_id`, `photo_id`, `transport_id`, `music_id`, `consultant_id`) VALUES
(1, 2, 3, 1, 1, 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultant_details`
--
ALTER TABLE `consultant_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consultant_details_id_uindex` (`id`);

--
-- Indexes for table `consultant_reviews`
--
ALTER TABLE `consultant_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consultant_reviews_id_uindex` (`id`),
  ADD KEY `consultant_reviews_consultant_details_id_fk` (`consultant_id`);

--
-- Indexes for table `couple`
--
ALTER TABLE `couple`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couple_id_uindex` (`id`),
  ADD KEY `couple_users_id_fk1` (`person1_user_id`),
  ADD KEY `couple_users_id_fk2` (`person2_user_id`);

--
-- Indexes for table `couple_transport_details`
--
ALTER TABLE `couple_transport_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couple_transport_details_id_uindex` (`id`);

--
-- Indexes for table `couple_transport_reviews`
--
ALTER TABLE `couple_transport_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couple_transport_reviews_id_uindex` (`id`),
  ADD KEY `couple_transport_reviews_couple_transport_details_id_fk` (`couple_transport_id`);

--
-- Indexes for table `guest_transport_details`
--
ALTER TABLE `guest_transport_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guest_transport_details_id_uindex` (`id`);

--
-- Indexes for table `guest_transport_reviews`
--
ALTER TABLE `guest_transport_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guest_transport_reviews_id_uindex` (`id`),
  ADD KEY `guest_transport_reviews_guest_transport_details_id_fk` (`guest_transport_id`);

--
-- Indexes for table `music_details`
--
ALTER TABLE `music_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `music_details_id_uindex` (`id`);

--
-- Indexes for table `music_reviews`
--
ALTER TABLE `music_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `music_reviews_id_uindex` (`id`),
  ADD KEY `music_reviews_music_details_id_fk` (`music_id`);

--
-- Indexes for table `photo_detail`
--
ALTER TABLE `photo_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photo_detail_id_uindex` (`id`);

--
-- Indexes for table `photo_reviews`
--
ALTER TABLE `photo_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photo_reviews_id_uindex` (`id`),
  ADD KEY `photo_reviews_photo_detail_id_fk` (`photo_id`);

--
-- Indexes for table `place_details`
--
ALTER TABLE `place_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `place_details_id_uindex` (`id`);

--
-- Indexes for table `place_reviews`
--
ALTER TABLE `place_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `place_reviews_id_uindex` (`id`),
  ADD KEY `place_reviews_place_details_id_fk` (`place_id`);

--
-- Indexes for table `transport_details`
--
ALTER TABLE `transport_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transport_details_id_uindex` (`id`),
  ADD UNIQUE KEY `transport_details_guests_transport_id_uindex` (`guests_transport_id`),
  ADD UNIQUE KEY `transport_details_couple_transport_id_uindex` (`couple_transport_id`);

--
-- Indexes for table `type_details`
--
ALTER TABLE `type_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_details_id_uindex` (`id`);

--
-- Indexes for table `type_reviews`
--
ALTER TABLE `type_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_reviews_id_uindex` (`id`),
  ADD KEY `type_reviews_type_details_id_fk` (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_uindex` (`id`),
  ADD UNIQUE KEY `users_login_uindex` (`login`),
  ADD UNIQUE KEY `users_email_uindex` (`email`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wedding_id_uindex` (`id`),
  ADD KEY `wedding_couple_id_fk` (`couple_id`),
  ADD KEY `wedding_type_details_id_fk` (`type_id`),
  ADD KEY `wedding_place_details_id_fk` (`place_id`),
  ADD KEY `wedding_photo_detail_id_fk` (`photo_id`),
  ADD KEY `wedding_consultant_details_id_fk` (`consultant_id`),
  ADD KEY `wedding_transport_details_id_fk` (`transport_id`),
  ADD KEY `wedding_music_details_id_fk` (`music_id`),
  ADD KEY `wedding_users_id_fk1` (`creator_user_id`),
  ADD KEY `wedding_users__fk2` (`second_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultant_details`
--
ALTER TABLE `consultant_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `consultant_reviews`
--
ALTER TABLE `consultant_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `couple`
--
ALTER TABLE `couple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `couple_transport_details`
--
ALTER TABLE `couple_transport_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `couple_transport_reviews`
--
ALTER TABLE `couple_transport_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `guest_transport_details`
--
ALTER TABLE `guest_transport_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `guest_transport_reviews`
--
ALTER TABLE `guest_transport_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `music_details`
--
ALTER TABLE `music_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `music_reviews`
--
ALTER TABLE `music_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `photo_detail`
--
ALTER TABLE `photo_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `photo_reviews`
--
ALTER TABLE `photo_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `place_details`
--
ALTER TABLE `place_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `place_reviews`
--
ALTER TABLE `place_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transport_details`
--
ALTER TABLE `transport_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type_details`
--
ALTER TABLE `type_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `type_reviews`
--
ALTER TABLE `type_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wedding`
--
ALTER TABLE `wedding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consultant_reviews`
--
ALTER TABLE `consultant_reviews`
  ADD CONSTRAINT `consultant_reviews_consultant_details_id_fk` FOREIGN KEY (`consultant_id`) REFERENCES `consultant_details` (`id`);

--
-- Constraints for table `couple`
--
ALTER TABLE `couple`
  ADD CONSTRAINT `couple_users_id_fk1` FOREIGN KEY (`person1_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `couple_users_id_fk2` FOREIGN KEY (`person2_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `couple_transport_reviews`
--
ALTER TABLE `couple_transport_reviews`
  ADD CONSTRAINT `couple_transport_reviews_couple_transport_details_id_fk` FOREIGN KEY (`couple_transport_id`) REFERENCES `couple_transport_details` (`id`);

--
-- Constraints for table `guest_transport_reviews`
--
ALTER TABLE `guest_transport_reviews`
  ADD CONSTRAINT `guest_transport_reviews_guest_transport_details_id_fk` FOREIGN KEY (`guest_transport_id`) REFERENCES `guest_transport_details` (`id`);

--
-- Constraints for table `music_reviews`
--
ALTER TABLE `music_reviews`
  ADD CONSTRAINT `music_reviews_music_details_id_fk` FOREIGN KEY (`music_id`) REFERENCES `music_details` (`id`);

--
-- Constraints for table `photo_reviews`
--
ALTER TABLE `photo_reviews`
  ADD CONSTRAINT `photo_reviews_photo_detail_id_fk` FOREIGN KEY (`photo_id`) REFERENCES `photo_detail` (`id`);

--
-- Constraints for table `place_reviews`
--
ALTER TABLE `place_reviews`
  ADD CONSTRAINT `place_reviews_place_details_id_fk` FOREIGN KEY (`place_id`) REFERENCES `place_details` (`id`);

--
-- Constraints for table `transport_details`
--
ALTER TABLE `transport_details`
  ADD CONSTRAINT `transport_details_couple_transport_details_id_fk` FOREIGN KEY (`couple_transport_id`) REFERENCES `couple_transport_details` (`id`),
  ADD CONSTRAINT `transport_details_guest_transport_details_id_fk` FOREIGN KEY (`guests_transport_id`) REFERENCES `guest_transport_details` (`id`);

--
-- Constraints for table `type_reviews`
--
ALTER TABLE `type_reviews`
  ADD CONSTRAINT `type_reviews_type_details_id_fk` FOREIGN KEY (`type_id`) REFERENCES `type_details` (`id`);

--
-- Constraints for table `wedding`
--
ALTER TABLE `wedding`
  ADD CONSTRAINT `wedding_consultant_details_id_fk` FOREIGN KEY (`consultant_id`) REFERENCES `consultant_details` (`id`),
  ADD CONSTRAINT `wedding_couple_id_fk` FOREIGN KEY (`couple_id`) REFERENCES `couple` (`id`),
  ADD CONSTRAINT `wedding_music_details_id_fk` FOREIGN KEY (`music_id`) REFERENCES `music_details` (`id`),
  ADD CONSTRAINT `wedding_photo_detail_id_fk` FOREIGN KEY (`photo_id`) REFERENCES `photo_detail` (`id`),
  ADD CONSTRAINT `wedding_place_details_id_fk` FOREIGN KEY (`place_id`) REFERENCES `place_details` (`id`),
  ADD CONSTRAINT `wedding_transport_details_id_fk` FOREIGN KEY (`transport_id`) REFERENCES `transport_details` (`id`),
  ADD CONSTRAINT `wedding_type_details_id_fk` FOREIGN KEY (`type_id`) REFERENCES `type_details` (`id`),
  ADD CONSTRAINT `wedding_users__fk2` FOREIGN KEY (`second_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wedding_users_id_fk1` FOREIGN KEY (`creator_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
