-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2019 at 03:38 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teckglobal`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `emailAddress` varchar(40) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `super_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `first_name`, `last_name`, `emailAddress`, `role_id`, `gender`, `super_id`) VALUES
(1, 'David', 'Zucaro', 'david@teckglobal.com.au', 14, 'M', 0),
(2, 'Ben', 'Ko', 'ben.ko@teckglobal.com.au', 8, 'M', 1),
(3, 'Sean', 'Kho', 'Sean.Kho@teckglobal.com.au', 21, 'M', 1),
(4, 'David', 'Ong', 'david.Ong@teckglobal.com.au', 17, 'M', 1),
(5, 'John', 'Brockie', 'john.brockie@teckglobal.com.au', 26, 'M', 1),
(6, 'Jeniffer', 'Pauza', 'jeniffer.pauza@teckglobal.com.au', 9, 'F', 1),
(7, 'Mary', 'Dao', 'mary.dao@teckglobal.com.au', 1, 'F', 1),
(8, 'Vivek', 'Pai', 'vivek.pai@teckglobal.com.au', 22, 'M', 2),
(9, 'Adrian', 'Serang', 'adrian.serang@teckglobal.com.au', 22, 'M', 2),
(10, 'Jayden', 'Tan', 'jayden.tan@teckglobal.com.au', 11, 'M', 8),
(11, 'Paolo', 'Domingo', 'paolo.domingo@teckglobal.com.au', 6, 'M', 8),
(12, 'Francis', 'Dao', 'francis.dao@teckglobal.com.au', 3, 'M', 8),
(13, 'Namu', 'Herbert-Chatt', 'namugeere.herbertchatt@teckglobal.com.au', 5, 'F', 8),
(14, 'Arash', 'Baastani', 'arash.baastani@teckglobal.com.au', 6, 'M', 9),
(15, 'William', 'Ni', '', 6, 'M', 9),
(16, 'Chamara', 'Tilakaratna', 'chamara.tilakaratna@teckglobal.com.au', 11, 'M', 9),
(17, 'Terrence', 'Zhao', 'terrence.zhao@teckglobal.com.au', 11, 'M', 9),
(18, 'Hon', 'Choon Fan', 'hon.fan@teckglobal.com.au', 13, 'M', 9),
(19, 'Arash', 'Modhej', 'arash.modhej@teckglobal.com.au', 20, 'M', 3),
(20, 'MC', 'Huang', 'mc.huang@teckglobal.com.au', 6, 'M', 3),
(21, 'Dulara', 'Peiris', 'dulara.peiris@teckglobal.com.au', 11, 'M', 3),
(22, 'Ian', 'Visser', 'ian.visser@teckglobal.com.au', 23, 'M', 3),
(23, 'Dany', 'Caro', 'dany.caro@teckglobal.com.au', 24, 'M', 1),
(24, 'Grace', 'Tseng', 'grace.tseng@teckglobal.com.au', 18, 'F', 4),
(25, 'Charlene', 'How', 'charlene.how@teckglobal.com.au', 16, 'F', 24),
(26, 'Goesta', 'Kumlehn', 'goesta.kumlehn@teckglobal.com.au', 19, 'M', 4),
(27, 'Venna', 'D`Rozario', 'venna.drozario@teckglobal.com.au', 2, 'F', 26),
(28, 'Sherwin', 'Umacob', 'sherwin.umacob@teckglobal.com.au', 15, 'M', 4),
(29, 'Uvin', 'Alwis', 'uvin.alwis@teckglobal.com.au', 12, 'M', 4),
(30, 'Richard', 'Moore', 'richard.moore@teckglobal.com.au', 10, 'M', 5),
(31, 'Dominic', 'Zucaro', 'dominic.zucaro@teckglobal.com.au', 25, 'M', 5),
(32, 'Callum', 'Warn', 'callum.warn@teckglobal.com.au', 25, 'M', 5),
(33, 'Michael', 'Arcaro', 'michael.arcaro@teckglobal.com.au', 7, 'M', 5),
(34, 'Simonn', 'Lei', 'simon.lei@teckglobal.com.au', 4, 'M', 5),
(35, 'Daniel', 'Black', 'daniel.black@teckglobal.com.au', 7, 'M', 5),
(36, 'Damon', 'Greisbach', 'damon.greisbach@teckglobal.com.au', 4, 'M', 5),
(37, 'Liam', 'Hawley', 'liam.hawley@teckglobal.com.au', 7, 'M', 5);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `url`, `description`, `user_id`, `created_at`) VALUES
(5, 'facebook', 'http://facebook.com', 'facebook page ', NULL, '2019-06-06 13:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `position` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `position`) VALUES
(1, 'Accounts Manager'),
(2, 'Assistant Project & Cost Controller'),
(3, 'Designer'),
(4, 'Electrical Apprentice'),
(5, 'Electrical Designer'),
(6, 'Electrical Engineer'),
(7, 'Electrician'),
(8, 'Engineering Manager'),
(9, 'Executive Assistant'),
(10, 'Fabricator'),
(11, 'Graduate Electrical Engineer'),
(12, 'Gratuate Mechanical Engineer'),
(13, 'Intern'),
(14, 'Managing Director'),
(15, 'Mechanical Designer & Coordinator'),
(16, 'Office Administrator'),
(17, 'Operation Manager'),
(18, 'Procurement Officer'),
(19, 'Project & Cost Controller'),
(20, 'Project Engineer'),
(21, 'Project Manager'),
(22, 'Senior Electrical Engineer'),
(23, 'Senior Electrical Designer'),
(24, 'Software Engineer'),
(25, 'Trade assistant'),
(26, 'Workshop Manager');

-- --------------------------------------------------------

--
-- Table structure for table `table 4`
--

CREATE TABLE `table 4` (
  `COL 1` varchar(31) DEFAULT NULL,
  `COL 2` varchar(35) DEFAULT NULL,
  `COL 3` varchar(9) DEFAULT NULL,
  `COL 4` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 4`
--

INSERT INTO `table 4` (`COL 1`, `COL 2`, `COL 3`, `COL 4`) VALUES
('', '', ' ', ''),
('Job', '', '', ''),
(' ', '', '', ''),
('Job', 'J00001 - Internal Time - Operations', '', ''),
('Client', 'Teck Global', '', ''),
('Time Sheets', '', '', ''),
('Date', 'Task', 'Staff', 'Time'),
(' ', '', '', ''),
('25-Mar-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('26-Mar-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('27-Mar-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('28-Mar-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('29-Mar-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('01-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('02-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('03-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('04-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('05-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('08-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('09-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('10-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('15-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '7.00'),
('16-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '7.00'),
('17-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '7.00'),
('18-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '7.00'),
('23-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '6.00'),
('24-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '6.00'),
('26-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '6.00'),
('29-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '6.00'),
('30-Apr-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('01-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('02-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('03-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('06-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('07-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('08-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('09-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('10-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('13-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('14-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('15-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('16-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('17-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('20-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('20-May-2019', '[Eng] Software Engineer', 'Dany Caro', '0.00'),
('21-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('22-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('23-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('24-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('27-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('28-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('29-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('30-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('31-May-2019', '[Eng] Software Engineer', 'Dany Caro', '4.00'),
('', '', '', ' '),
('200.00', '', '', ''),
('Date Printed: 05 Jun 2019 12:34', '', '', 'Page 1 of 1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE SET NULL;

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
