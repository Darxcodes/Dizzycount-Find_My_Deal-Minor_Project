-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 05:55 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `henna`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add studmaster', 8, 'add_studmaster'),
(30, 'Can change studmaster', 8, 'change_studmaster'),
(31, 'Can delete studmaster', 8, 'delete_studmaster'),
(32, 'Can view studmaster', 8, 'view_studmaster'),
(33, 'Can add staff', 9, 'add_staff'),
(34, 'Can change staff', 9, 'change_staff'),
(35, 'Can delete staff', 9, 'delete_staff'),
(36, 'Can view staff', 9, 'view_staff'),
(37, 'Can add package', 10, 'add_package'),
(38, 'Can change package', 10, 'change_package'),
(39, 'Can delete package', 10, 'delete_package'),
(40, 'Can view package', 10, 'view_package'),
(41, 'Can add course', 11, 'add_course'),
(42, 'Can change course', 11, 'change_course'),
(43, 'Can delete course', 11, 'delete_course'),
(44, 'Can view course', 11, 'view_course'),
(45, 'Can add event', 12, 'add_event'),
(46, 'Can change event', 12, 'change_event'),
(47, 'Can delete event', 12, 'delete_event'),
(48, 'Can view event', 12, 'view_event'),
(49, 'Can add product', 13, 'add_product'),
(50, 'Can change product', 13, 'change_product'),
(51, 'Can delete product', 13, 'delete_product'),
(52, 'Can view product', 13, 'view_product');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'hennavio', 'course'),
(7, 'hennavio', 'customer'),
(12, 'hennavio', 'event'),
(10, 'hennavio', 'package'),
(13, 'hennavio', 'product'),
(9, 'hennavio', 'staff'),
(8, 'hennavio', 'studmaster'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-14 06:08:06.770129'),
(2, 'auth', '0001_initial', '2022-03-14 06:08:07.238842'),
(3, 'admin', '0001_initial', '2022-03-14 06:08:07.379452'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-14 06:08:07.395058'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-14 06:08:07.395058'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-14 06:08:07.457574'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-14 06:08:07.504404'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-14 06:08:07.535649'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-14 06:08:07.535649'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-14 06:08:07.582545'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-14 06:08:07.582545'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-14 06:08:07.598166'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-14 06:08:07.613755'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-14 06:08:07.629407'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-14 06:08:07.645029'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-14 06:08:07.660618'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-14 06:08:07.676271'),
(19, 'sessions', '0001_initial', '2022-03-14 06:08:07.786665'),
(23, 'hennavio', '0001_initial', '2022-03-22 14:34:03.447048');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lai4bga14yzn5l9ac0ekxesofwq1gu1e', 'eyJzaWQiOjEsInVlbWFpbCI6ImppdGhpbkBnbWFpbC5jb20iLCJ1c2VyIjoiY3VzdG9tZXIiLCJjaWQiOjJ9:1nag50:uGU8sNCmaMKYXG_dm2ybeQQ40-G5o0o0pHMiLJ5hWxU', '2022-04-16 15:54:22.831912'),
('vwqwyzbn25qllosopu5kpsth0vbrwetu', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCSA3OTNFycoQKJyaC9GRXpSaiqShFgBtmBsz:1nabAW:XW2ndVgNGFDzgmZ7D35ZzGZ2EjI8YcmT865WF1sKG60', '2022-04-16 10:39:44.054362'),
('z2zoj746k0jimxm14uq8ak5xm5m5y97o', '.eJyrViotTi1KSS1JzMxRslJKTMnNzHNIzwXy9JLzc5V0wNIwCaVaAJQEEGM:1nUMD1:dKVirG1En77mBxqt2oRdWOjfsp56gKdGAan9pkS6DNA', '2022-03-30 05:28:31.786208');

-- --------------------------------------------------------

--
-- Table structure for table `hennavio_admincourse`
--

CREATE TABLE `hennavio_admincourse` (
  `id` bigint(20) NOT NULL,
  `course` varchar(150) NOT NULL,
  `course_description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hennavio_admincourse`
--

INSERT INTO `hennavio_admincourse` (`id`, `course`, `course_description`) VALUES
(2, 'Mehndhi cone makingggg', 'jjjjjjjjjj');

-- --------------------------------------------------------

--
-- Table structure for table `hennavio_adminevent`
--

CREATE TABLE `hennavio_adminevent` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) NOT NULL,
  `amount` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hennavio_adminevent`
--

INSERT INTO `hennavio_adminevent` (`id`, `event_type`, `amount`) VALUES
(1, 'weddingg', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `hennavio_adminpackage`
--

CREATE TABLE `hennavio_adminpackage` (
  `id` bigint(20) NOT NULL,
  `course` varchar(150) NOT NULL,
  `package_name` varchar(150) NOT NULL,
  `start_date` varchar(120) NOT NULL,
  `end_date` varchar(120) NOT NULL,
  `start_time` varchar(150) NOT NULL,
  `end_time` varchar(120) NOT NULL,
  `strength` varchar(120) NOT NULL,
  `tutor` varchar(120) NOT NULL,
  `amount` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hennavio_adminpackage`
--

INSERT INTO `hennavio_adminpackage` (`id`, `course`, `package_name`, `start_date`, `end_date`, `start_time`, `end_time`, `strength`, `tutor`, `amount`) VALUES
(2, 'Mehndhi cone makinggg', 'vbjnnn', '2022-04-07', '2022-04-16', '20:25', '20:26', '154', 'dfggg', '10000'),
(3, 'Mehndhi cone makinggg', 'vbjnnn', '2022-04-07', '2022-04-16', '20:25', '20:26', '154', 'dfggg', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `hennavio_adminproduct`
--

CREATE TABLE `hennavio_adminproduct` (
  `id` int(15) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `rate` int(150) NOT NULL,
  `description` varchar(300) NOT NULL,
  `image` varchar(400) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hennavio_adminproduct`
--

INSERT INTO `hennavio_adminproduct` (`id`, `product_category`, `item_name`, `rate`, `description`, `image`, `date`, `status`) VALUES
(3, 'fthfaaadd', 'fthfaaadd', 1111, 'dfhghffffdd', 'henna_6rMs1I2.jpg', '2022-04-21', 'ffgfffdddddd');

-- --------------------------------------------------------

--
-- Table structure for table `hennavio_adminstaff`
--

CREATE TABLE `hennavio_adminstaff` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `date_of_birth` varchar(120) NOT NULL,
  `gender` varchar(120) NOT NULL,
  `house` varchar(150) NOT NULL,
  `street` varchar(120) NOT NULL,
  `city` varchar(120) NOT NULL,
  `state` varchar(120) NOT NULL,
  `phone_number` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `designation` varchar(120) NOT NULL,
  `date_of_join` varchar(120) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(120) NOT NULL,
  `status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hennavio_adminstaff`
--

INSERT INTO `hennavio_adminstaff` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `house`, `street`, `city`, `state`, `phone_number`, `email`, `designation`, `date_of_join`, `username`, `password`, `status`) VALUES
(2, 'shaheena mol', 'shehiii', '2022-04-01', 'Female', 'Achothhh(h)', 'kallumpurammm', 'perumbilavvv', 'keralaaa', '9207058659', 'sheena@gmail.com', 'Teacherrr', '2022-04-15', 'shehiii', 'Shehi@123', 'presenttt');

-- --------------------------------------------------------

--
-- Table structure for table `hennavio_customer`
--

CREATE TABLE `hennavio_customer` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `date_of_birth` varchar(120) NOT NULL,
  `gender` varchar(120) NOT NULL,
  `house` varchar(150) NOT NULL,
  `street` varchar(120) NOT NULL,
  `city` varchar(120) NOT NULL,
  `state` varchar(120) NOT NULL,
  `phone_number` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hennavio_customer`
--

INSERT INTO `hennavio_customer` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `house`, `street`, `city`, `state`, `phone_number`, `email`, `username`, `password`) VALUES
(2, 'shaheena', 'shehiii', '2022-04-30', 'Female', 'Achothhh(h)', 'kallumpurammm', 'perumbilavvv', 'keralaaa', '9876543265', 'jithin@gmail.com', 'jithin', 'Jithin@123');

-- --------------------------------------------------------

--
-- Table structure for table `hennavio_studmaster`
--

CREATE TABLE `hennavio_studmaster` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `date_of_birth` varchar(120) NOT NULL,
  `gender` varchar(120) NOT NULL,
  `house` varchar(150) NOT NULL,
  `street` varchar(120) NOT NULL,
  `city` varchar(120) NOT NULL,
  `state` varchar(120) NOT NULL,
  `phone_number` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hennavio_studmaster`
--

INSERT INTO `hennavio_studmaster` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `house`, `street`, `city`, `state`, `phone_number`, `email`, `username`, `password`) VALUES
(1, 'anu', 'mol', '2022-04-21', 'Female', 'Achothhh(h)', 'kallumpurammm', 'perumbilavvv', 'keralaaa', '9207058659', 'anu@gmail.com', 'anu', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `hennavio_admincourse`
--
ALTER TABLE `hennavio_admincourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hennavio_adminevent`
--
ALTER TABLE `hennavio_adminevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hennavio_adminpackage`
--
ALTER TABLE `hennavio_adminpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hennavio_adminproduct`
--
ALTER TABLE `hennavio_adminproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hennavio_adminstaff`
--
ALTER TABLE `hennavio_adminstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hennavio_customer`
--
ALTER TABLE `hennavio_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hennavio_studmaster`
--
ALTER TABLE `hennavio_studmaster`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hennavio_admincourse`
--
ALTER TABLE `hennavio_admincourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hennavio_adminevent`
--
ALTER TABLE `hennavio_adminevent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hennavio_adminpackage`
--
ALTER TABLE `hennavio_adminpackage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hennavio_adminproduct`
--
ALTER TABLE `hennavio_adminproduct`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hennavio_adminstaff`
--
ALTER TABLE `hennavio_adminstaff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hennavio_customer`
--
ALTER TABLE `hennavio_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hennavio_studmaster`
--
ALTER TABLE `hennavio_studmaster`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
