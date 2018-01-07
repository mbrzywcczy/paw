-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 04:36 PM
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
(1, 'Jan', 'Kowalski', 'Konsultant ślubny', 750, 'Śląskie', 'Katowice', 'Warszawska 1/1', 'path'),
(2, 'Maria', 'Nowak', 'Konsultant ślubny', 1250, 'Śląskie', 'Katowice', 'Warszawska 1/1', 'path');

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
(1, 'Auto', 'Auto', 600, 'Śląskie', 'Katowice', 'Warszawska 2/3', 'path'),
(2, 'Dorożka', 'Dorożka', 500, 'Śląskie', 'Katowice', 'Warszawska 2/3', 'path'),
(3, 'Limuzyna', 'Limuzyna', 1250, 'Śląskie', 'Katowice', 'Warszawska 2/3', 'path');

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
(1, 'Autobus', 'Autobus', 500, 15, 60, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'path'),
(2, 'Bus', 'Bus', 400, 20, 30, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'path'),
(3, 'Auta', 'Auta', 250, 0, 5, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'path');

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
(1, 'Zespół', 'Zespół', 'Zespół', 1800, 0, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'path'),
(2, 'Kapela', 'Kapela', 'Kapela', 2500, 0, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'path'),
(3, 'DJ', 'DJ', 'DJ', 1000, 10, 'Śląskie', 'Katowice', 'Warszawska 3/4', 'path');

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
(1, 'Marek', 'Nowak', 'NowakFoto', 'Fotograf Marek Nowak', 0, 750, 0, 2500, 1, 0, 'Śląskie', 'Katowice', 'Warszawska 10/1', 'path'),
(2, 'Katarzyna', 'Zegarek', 'ZegarekFoto', 'Fotograf Katarzyna Zegarek', 0, 1000, 0, 2000, 0, 5000, 'Śląskie', 'Katowice', 'Warszawska 10/1', 'path');

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
(1, 'Restauracja Szafa', 240, 'Restauracja Szafa', 'Śląskie', 'Katowice', 'Warszawska 1/1', 4500, 60, 'path'),
(2, 'Restauracja Drzwi', 120, 'Restauracja Drzwi', 'Śląskie', 'Katowice', 'Warszawska 2/2', 2500, 45, 'path');

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
(1, 'Cywilny', 'Urząd Stanu Cywilnego', 'Śląskie', 'Katowice', 'Warszawska 3/3', 'path'),
(2, 'Kościelny', 'Kościół', 'Śląskie', 'Katowice', 'Warszawska 4/4', 'path');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `consultant_reviews`
--
ALTER TABLE `consultant_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `couple`
--
ALTER TABLE `couple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `couple_transport_details`
--
ALTER TABLE `couple_transport_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `couple_transport_reviews`
--
ALTER TABLE `couple_transport_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_transport_details`
--
ALTER TABLE `guest_transport_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guest_transport_reviews`
--
ALTER TABLE `guest_transport_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `music_details`
--
ALTER TABLE `music_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `music_reviews`
--
ALTER TABLE `music_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_detail`
--
ALTER TABLE `photo_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photo_reviews`
--
ALTER TABLE `photo_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place_details`
--
ALTER TABLE `place_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `place_reviews`
--
ALTER TABLE `place_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_details`
--
ALTER TABLE `transport_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type_details`
--
ALTER TABLE `type_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_reviews`
--
ALTER TABLE `type_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
