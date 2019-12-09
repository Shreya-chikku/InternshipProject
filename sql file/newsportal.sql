-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2019 at 07:47 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$ZWDpx02AtnDQ4cAlE1rPjOWPIHXzKn3iHU6eVM.9nnF52fXRAIVeW', 'shreya.acharya03@gmail.com', 1, '2018-05-27 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(9, 'Paintings', 'Displays art work here.', '2019-11-21 01:04:57', '2019-11-28 01:01:08', 1),
(10, 'Entertainment', 'Topics related to entertainment world. Includes hollywood, bollywood, sandalwood, kollywood, tollywood etc.', '2019-11-21 03:53:46', '2019-11-28 00:58:10', 1),
(11, 'Sports', 'This category is related to sports activities such as cricket, football, badminton etc.', '2019-11-21 04:03:24', '2019-11-28 00:54:30', 1),
(12, 'Photography', 'All the standard photography you have done.', '2019-11-28 01:04:11', '0000-00-00 00:00:00', 1),
(13, 'Business', 'Business related work.', '2019-11-28 01:05:18', '0000-00-00 00:00:00', 1),
(17, 'Buy and Sell', 'The things which you want to sell.', '2019-11-28 01:18:04', '0000-00-00 00:00:00', 1),
(19, 'Technology', 'technology', '2019-12-04 03:48:20', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1),
(6, '21', 'Shreya', 'shreya.acharya03@gmail.com', 'Super!!', '2019-11-28 06:46:57', 0),
(7, '19', 'Shreya', 'shreya.acharya03@gmail.com', 'Good Click :)', '2019-11-28 06:48:08', 1),
(9, '20', 'Shreya', 'shreya.acharya03@gmail.com', 'Excited!!', '2019-11-28 10:47:27', 1),
(10, '13', 'Shreya', 'shreya.acharya03@gmail.com', 'wow', '2019-12-04 03:46:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Printing Press', '<div><font color=\"#d633ff\" face=\"Comic Sans MS\"><span style=\"font-size: 26px;\">This is a website where daily based news can be circulated. Any one can see the things uploaded by others.</span></font></div><div><font color=\"#b800ec\" face=\"Comic Sans MS\"><span style=\"font-size: 26px;\">This website is not only used to share the news but also the people gifted with talent of art, story writing, photography can upload their pictures in the available categories. </span></font></div><div><font color=\"#a300cc\" face=\"Comic Sans MS\"><span style=\"font-size: 26px;\">Others can view their upload and encourage them more and enjoy the beauty of their work by commenting on their posts.</span></font></div><div><font color=\"#8f00b3\" face=\"Comic Sans MS\"><span style=\"font-size: 26px;\">There are many categories such as sports, entertainment, art, comics etc., and subcategories such as serials, cricket, football and so on.</span></font></div><div><font color=\"#7a0099\" face=\"Comic Sans MS\"><span style=\"font-size: 26px;\">This website is governed by an \"Administrator\" who will look after the website and he has full right to approve or disapprove any comments, to add or to remove any categories or sub categories.</span></font></div><div><font color=\"#660080\" face=\"Comic Sans MS\"><span style=\"font-size: 26px;\">People are requested to maintain the society discipline while uploading any news and also should take care on the matter that their upload does not hurt anyone or is not an inappropriate news.</span></font></div>', '2018-06-30 18:01:03', '2019-11-28 00:39:13'),
(2, 'contactus', 'Contact Details', '<p><b>Name</b> : Shreya</p><p><b>Address :&nbsp; </b>Udupi Karnataka India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>shreya.acharya03@gmail.com</p><p><br></p><p><br /><b>Name</b> : Shreya Bhat</p><p><b>Address :&nbsp; </b>Udupi Karnataka India</p><p><b>Phone Number : </b>+91 -9874563210</p><p><b>Email -id : </b>shreya.bhat02@gmail.com</p>', '2018-06-30 18:01:36', '2019-12-06 06:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(13, 'Baba Ramdev in udupi for his yoga camp', 5, 6, '<p><img src=\"data:image/jpeg;base64,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\" data-filename=\"download.jfif\" style=\"width: 270px;\"><br></p>', '2019-11-21 01:17:04', '2019-11-21 01:32:24', 1, 'Baba-Ramdev-in-udupi-for-his-yoga-camp', '3fb2db6cccf4a23383383394b28b2b31.jpg'),
(14, 'Painting of Krishna and Radha', 9, 19, '<p>This is a painting of Krishna and Radha exhibited in an art exhibition near Malleshwaram, Bangalore.</p>', '2019-11-28 04:35:53', NULL, 1, 'Painting-of-Krishna-and-Radha', 'eab3d8bb44105a0748849a8642f612af.jpg'),
(15, 'Abstract Painting', 9, 19, '<p>Abstarct paint</p>', '2019-11-28 04:46:19', NULL, 1, 'Abstract-Painting', 'b4904f1b1590dfccf2759c8b1286fd77.jpg'),
(16, 'MS Dhoni to return back', 11, 11, '<p>MS Dhoni to return to return back.</p>', '2019-11-28 05:01:59', NULL, 1, 'MS-Dhoni-to-return-back', '517617f5f2f27dd0c2ffb960541cff3c.jpg'),
(17, 'house for sale', 17, 21, '<p>There is a house for sale which cost around 1 crore</p>', '2019-11-28 05:11:52', NULL, 1, 'house-for-sale', '85f5bb32c526f4a26ae47ea5d637d763.jpg'),
(18, 'India to sign contract with Italy', 13, 22, '<p>India to sign the business contract with Italy</p>', '2019-11-28 05:20:49', NULL, 1, 'India-to-sign-contract-with-Italy', '17f817bbdaf797af163f8efabbdded9e.png'),
(19, 'Indian Culture Photography', 12, 23, '<p>Image showing the Indian Culture</p>', '2019-11-28 05:29:53', NULL, 1, 'Indian-Culture-Photography', '9b9ab5a5c72a5e79ebca96e111939ca6.jpg'),
(20, 'Alia bhatt to starcast against Varun', 10, 15, '<p>Alia Bhatt to starcast against Varun</p>', '2019-11-28 05:34:29', NULL, 1, 'Alia-bhatt-to-starcast-against-Varun', '0ab657ee54fdf76b2e3c8c75a99fd232.jpg'),
(21, 'Dance held at SMVITM', 12, 23, '<p>Photo of dance group who performed in smvitm.&nbsp;</p>', '2019-11-28 06:44:03', NULL, 1, 'Dance-held-at-SMVITM', 'b5b3a53403a5965f0a61505e42014b5b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1),
(10, 10, 'Television', 'TV', '2019-11-21 03:54:52', '0000-00-00 00:00:00', 1),
(11, 11, 'Cricket', 'Cricket related topics', '2019-11-28 00:55:07', '0000-00-00 00:00:00', 1),
(12, 11, 'Badminton', 'Topics related to badminton.', '2019-11-28 00:55:34', '0000-00-00 00:00:00', 1),
(13, 11, 'Football', 'Football related topics.', '2019-11-28 00:56:06', '0000-00-00 00:00:00', 1),
(14, 11, 'Marathon', 'Running race topics goes here.', '2019-11-28 00:56:31', '0000-00-00 00:00:00', 1),
(15, 10, 'Bollywood - Serials', 'Hindi daily soaps.', '2019-11-28 00:58:57', '0000-00-00 00:00:00', 1),
(16, 10, 'Kannada Serials', 'Topics related to kannada daily soaps or the actors of that goes here.', '2019-11-28 00:59:58', '0000-00-00 00:00:00', 1),
(17, 10, 'Hollywood', 'English movies, serials, hollywood actors , all these information goes here. ', '2019-11-28 01:00:45', '0000-00-00 00:00:00', 1),
(18, 9, 'Picture', 'Pictures of others work can be displayed here.', '2019-11-28 01:02:35', '0000-00-00 00:00:00', 1),
(19, 9, 'Paint Canvas', 'Your art work can be displayed here.', '2019-11-28 01:03:25', '0000-00-00 00:00:00', 1),
(20, 12, 'Animals', 'Pics related to animals', '2019-11-28 01:04:42', '0000-00-00 00:00:00', 1),
(21, 17, 'residence', 'house for sale', '2019-11-28 05:10:32', '0000-00-00 00:00:00', 1),
(22, 13, 'Agreement', 'contract signing', '2019-11-28 05:18:17', '0000-00-00 00:00:00', 1),
(23, 12, 'culture', 'Indian culture', '2019-11-28 05:28:10', '0000-00-00 00:00:00', 1),
(24, 19, 'AI', 'Artificial Intelligence', '2019-12-04 03:48:45', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
