-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2018 at 11:14 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_school_software`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_expence_info`
--

CREATE TABLE `account_expence_info` (
  `s_no` int(250) NOT NULL,
  `account_customer_name` varchar(1000) NOT NULL,
  `account_customer_address` varchar(1000) NOT NULL,
  `account_customer_contact_no` varchar(1000) NOT NULL,
  `account_customer_designation` varchar(1000) NOT NULL,
  `account_customer_total_amount` varchar(1000) NOT NULL,
  `account_customer_remark` varchar(1000) NOT NULL,
  `account_customer_date` varchar(100) NOT NULL,
  `bill_upload` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_expence_info`
--

INSERT INTO `account_expence_info` (`s_no`, `account_customer_name`, `account_customer_address`, `account_customer_contact_no`, `account_customer_designation`, `account_customer_total_amount`, `account_customer_remark`, `account_customer_date`, `bill_upload`) VALUES
(1, 'Diksha', 'Anand Nagar Bhopal', '8523697412', 'Teacher', '15000', 'Diksha Expense', '0000-00-00', 'caste.jpg'),
(2, 'Kanhaiya Verma', 'Ayodhya Bypass, Bhopal', '8523697741', 'Advocate', '25000', 'Kanhaiya Expense', '0000-00-00', 'caste.jpg'),
(3, 'vikash gupta', 'Minal Residency', '9752144856', 'student', '5000', 'fee', '02-01-2018', ''),
(4, 'Rajesh ', 'shrma ward panna', '9685741526', 'lecture', '1200', 'gardening fees', '02-01-2018', 'garden_light5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `account_income_info`
--

CREATE TABLE `account_income_info` (
  `s_no` int(250) NOT NULL,
  `account_customer_name` varchar(1000) NOT NULL,
  `account_customer_address` varchar(1000) NOT NULL,
  `account_customer_contact_no` varchar(1000) NOT NULL,
  `account_customer_designation` varchar(1000) NOT NULL,
  `account_customer_total_amount` varchar(1000) NOT NULL,
  `account_customer_remark` varchar(1000) NOT NULL,
  `account_customer_date` varchar(100) NOT NULL,
  `bill_upload` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_income_info`
--

INSERT INTO `account_income_info` (`s_no`, `account_customer_name`, `account_customer_address`, `account_customer_contact_no`, `account_customer_designation`, `account_customer_total_amount`, `account_customer_remark`, `account_customer_date`, `bill_upload`) VALUES
(1, 'Rahul Sharma', 'Narela shankari, Bhopal', '8956565632', 'Bank Officer', '35000', 'Rahul Income', '0000-00-00', 'birth.jpg'),
(3, 'Gopal singh', 'Nehru ward civilline sagar', '8109236057', 'lecturer', '15000', 'High school teacher', '02-01-2018', 'hostel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `account_office_bank_account`
--

CREATE TABLE `account_office_bank_account` (
  `s_no` int(100) NOT NULL,
  `bank_account_holder_name` varchar(1000) NOT NULL,
  `bank_account_no` varchar(1000) NOT NULL,
  `bank_name` varchar(1000) NOT NULL,
  `bank_branch_name` varchar(1000) NOT NULL,
  `bank_ifsc_code` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_office_bank_account`
--

INSERT INTO `account_office_bank_account` (`s_no`, `bank_account_holder_name`, `bank_account_no`, `bank_name`, `bank_branch_name`, `bank_ifsc_code`) VALUES
(1, 'Ramesh Sharma', '4971001500144118', 'Punjab National Bank', 'Ayodhya Bypass Road, Bhopal', 'PUNB0497100'),
(2, 'Girjesh verma', '327591254812', 'State Bank', 'Nehru Nagar Bhopal', 'SBIN021345'),
(3, 'abc', '123456', 'sbi', 'bhopal', '1234'),
(4, 'vikash', '1234556', 'pnb', 'nehru nagar', '12456'),
(5, 'Harpreet singh saluja', '6091001500006589', 'punjab national bank', 'dhyandhyal ward safar complex near bus stand ', 'pnb609100');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `s_no` int(22) NOT NULL,
  `username` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`s_no`, `username`, `designation`, `password`, `contact`, `image`) VALUES
(1, 'Simption', 'Software Company', '123456', '9074822542,9144555966', 'simption_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `admit_card_generate`
--

CREATE TABLE `admit_card_generate` (
  `s_no` int(200) NOT NULL,
  `admit_card_student_class` varchar(1000) NOT NULL,
  `admit_card_exam_type` varchar(1000) NOT NULL,
  `admit_card_exam_time_from` time NOT NULL,
  `admit_card_exam_time_to` time NOT NULL,
  `admit_card_subject` varchar(100) NOT NULL,
  `admit_card_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `s_no` int(100) NOT NULL,
  `bus_name` varchar(100) NOT NULL,
  `bus_company` varchar(100) NOT NULL,
  `bus_model_no` varchar(100) NOT NULL,
  `bus_no` varchar(100) NOT NULL,
  `bus_owner_name` varchar(100) NOT NULL,
  `bus_owner_contact` varchar(100) NOT NULL,
  `bus_ragistration_no` varchar(100) NOT NULL,
  `bus_document_uplode` varchar(100) NOT NULL,
  `bus_photo` varchar(100) NOT NULL,
  `bus_id` varchar(100) NOT NULL,
  `bus_route` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`s_no`, `bus_name`, `bus_company`, `bus_model_no`, `bus_no`, `bus_owner_name`, `bus_owner_contact`, `bus_ragistration_no`, `bus_document_uplode`, `bus_photo`, `bus_id`, `bus_route`) VALUES
(1, 'Volvo Bus', 'Praveen Travels', '2014', 'MP09KJ4545', 'Raghav Sahu', '9826284566', 'MP04PP4575', 'Sick-Leave.jpg', 'bus_1.png', '5', 'Gulmohar Colony'),
(2, 'Ashok', 'ashok leland', '2015', 'mp15 js4563', 'Asfak khan', '9685741526', 'rig45623', 'download (8).jpg', 'car.jpg', '6', 'kolar road'),
(3, 'Rai bus', 'verma ', '2013', 'MP19 KT4563', 'pawan ', '9685741526', 'rig7838723', 'download (8).jpg', 'car.jpg', '7', 'New market ');

-- --------------------------------------------------------

--
-- Table structure for table `bus_route_details`
--

CREATE TABLE `bus_route_details` (
  `s_no` int(100) NOT NULL,
  `bus_route` varchar(100) NOT NULL,
  `bus_stop_name` varchar(100) NOT NULL,
  `bus_route_time` time NOT NULL,
  `bus_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_route_details`
--

INSERT INTO `bus_route_details` (`s_no`, `bus_route`, `bus_stop_name`, `bus_route_time`, `bus_no`) VALUES
(1, 'Gulmohar Colony', 'E8 Arera Colony', '07:00:00', 'MP19 KT4563'),
(2, 'Gulmohar Colony', 'Gulmohar Padharo SAA', '07:10:00', 'MP19 KT4563'),
(3, 'Gulmohar Colony', 'Gulmohar Shivoy Complex', '07:20:00', 'MP19 KT4563'),
(4, 'Gulmohar Colony', 'Gulmohar Ishwar Nagar', '07:30:00', 'MP19 KT4563'),
(5, 'kolar road', 'bima kunj', '10:00:00', 'mp15 js4563'),
(6, 'kolar road', 'mahabali', '10:10:00', 'mp15 js4563'),
(7, 'kolar road', 'sahapura', '10:20:00', 'mp15 js4563'),
(8, 'New market ', 'mata mandir', '10:00:00', 'MP19 KT4563'),
(9, 'New market ', 'jahagira bad', '10:10:00', 'MP19 KT4563');

-- --------------------------------------------------------

--
-- Table structure for table `bus_staff_info`
--

CREATE TABLE `bus_staff_info` (
  `s_no` int(200) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_gender` varchar(50) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_father` varchar(50) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_mobile` varchar(50) NOT NULL,
  `emp_address` varchar(1000) NOT NULL,
  `emp_qualification` varchar(100) NOT NULL,
  `emp_photo` varchar(1000) NOT NULL,
  `emp_doj` date NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_casual_leave` varchar(100) NOT NULL,
  `emp_pan_card_no` varchar(100) NOT NULL,
  `emp_bank_name` varchar(100) NOT NULL,
  `emp_account_no` varchar(1000) NOT NULL,
  `emp_ifsc_code` varchar(1000) NOT NULL,
  `emp_basic_salary` varchar(1000) NOT NULL,
  `emp_pf_number` varchar(1000) NOT NULL,
  `emp_status` varchar(100) NOT NULL DEFAULT 'Active',
  `emp_status_change_date` date NOT NULL,
  `emp_uid_no` varchar(250) NOT NULL,
  `remarks` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_stock_purchase`
--

CREATE TABLE `bus_stock_purchase` (
  `s_no` int(200) NOT NULL,
  `item_product_name` varchar(200) NOT NULL,
  `item_quantity` varchar(200) NOT NULL,
  `item_purchase_rate` varchar(200) NOT NULL,
  `total_purchase_amount` varchar(200) NOT NULL,
  `shop_name` varchar(200) NOT NULL,
  `contact_person_name` varchar(200) NOT NULL,
  `purchase_status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_stock_purchase`
--

INSERT INTO `bus_stock_purchase` (`s_no`, `item_product_name`, `item_quantity`, `item_purchase_rate`, `total_purchase_amount`, `shop_name`, `contact_person_name`, `purchase_status`) VALUES
(1, 'Petrol', '10', '75', '750', 'Prabhat Petrol Pump', 'sanjay singh', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stop_details`
--

CREATE TABLE `bus_stop_details` (
  `s_no` int(100) NOT NULL,
  `bus_route` varchar(100) NOT NULL,
  `extra_1` varchar(100) NOT NULL,
  `extra_2` varchar(100) NOT NULL,
  `extra_3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_stop_details`
--

INSERT INTO `bus_stop_details` (`s_no`, `bus_route`, `extra_1`, `extra_2`, `extra_3`) VALUES
(1, 'Route1', '', '', ''),
(2, 'Route2', '', '', ''),
(4, 'Route3', '', '', ''),
(5, 'kolar road', '', '', ''),
(6, 'New market ', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `character_certificate`
--

CREATE TABLE `character_certificate` (
  `s_no` int(100) NOT NULL,
  `character_student_name` varchar(200) NOT NULL,
  `character_student_father_name` varchar(200) NOT NULL,
  `character_school_name` varchar(200) NOT NULL,
  `character_current_year_from` varchar(200) NOT NULL,
  `character_current_year_to` varchar(200) NOT NULL,
  `character_type` varchar(200) NOT NULL,
  `character_issue_date` varchar(200) NOT NULL,
  `character_student_roll_no` varchar(200) NOT NULL,
  `student_character_status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `character_certificate`
--

INSERT INTO `character_certificate` (`s_no`, `character_student_name`, `character_student_father_name`, `character_school_name`, `character_current_year_from`, `character_current_year_to`, `character_type`, `character_issue_date`, `character_student_roll_no`, `student_character_status`) VALUES
(6, 'Rashid khan', 'Rafull Ahmed khan', 'ssm bina', '2016', '2017', 'very good', '29-12-2017', '12', 'Active'),
(7, 'mardul shrivastava', 'sanjay shrivastava', 'holy family convent school khurai', '2016', '2017', 'Well and good', '03-01-2018', '2', 'Active'),
(8, 'mardul shrivastava', 'sanjay shrivastava', 'Holy family convent school', '2015', '2016', 'good', '03-01-2018', '2', 'Active'),
(9, 'mardul shrivastava', 'sanjay shrivastava', 'holy ', '2015', '2016', 'very good', '11-01-2018', '2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `class_time_table`
--

CREATE TABLE `class_time_table` (
  `s_no` int(10) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `period1_subject_monday` varchar(50) NOT NULL,
  `period1_teacher_monday` varchar(50) NOT NULL,
  `period1_subject_tuesday` varchar(50) NOT NULL,
  `period1_teacher_tuesday` varchar(50) NOT NULL,
  `period1_subject_wednesday` varchar(50) NOT NULL,
  `period1_teacher_wednesday` varchar(50) NOT NULL,
  `period1_subject_thursday` varchar(50) NOT NULL,
  `period1_teacher_thursday` varchar(50) NOT NULL,
  `period1_subject_friday` varchar(50) NOT NULL,
  `period1_teacher_friday` varchar(50) NOT NULL,
  `period1_subject_saturday` varchar(50) NOT NULL,
  `period1_teacher_saturday` varchar(50) NOT NULL,
  `period2_subject_monday` varchar(50) NOT NULL,
  `period2_teacher_monday` varchar(50) NOT NULL,
  `period2_subject_tuesday` varchar(50) NOT NULL,
  `period2_teacher_tuesday` varchar(50) NOT NULL,
  `period2_subject_wednesday` varchar(50) NOT NULL,
  `period2_teacher_wednesday` varchar(50) NOT NULL,
  `period2_subject_thursday` varchar(50) NOT NULL,
  `period2_teacher_thursday` varchar(50) NOT NULL,
  `period2_subject_friday` varchar(50) NOT NULL,
  `period2_teacher_friday` varchar(50) NOT NULL,
  `period2_subject_saturday` varchar(50) NOT NULL,
  `period2_teacher_saturday` varchar(50) NOT NULL,
  `period3_subject_monday` varchar(50) NOT NULL,
  `period3_teacher_monday` varchar(50) NOT NULL,
  `period3_subject_tuesday` varchar(50) NOT NULL,
  `period3_teacher_tuesday` varchar(50) NOT NULL,
  `period3_subject_wednesday` varchar(50) NOT NULL,
  `period3_teacher_wednesday` varchar(50) NOT NULL,
  `period3_subject_thursday` varchar(50) NOT NULL,
  `period3_teacher_thursday` varchar(50) NOT NULL,
  `period3_subject_friday` varchar(50) NOT NULL,
  `period3_teacher_friday` varchar(50) NOT NULL,
  `period3_subject_saturday` varchar(50) NOT NULL,
  `period3_teacher_saturday` varchar(50) NOT NULL,
  `period4_subject_monday` varchar(50) NOT NULL,
  `period4_teacher_monday` varchar(50) NOT NULL,
  `period4_subject_tuesday` varchar(50) NOT NULL,
  `period4_teacher_tuesday` varchar(50) NOT NULL,
  `period4_subject_wednesday` varchar(50) NOT NULL,
  `period4_teacher_wednesday` varchar(50) NOT NULL,
  `period4_subject_thursday` varchar(50) NOT NULL,
  `period4_teacher_thursday` varchar(50) NOT NULL,
  `period4_subject_friday` varchar(50) NOT NULL,
  `period4_teacher_friday` varchar(50) NOT NULL,
  `period4_subject_saturday` varchar(50) NOT NULL,
  `period4_teacher_saturday` varchar(50) NOT NULL,
  `lunch_subject_monday` varchar(50) NOT NULL,
  `lunch_teacher_monday` varchar(50) NOT NULL,
  `lunch_subject_tuesday` varchar(50) NOT NULL,
  `lunch_teacher_tuesday` varchar(50) NOT NULL,
  `lunch_subject_wednesday` varchar(50) NOT NULL,
  `lunch_teacher_wednesday` varchar(50) NOT NULL,
  `lunch_subject_thursday` varchar(50) NOT NULL,
  `lunch_teacher_thursday` varchar(50) NOT NULL,
  `lunch_subject_friday` varchar(50) NOT NULL,
  `lunch_teacher_friday` varchar(50) NOT NULL,
  `lunch_subject_saturday` varchar(50) NOT NULL,
  `lunch_teacher_saturday` varchar(50) NOT NULL,
  `period5_subject_monday` varchar(50) NOT NULL,
  `period5_teacher_monday` varchar(50) NOT NULL,
  `period5_subject_tuesday` varchar(50) NOT NULL,
  `period5_teacher_tuesday` varchar(50) NOT NULL,
  `period5_subject_wednesday` varchar(50) NOT NULL,
  `period5_teacher_wednesday` varchar(50) NOT NULL,
  `period5_subject_thursday` varchar(50) NOT NULL,
  `period5_teacher_thursday` varchar(50) NOT NULL,
  `period5_subject_friday` varchar(50) NOT NULL,
  `period5_teacher_friday` varchar(50) NOT NULL,
  `period5_subject_saturday` varchar(50) NOT NULL,
  `period5_teacher_saturday` varchar(50) NOT NULL,
  `period6_subject_monday` varchar(50) NOT NULL,
  `period6_teacher_monday` varchar(50) NOT NULL,
  `period6_subject_tuesday` varchar(50) NOT NULL,
  `period6_teacher_tuesday` varchar(50) NOT NULL,
  `period6_subject_wednesday` varchar(50) NOT NULL,
  `period6_teacher_wednesday` varchar(50) NOT NULL,
  `period6_subject_thursday` varchar(50) NOT NULL,
  `period6_teacher_thursday` varchar(50) NOT NULL,
  `period6_subject_friday` varchar(50) NOT NULL,
  `period6_teacher_friday` varchar(50) NOT NULL,
  `period6_subject_saturday` varchar(50) NOT NULL,
  `period6_teacher_saturday` varchar(50) NOT NULL,
  `period7_subject_monday` varchar(50) NOT NULL,
  `period7_teacher_monday` varchar(50) NOT NULL,
  `period7_subject_tuesday` varchar(50) NOT NULL,
  `period7_teacher_tuesday` varchar(50) NOT NULL,
  `period7_subject_wednesday` varchar(50) NOT NULL,
  `period7_teacher_wednesday` varchar(50) NOT NULL,
  `period7_subject_thursday` varchar(50) NOT NULL,
  `period7_teacher_thursday` varchar(50) NOT NULL,
  `period7_subject_friday` varchar(50) NOT NULL,
  `period7_teacher_friday` varchar(50) NOT NULL,
  `period7_subject_saturday` varchar(50) NOT NULL,
  `period7_teacher_saturday` varchar(50) NOT NULL,
  `period8_subject_monday` varchar(50) NOT NULL,
  `period8_teacher_monday` varchar(50) NOT NULL,
  `period8_subject_tuesday` varchar(50) NOT NULL,
  `period8_teacher_tuesday` varchar(50) NOT NULL,
  `period8_subject_wednesday` varchar(50) NOT NULL,
  `period8_teacher_wednesday` varchar(50) NOT NULL,
  `period8_subject_thursday` varchar(50) NOT NULL,
  `period8_teacher_thursday` varchar(50) NOT NULL,
  `period8_subject_friday` varchar(50) NOT NULL,
  `period8_teacher_friday` varchar(50) NOT NULL,
  `period8_subject_saturday` varchar(50) NOT NULL,
  `period8_teacher_saturday` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_time_table`
--

INSERT INTO `class_time_table` (`s_no`, `class`, `section`, `period1_subject_monday`, `period1_teacher_monday`, `period1_subject_tuesday`, `period1_teacher_tuesday`, `period1_subject_wednesday`, `period1_teacher_wednesday`, `period1_subject_thursday`, `period1_teacher_thursday`, `period1_subject_friday`, `period1_teacher_friday`, `period1_subject_saturday`, `period1_teacher_saturday`, `period2_subject_monday`, `period2_teacher_monday`, `period2_subject_tuesday`, `period2_teacher_tuesday`, `period2_subject_wednesday`, `period2_teacher_wednesday`, `period2_subject_thursday`, `period2_teacher_thursday`, `period2_subject_friday`, `period2_teacher_friday`, `period2_subject_saturday`, `period2_teacher_saturday`, `period3_subject_monday`, `period3_teacher_monday`, `period3_subject_tuesday`, `period3_teacher_tuesday`, `period3_subject_wednesday`, `period3_teacher_wednesday`, `period3_subject_thursday`, `period3_teacher_thursday`, `period3_subject_friday`, `period3_teacher_friday`, `period3_subject_saturday`, `period3_teacher_saturday`, `period4_subject_monday`, `period4_teacher_monday`, `period4_subject_tuesday`, `period4_teacher_tuesday`, `period4_subject_wednesday`, `period4_teacher_wednesday`, `period4_subject_thursday`, `period4_teacher_thursday`, `period4_subject_friday`, `period4_teacher_friday`, `period4_subject_saturday`, `period4_teacher_saturday`, `lunch_subject_monday`, `lunch_teacher_monday`, `lunch_subject_tuesday`, `lunch_teacher_tuesday`, `lunch_subject_wednesday`, `lunch_teacher_wednesday`, `lunch_subject_thursday`, `lunch_teacher_thursday`, `lunch_subject_friday`, `lunch_teacher_friday`, `lunch_subject_saturday`, `lunch_teacher_saturday`, `period5_subject_monday`, `period5_teacher_monday`, `period5_subject_tuesday`, `period5_teacher_tuesday`, `period5_subject_wednesday`, `period5_teacher_wednesday`, `period5_subject_thursday`, `period5_teacher_thursday`, `period5_subject_friday`, `period5_teacher_friday`, `period5_subject_saturday`, `period5_teacher_saturday`, `period6_subject_monday`, `period6_teacher_monday`, `period6_subject_tuesday`, `period6_teacher_tuesday`, `period6_subject_wednesday`, `period6_teacher_wednesday`, `period6_subject_thursday`, `period6_teacher_thursday`, `period6_subject_friday`, `period6_teacher_friday`, `period6_subject_saturday`, `period6_teacher_saturday`, `period7_subject_monday`, `period7_teacher_monday`, `period7_subject_tuesday`, `period7_teacher_tuesday`, `period7_subject_wednesday`, `period7_teacher_wednesday`, `period7_subject_thursday`, `period7_teacher_thursday`, `period7_subject_friday`, `period7_teacher_friday`, `period7_subject_saturday`, `period7_teacher_saturday`, `period8_subject_monday`, `period8_teacher_monday`, `period8_subject_tuesday`, `period8_teacher_tuesday`, `period8_subject_wednesday`, `period8_teacher_wednesday`, `period8_subject_thursday`, `period8_teacher_thursday`, `period8_subject_friday`, `period8_teacher_friday`, `period8_subject_saturday`, `period8_teacher_saturday`) VALUES
(1, 'NURSERY', 'A', 'Math', 'Ramesh Gupta', 'Math', 'Ramesh Gupta', 'Math', 'Ramesh Gupta', 'Math', 'Ramesh Gupta', 'Math', 'Ramesh Gupta', 'Math', 'Ramesh Gupta', 'English', 'vikash gupta', 'English', 'vikash gupta', 'English', 'vikash gupta', 'English', 'vikash gupta', 'English', 'vikash gupta', 'English', 'vikash gupta', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Sanskrit', 'Nk Thomas', 'Sanskrit', 'Nk Thomas', 'Sanskrit', 'Nk Thomas', 'Sanskrit', 'Nk Thomas', 'Sanskrit', 'Nk Thomas', 'Sanskrit', 'Nk Thomas', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', 'Gk', 'Ramesh Gupta', 'Gk', 'Ramesh Gupta', 'Gk', 'Ramesh Gupta', 'Gk', 'Ramesh Gupta', 'Gk', 'Ramesh Gupta', 'Gk', 'Ramesh Gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Evs', 'Ramesh Gupta', 'Evs', 'Ramesh Gupta', 'Evs', 'Ramesh Gupta', 'Evs', 'Ramesh Gupta', 'Evs', 'Ramesh Gupta', 'Evs', 'Ramesh Gupta', 'Science', 'Nk Thomas', 'Science', 'Nk Thomas', 'Science', 'Nk Thomas', 'Science', 'Nk Thomas', 'Science', 'Nk Thomas', 'Science', 'Nk Thomas'),
(2, 'LKG', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'UKG', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '1ST', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '2ND', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '3RD', 'A', 'English', 'Neha soni', 'English', 'Neha soni', 'English', 'Neha soni', 'English', 'Neha soni', 'English', 'Neha soni', 'English', 'Neha soni', 'Hindi', 'Ramesh Gupta', 'Hindi', 'Ramesh Gupta', 'Hindi', 'Ramesh Gupta', 'Hindi', 'Ramesh Gupta', 'Hindi', 'Ramesh Gupta', 'Hindi', 'Neha soni', 'general science', 'vikash gupta', 'general science', 'vikash gupta', 'general science', 'vikash gupta', 'general science', 'vikash gupta', 'general science', 'vikash gupta', 'general science', 'Ramesh Gupta', 'computer', 'Nk Thomas', 'computer', 'Nk Thomas', 'computer', 'Nk Thomas', 'computer', 'Nk Thomas', 'computer', 'Nk Thomas', 'computer', 'Nk Thomas', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', 'sanskrit', 'Ramesh Gupta', 'sanskrit', 'Ramesh Gupta', 'sanskrit', 'Ramesh Gupta', 'sanskrit', 'Ramesh Gupta', 'sanskrit', 'Ramesh Gupta', 'sanskrit', 'Ramesh Gupta', 'mathmetics', 'Ravi Kumar', 'mathmetics', 'Ravi Kumar', 'mathmetics', 'Ravi Kumar', 'mathmetics', 'Ravi Kumar', 'mathmetics', 'Ravi Kumar', 'mathmetics', 'Ravi Kumar', 'drawing', 'Nk Thomas', 'drawing', 'Nk Thomas', 'drawing', 'Nk Thomas', 'drawing', 'Nk Thomas', 'drawing', 'Nk Thomas', 'drawing', 'Nk Thomas', 'games', 'Neha soni', 'games', 'Neha soni', 'games', 'Neha soni', 'games', 'Neha soni', 'games', 'Neha soni', 'games', 'Neha soni'),
(7, '4TH', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '5TH', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '6TH', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '7TH', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '8TH', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '9TH', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '10TH', 'A', 'Math', 'Ravi Kumar', 'Math', 'Ravi Kumar', 'Math', 'Ravi Kumar', 'Math', 'Ravi Kumar', 'Math', 'Ravi Kumar', 'Math', 'Ravi Kumar', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'Science', 'vikash gupta', 'Science', 'vikash gupta', 'Science', 'vikash gupta', 'Science', 'vikash gupta', 'Science', 'vikash gupta', 'Science', 'vikash gupta', 'Mathematics', 'Nk Thomas', 'Mathematics', 'Nk Thomas', 'Mathematics', 'Nk Thomas', 'Mathematics', 'Nk Thomas', 'Mathematics', 'Nk Thomas', 'Mathematics', 'Nk Thomas', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'Hindi', 'Ravi Kumar', 'GK ', 'Ramesh Gupta', 'GK ', 'Ramesh Gupta', 'GK ', 'Ramesh Gupta', 'GK ', 'Ramesh Gupta', 'GK ', 'Ramesh Gupta', 'GK ', 'Ramesh Gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Computer', 'vikash gupta', 'Social Science', 'Nk Thomas', 'Social Science', 'Nk Thomas', 'Social Science', 'Nk Thomas', 'Social Science', 'Nk Thomas', 'Social Science', 'Nk Thomas', 'Social Science', 'Nk Thomas'),
(14, 'NURSERY', 'B', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 'NURSERY', 'C', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'UKG', 'B', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'Maths', 'Nk Thomas', 'Maths', 'Nk Thomas', 'Maths', 'Nk Thomas', 'Maths', 'Nk Thomas', 'Maths', 'Nk Thomas', 'Maths', 'Nk Thomas', 'science', 'vikash gupta', 'science', 'vikash gupta', 'science', 'vikash gupta', 'science', 'vikash gupta', 'science', 'vikash gupta', 'science', 'vikash gupta', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', '------', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'hindi', 'Nk Thomas', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'English', 'Ramesh Gupta', 'Maths', 'vikash gupta', 'Maths', 'vikash gupta', 'Maths', 'vikash gupta', 'Maths', 'vikash gupta', 'Maths', 'vikash gupta', 'Maths', 'vikash gupta', 'science', 'Nk Thomas', 'science', 'Nk Thomas', 'science', 'Nk Thomas', 'science', 'Nk Thomas', 'science', 'Nk Thomas', 'science', 'Nk Thomas'),
(17, '11', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '10TH', 'B', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '12th', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_staff`
--

CREATE TABLE `complaint_staff` (
  `s_no` int(11) NOT NULL,
  `staff_complaint_type` varchar(50) NOT NULL,
  `student_roll_no` varchar(50) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `staff_complaint_date` varchar(50) NOT NULL,
  `staff_complain` varchar(50) NOT NULL,
  `staff_complaint_name` varchar(50) NOT NULL,
  `staff_complainter_contact_no` varchar(50) NOT NULL,
  `staff_complaint_suggestion` varchar(50) NOT NULL,
  `staff_complaint_seen_or_unseen` varchar(50) NOT NULL,
  `staff_complaint_reply` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_student`
--

CREATE TABLE `complaint_student` (
  `s_no` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_complaint_class` varchar(50) NOT NULL,
  `student_complaint_roll_no` varchar(50) NOT NULL,
  `student_complaint_date` varchar(50) NOT NULL,
  `student_complaint` varchar(50) NOT NULL,
  `student_complaint_photo` varchar(50) NOT NULL,
  `student_complaint_vidio` varchar(50) NOT NULL,
  `student_complaint_complainter_name` varchar(50) NOT NULL,
  `student_complaint_contact_no` varchar(50) NOT NULL,
  `student_complaint_remark` varchar(50) NOT NULL,
  `student_complaint_seen_or_unseen` varchar(50) NOT NULL,
  `student_complaint_teacher_reply` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_temporary`
--

CREATE TABLE `complaint_temporary` (
  `s_no` int(11) NOT NULL,
  `complaint_type` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `complaint` varchar(50) NOT NULL,
  `photo_or_vidio` varchar(50) NOT NULL,
  `complainter_name` varchar(50) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `seen_or_unseen` varchar(50) NOT NULL,
  `teacher_reply` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `s_no` int(200) NOT NULL,
  `emp_id` varchar(20) NOT NULL,
  `emp_rf_id_no` varchar(100) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_gender` varchar(50) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_father` varchar(50) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_mobile` varchar(50) NOT NULL,
  `emp_address` varchar(1000) NOT NULL,
  `emp_qualification` varchar(100) NOT NULL,
  `emp_photo` varchar(1000) NOT NULL,
  `emp_doj` date NOT NULL,
  `emp_categories` varchar(100) NOT NULL,
  `emp_class_preferred` varchar(100) NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_casual_leave` varchar(100) NOT NULL,
  `emp_pan_card_no` varchar(100) NOT NULL,
  `emp_bank_name` varchar(100) NOT NULL,
  `emp_account_no` varchar(1000) NOT NULL,
  `emp_ifsc_code` varchar(1000) NOT NULL,
  `emp_basic_salary` varchar(1000) NOT NULL,
  `emp_pf_number` varchar(1000) NOT NULL,
  `emp_subject_preferred` varchar(1000) NOT NULL,
  `emp_status` varchar(100) NOT NULL DEFAULT 'Active',
  `emp_status_change_date` date NOT NULL,
  `emp_uid_no` varchar(250) NOT NULL,
  `remarks` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`s_no`, `emp_id`, `emp_rf_id_no`, `emp_name`, `emp_gender`, `emp_dob`, `emp_father`, `emp_email`, `emp_mobile`, `emp_address`, `emp_qualification`, `emp_photo`, `emp_doj`, `emp_categories`, `emp_class_preferred`, `emp_designation`, `emp_casual_leave`, `emp_pan_card_no`, `emp_bank_name`, `emp_account_no`, `emp_ifsc_code`, `emp_basic_salary`, `emp_pf_number`, `emp_subject_preferred`, `emp_status`, `emp_status_change_date`, `emp_uid_no`, `remarks`) VALUES
(1, '101', '', 'Nk Thomas sir', 'Male', '1991-12-25', 'Sk Thomas', 'Thomas@yahoo.com', '9825632566', 'Kochi Ernakulam', 'Bsc Biology', 'ceab0274c0686895b8c92f16aeacfd86--boys-haircuts--haircuts-for-women.jpg', '2018-01-02', 'Teaching', '8th', 'Sr Lecturer', '12', 'PAN456746', 'Sbi', '985632565656', 'SBi528963', '25200', 'PF4655464', 'Science', 'Deleted', '0000-00-00', '8974567457', 'Its Well Knowledge In English'),
(2, '102', 'RF 1002', 'Ramesh Gupta', 'Male', '1992-02-01', 'Rahul Tripathi', 'rahul@mail.com', '9632569871', 'narela', 'phd', 'images (6).jpg', '2017-12-29', 'Teaching', '7th', 'Senior Lecture', '24', 'PIOYK3214J', 'Punjab National Bank', '4791223212112345', 'PUNB0497122', '10000', '1002', 'Math', 'Active', '0000-00-00', '532621546321', 'Ramesh Gupta Registration'),
(3, '103', '123456', 'vikash gupta', 'Male', '1996-03-15', 'mahesh chand gupta', 'abc@gmail.com', '9752144856', 'xxxxxx', 'BE', '', '2018-01-02', 'Teaching', '10', '', '5', '1322', 'sbi', '1332', '123', '20000', '1233', 'math', 'Deleted', '0000-00-00', '2222', 'teacher'),
(4, '104', '', 'Nk Thomas', 'Male', '1991-12-25', 'Sk Thomas', 'Thomas@yahoo.com', '9825632566', 'Kochi Ernakulam', 'Bsc Biology', 'ceab0274c0686895b8c92f16aeacfd86--boys-haircuts--haircuts-for-women.jpg', '2018-01-02', 'Teaching', '8th', 'Sr Lecturer', '12', 'PAN456746', 'Sbi', '985632565656', 'SBi528963', '25200', 'PF4655464', 'Science', 'Active', '0000-00-00', '8974567457', 'Its Well Knowledge In English'),
(5, '105', '', 'Ravi Kumar', 'Male', '0195-01-02', '', '', '+918269869375', 'Sabalgarh', '', '', '2018-01-02', 'Teaching', '1st', '', '20', '5494949479478', 'Sbi', '4791223212112345', 'Sbin012345', '10000', '584984', 'English', 'Deleted', '0000-00-00', '476229', ''),
(6, '106', '0003348073', 'Neha soni', 'Female', '1994-06-13', 'manoj soni', 'neha_soni@gmail.com', '9685741526', 'shrma ward civilline sagar', 'B. ed.', 'images (6).jpg', '2018-01-02', 'Teaching', '5 to 8th', 'middle class teacher', '12', 'ABHI4512639685', 'punjab National Bank', '6091001500009545', 'pnb 609100', '15000', '1236541', 'English Science Math', 'Active', '0000-00-00', '12365478965', 'class teacher of 6th class section A');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_generate`
--

CREATE TABLE `employee_salary_generate` (
  `s_no` int(100) NOT NULL,
  `emp_id` varchar(200) NOT NULL,
  `employee_name` varchar(200) NOT NULL,
  `employee_salary_date_from` varchar(200) NOT NULL,
  `employee_salary_date_to` varchar(200) NOT NULL,
  `employee_total_working_day` varchar(200) NOT NULL,
  `employee_total_incentive` varchar(200) NOT NULL,
  `employee_salary_generate_date` varchar(200) NOT NULL,
  `employee_total_pay` varchar(200) NOT NULL,
  `employee_deduct_pf` varchar(200) NOT NULL,
  `employee_pf_no` varchar(200) NOT NULL,
  `employee_pf_amount` varchar(200) NOT NULL,
  `employee_total_pay_after_pf` varchar(200) NOT NULL,
  `total_present` varchar(200) NOT NULL,
  `total_absent` varchar(200) NOT NULL,
  `total_leave` varchar(200) NOT NULL,
  `verify_total_leaves` varchar(200) NOT NULL,
  `leave_verification` varchar(200) NOT NULL,
  `employee_salary_status` varchar(200) NOT NULL,
  `employee_salary_change_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_salary_generate`
--

INSERT INTO `employee_salary_generate` (`s_no`, `emp_id`, `employee_name`, `employee_salary_date_from`, `employee_salary_date_to`, `employee_total_working_day`, `employee_total_incentive`, `employee_salary_generate_date`, `employee_total_pay`, `employee_deduct_pf`, `employee_pf_no`, `employee_pf_amount`, `employee_total_pay_after_pf`, `total_present`, `total_absent`, `total_leave`, `verify_total_leaves`, `leave_verification`, `employee_salary_status`, `employee_salary_change_date`) VALUES
(1, '101', 'Amresh Tiwari', '2017-12-29', '2017-12-29', '27', '0', '2017-12-29', '0', 'No', '1001', '', '0', '', '', '', '0', 'not_verify', 'Active', ''),
(2, '101', 'Amresh Tiwari', '2017-12-29', '2017-12-29', '20', '500', '2017-12-29', '500', 'Yes', '1001', '200', '300', '', '', '', '0', 'not_verify', 'Active', ''),
(3, '101', 'vikash gupta', '2018-01-02', '2018-01-30', '28', '0', '2018-01-02', '0', 'No', '1233', '', '0', '0', '0', '0', '0', 'not_verify', 'Active', ''),
(4, '101', 'vikash gupta', '2018-01-02', '2018-01-30', '28', '20000', '2018-01-02', '20000', 'No', '1233', '', '20000', '0', '0', '0', '0', 'not_verify', 'Active', ''),
(5, '106', 'Neha soni', '2018-01-02', '2018-01-02', '30', '1000', '2018-01-02', '1000', 'Yes', '1236541', '1500', '-500', '', '', '', '0', 'not_verify', 'Active', ''),
(6, '102', 'Ramesh Gupta', '2018-01-03', '2018-01-03', '30-01-2018', '02000', '2018-01-03', '2000', 'No', '1002', '', '2000', '', '', '', '0', 'verify', 'Active', ''),
(7, '102', 'Ramesh Gupta', '2018-01-03', '2018-01-03', '20', '0', '2018-01-03', '0', 'No', '1002', '', '0', '', '', '', '0', 'not_verify', 'Active', ''),
(8, '102', 'Ramesh Gupta', '2017-12-04', '2018-01-03', '30', '1200', '2018-01-04', '1533', 'No', '1002', '', '1533', '1', '0', '0', '0', 'not_verify', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_info`
--

CREATE TABLE `enquiry_info` (
  `s_no` int(250) NOT NULL,
  `enquiry_type` varchar(100) NOT NULL,
  `enquiry_date` varchar(50) NOT NULL,
  `enquiry_name` varchar(1000) NOT NULL,
  `enquiry_father_name` varchar(1000) NOT NULL,
  `enquiry_contact_no_1` varchar(1000) NOT NULL,
  `enquiry_contact_no_2` varchar(1000) NOT NULL,
  `enquiry_address` varchar(1000) NOT NULL,
  `enquiry_next_follow_up_date` varchar(50) NOT NULL,
  `enquiry_remark_1` varchar(1000) NOT NULL,
  `enquiry_remark_2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_info`
--

INSERT INTO `enquiry_info` (`s_no`, `enquiry_type`, `enquiry_date`, `enquiry_name`, `enquiry_father_name`, `enquiry_contact_no_1`, `enquiry_contact_no_2`, `enquiry_address`, `enquiry_next_follow_up_date`, `enquiry_remark_1`, `enquiry_remark_2`) VALUES
(1, 'for admission', '29-12-2017', 'Shailesh Sharma', 'Ram babu Sharma', '9632587412', '', 'Anand nagar', '31-12-2017', 'For admission', ''),
(2, 'for admission', '2018-01-02', 'vikash gupta', 'mahesh chand gupta', '9752144856', '', 'vaishali nagar', '05-01-2018', 'admission', ''),
(3, 'for admission', '2018-01-02', 'Atharv Sharma', 'Praneet Sharma', '9993006133', '9826852566', 'Vinayak Parisar E8 Bhopal', '25-02-2018', 'for admission', 'for admission'),
(4, 'for job', '2018-01-02', 'Aakash Rathore', 'gajendra singh Rathore', '85179635245', '8109562363', 'pipariya hosagabad ', '11-01-2018', 'urgent need job ', 'can work with account to'),
(5, 'for admission', '2018-01-03', 'Abhishek soni', 'Mahesh Prasad Soni', '8109236057', '9926685866', 'House_no 13 nanak ward khurai sagar M.p.', '04-01-2018', 'student wants to take admission in 4th class', 'student is interest in sports to');

-- --------------------------------------------------------

--
-- Table structure for table `event_certificate`
--

CREATE TABLE `event_certificate` (
  `s_no` int(100) NOT NULL,
  `event_student_name` varchar(200) NOT NULL,
  `event_type` varchar(200) NOT NULL,
  `event_organized_date` varchar(200) NOT NULL,
  `event_rank` varchar(200) NOT NULL,
  `event_student_roll_no` varchar(100) NOT NULL,
  `student_event_status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_certificate`
--

INSERT INTO `event_certificate` (`s_no`, `event_student_name`, `event_type`, `event_organized_date`, `event_rank`, `event_student_roll_no`, `student_event_status`) VALUES
(3, 'Amresh kumar', 'Dance', '07-12-2017', '4th', '2', 'Active'),
(4, 'Aryan Sharma', 'Singing', '24-01-2018', '2nd', '1', 'Active'),
(6, 'Vikash Gupta', 'Fancy Dress  &  Drama', '02-01-2018', '3rd', '2', 'Active'),
(7, 'mardul shrivastava', 'annual function', '04-01-2018', '1st', '2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `event_table`
--

CREATE TABLE `event_table` (
  `s_no` int(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_type` varchar(200) NOT NULL,
  `event_activity` varchar(200) NOT NULL,
  `event_date` varchar(200) NOT NULL,
  `event_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_table`
--

INSERT INTO `event_table` (`s_no`, `event_name`, `event_type`, `event_activity`, `event_date`, `event_address`) VALUES
(1, 'techomania', 'Anual Function', 'dance', '08-01-2018', 'school ground'),
(2, 'Dance Competition', 'Teacher Day', 'Competition', '05-11-2018', 'School Auditorium'),
(4, 'Annual meets', 'Anual Function', 'parents meet', '05-01-2018', 'satna'),
(5, 'Annual meets', 'Anual Function', 'teachers parents meet', '05-01-2018', 'satna');

-- --------------------------------------------------------

--
-- Table structure for table `examination_`
--

CREATE TABLE `examination_` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examination_1st`
--

CREATE TABLE `examination_1st` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_1st`
--

INSERT INTO `examination_1st` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '172203', '1ST', 'Vishakha Singh', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_2nd`
--

CREATE TABLE `examination_2nd` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_2nd`
--

INSERT INTO `examination_2nd` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '172307', '2ND', 'Madhu Yadav', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_3rd`
--

CREATE TABLE `examination_3rd` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_3rd`
--

INSERT INTO `examination_3rd` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '172407', '3RD', 'Sneha Sharma', 'A', '50', '17', '31', '', '', '', '', '', '', '', '', '', '50', '17', '40', '', '', '', '', '', '', '', '', '', '50', '17', '33', '', '', '', '', '', '', '', '', '', '50', '17', '45', '', '', '', '', '', '', '', '', '', '50', '17', '30', '', '', '', '', '', '', '', '', ''),
(2, '1824008', '3RD', 'mardul shrivastava', 'A', '50', '17', '36', '', '', '', '', '', '', '', '', '', '50', '17', '40', '', '', '', '', '', '', '', '', '', '50', '17', '48', '', '', '', '', '', '', '', '', '', '50', '17', '45', '', '', '', '', '', '', '', '', '', '50', '17', '42', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_4th`
--

CREATE TABLE `examination_4th` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_4th`
--

INSERT INTO `examination_4th` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '172506', '4TH', 'Aaisha Jain', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_5th`
--

CREATE TABLE `examination_5th` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_5th`
--

INSERT INTO `examination_5th` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '172607', '5TH', 'Arzoo Khatoon', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '100', '33', '65', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_6th`
--

CREATE TABLE `examination_6th` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_6th`
--

INSERT INTO `examination_6th` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '172701', '6TH', 'Vishal Kharat', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '1827002', '6TH', 'shivam', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '1827003', '6TH', 'pappu', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_7th`
--

CREATE TABLE `examination_7th` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_7th`
--

INSERT INTO `examination_7th` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '172801', '7TH', 'Amrita Kaur', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '1828002', '7TH', 'Somya nema', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_8th`
--

CREATE TABLE `examination_8th` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_8th`
--

INSERT INTO `examination_8th` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '172901', '8TH', 'Aman kapoor', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_9th`
--

CREATE TABLE `examination_9th` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_evs_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_evs_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_evs_marks` varchar(50) NOT NULL,
  `half_yearly_exam_evs_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_evs_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_evs_marks` varchar(50) NOT NULL,
  `pre_board_exam_evs_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_evs_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_evs_marks` varchar(50) NOT NULL,
  `annual_exam_evs_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_evs_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_evs_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_9th`
--

INSERT INTO `examination_9th` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_evs_maximum_marks`, `quarterly_exam_evs_minimum_marks`, `quarterly_exam_evs_marks`, `half_yearly_exam_evs_maximum_marks`, `half_yearly_exam_evs_minimum_marks`, `half_yearly_exam_evs_marks`, `pre_board_exam_evs_maximum_marks`, `pre_board_exam_evs_minimum_marks`, `pre_board_exam_evs_marks`, `annual_exam_evs_maximum_marks`, `annual_exam_evs_minimum_marks`, `annual_exam_evs_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '173001', '9TH', 'Ritesh Bhagmare', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_10th`
--

CREATE TABLE `examination_10th` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_science_marks` varchar(50) NOT NULL,
  `annual_exam_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_science_marks` varchar(50) NOT NULL,
  `quarterly_exam_evs_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_evs_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_evs_marks` varchar(50) NOT NULL,
  `half_yearly_exam_evs_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_evs_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_evs_marks` varchar(50) NOT NULL,
  `pre_board_exam_evs_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_evs_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_evs_marks` varchar(50) NOT NULL,
  `annual_exam_evs_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_evs_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_evs_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_social_science_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_social_science_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_social_science_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_10th`
--

INSERT INTO `examination_10th` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`, `quarterly_exam_science_maximum_marks`, `quarterly_exam_science_minimum_marks`, `quarterly_exam_science_marks`, `half_yearly_exam_science_maximum_marks`, `half_yearly_exam_science_minimum_marks`, `half_yearly_exam_science_marks`, `pre_board_exam_science_maximum_marks`, `pre_board_exam_science_minimum_marks`, `pre_board_exam_science_marks`, `annual_exam_science_maximum_marks`, `annual_exam_science_minimum_marks`, `annual_exam_science_marks`, `quarterly_exam_evs_maximum_marks`, `quarterly_exam_evs_minimum_marks`, `quarterly_exam_evs_marks`, `half_yearly_exam_evs_maximum_marks`, `half_yearly_exam_evs_minimum_marks`, `half_yearly_exam_evs_marks`, `pre_board_exam_evs_maximum_marks`, `pre_board_exam_evs_minimum_marks`, `pre_board_exam_evs_marks`, `annual_exam_evs_maximum_marks`, `annual_exam_evs_minimum_marks`, `annual_exam_evs_marks`, `quarterly_exam_social_science_maximum_marks`, `quarterly_exam_social_science_minimum_marks`, `quarterly_exam_social_science_marks`, `half_yearly_exam_social_science_maximum_marks`, `half_yearly_exam_social_science_minimum_marks`, `half_yearly_exam_social_science_marks`, `pre_board_exam_social_science_maximum_marks`, `pre_board_exam_social_science_minimum_marks`, `pre_board_exam_social_science_marks`, `annual_exam_social_science_maximum_marks`, `annual_exam_social_science_minimum_marks`, `annual_exam_social_science_marks`) VALUES
(1, '173101', '10TH', 'Mohan Khanna', 'A', '50', '17', '25', '', '', '', '', '', '', '100', '33', '85', '', '', '', '', '', '', '', '', '', '100', '33', '80', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '1831002', '10TH', 'Vikash Gupta', 'A', '50', '17', '42', '', '', '', '', '', '', '100', '33', '75', '', '', '', '', '', '', '', '', '', '100', '33', '80', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '1831003', '10TH', 'Vikash Gupta', 'A', '50', '17', '43', '', '', '', '', '', '', '100', '33', '80', '', '', '', '', '', '', '', '', '', '100', '33', '80', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_11`
--

CREATE TABLE `examination_11` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examination_12th`
--

CREATE TABLE `examination_12th` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examination_lkg`
--

CREATE TABLE `examination_lkg` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_lkg`
--

INSERT INTO `examination_lkg` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`) VALUES
(1, '172006', 'LKG', 'Vikram singh', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '172007', 'LKG', 'Sneha Raj', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '172008', 'LKG', 'vicky', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_nursery`
--

CREATE TABLE `examination_nursery` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_nursery`
--

INSERT INTO `examination_nursery` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`) VALUES
(1, '171904', 'NURSERY', 'Ramesh Verma', 'A', '200', '100', '78', '100', '33', '56', '', '', '', '', '', '', '70', '17', '40', '', '', '', '', '', '', '', '', '', '70', '17', '69', '', '', '', '', '', '', '', '', ''),
(2, '171905', 'NURSERY', 'Rakesh Chaubey', 'A', '200', '100', '49', '100', '33', '56', '', '', '', '', '', '', '70', '17', '50', '', '', '', '', '', '', '', '', '', '70', '17', '20', '', '', '', '', '', '', '', '', ''),
(3, '1819006', 'NURSERY', 'Aryan Sharma', 'A', '200', '100', '50', '100', '33', '5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '1819007', 'NURSERY', 'Ram ', 'A', '200', '100', '46', '100', '33', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '1819008', 'NURSERY', 'devendra agrawal', 'A', '200', '100', '60', '100', '33', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `examination_ukg`
--

CREATE TABLE `examination_ukg` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(255) NOT NULL,
  `student_class` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_section` varchar(255) NOT NULL,
  `quarterly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_hindi_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_hindi_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_hindi_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_english_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_english_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_english_marks` varchar(50) NOT NULL,
  `annual_exam_english_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_english_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_english_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_maximum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_minimum_marks` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_marks` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examination_ukg`
--

INSERT INTO `examination_ukg` (`s_no`, `student_roll_no`, `student_class`, `student_name`, `student_section`, `quarterly_exam_hindi_maximum_marks`, `quarterly_exam_hindi_minimum_marks`, `quarterly_exam_hindi_marks`, `half_yearly_exam_hindi_maximum_marks`, `half_yearly_exam_hindi_minimum_marks`, `half_yearly_exam_hindi_marks`, `pre_board_exam_hindi_maximum_marks`, `pre_board_exam_hindi_minimum_marks`, `pre_board_exam_hindi_marks`, `annual_exam_hindi_maximum_marks`, `annual_exam_hindi_minimum_marks`, `annual_exam_hindi_marks`, `quarterly_exam_english_maximum_marks`, `quarterly_exam_english_minimum_marks`, `quarterly_exam_english_marks`, `half_yearly_exam_english_maximum_marks`, `half_yearly_exam_english_minimum_marks`, `half_yearly_exam_english_marks`, `pre_board_exam_english_maximum_marks`, `pre_board_exam_english_minimum_marks`, `pre_board_exam_english_marks`, `annual_exam_english_maximum_marks`, `annual_exam_english_minimum_marks`, `annual_exam_english_marks`, `quarterly_exam_mathe_matics_maximum_marks`, `quarterly_exam_mathe_matics_minimum_marks`, `quarterly_exam_mathe_matics_marks`, `half_yearly_exam_mathe_matics_maximum_marks`, `half_yearly_exam_mathe_matics_minimum_marks`, `half_yearly_exam_mathe_matics_marks`, `pre_board_exam_mathe_matics_maximum_marks`, `pre_board_exam_mathe_matics_minimum_marks`, `pre_board_exam_mathe_matics_marks`, `annual_exam_mathe_matics_maximum_marks`, `annual_exam_mathe_matics_minimum_marks`, `annual_exam_mathe_matics_marks`) VALUES
(1, '172106', 'UKG', 'Samrat Yadav', 'A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fees_discount_types_structure`
--

CREATE TABLE `fees_discount_types_structure` (
  `s_no` int(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `sibling_discount_method` varchar(100) NOT NULL,
  `sibling_discount_amount` varchar(100) NOT NULL,
  `group_discount_method` varchar(100) NOT NULL,
  `group_discount_amount` varchar(100) NOT NULL,
  `teacher_discount_method` varchar(100) NOT NULL,
  `teacher_discount_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_discount_types_structure`
--

INSERT INTO `fees_discount_types_structure` (`s_no`, `class`, `sibling_discount_method`, `sibling_discount_amount`, `group_discount_method`, `group_discount_amount`, `teacher_discount_method`, `teacher_discount_amount`) VALUES
(1, 'NURSERY', 'Rs', '400', '%', '2', 'Rs', '500'),
(2, 'LKG', 'Rs', '300', '%', '2', 'Rs', '300'),
(3, 'UKG', 'Rs', '300', '%', '2', 'Rs', '300'),
(4, '1ST', 'Rs', '300', '%', '3', 'Rs', '300'),
(5, '2ND', 'Rs', '300', '%', '3', 'Rs', '300'),
(6, '3RD', 'Rs', '300', '%', '3', 'Rs', '300'),
(7, '4TH', 'Rs', '300', '%', '3', 'Rs', '300'),
(8, '5TH', 'Rs', '400', '%', '5', 'Rs', '400'),
(9, '6TH', 'Rs', '500', '%', '5', 'Rs', '500'),
(10, '7TH', 'Rs', '500', 'Rs', '5', 'Rs', '500'),
(11, '8TH', 'Rs', '500', '%', '5', 'Rs', '500'),
(12, '9TH', 'Rs', '500', '%', '5', 'Rs', '500'),
(13, '10TH', 'Rs', '600', '%', '6', 'Rs', '600'),
(14, '11', '%', '500', 'Rs', '500', 'Rs', '600'),
(15, '', '', '', '', '', '', ''),
(16, '12th', 'Rs', '600', '%', '600', '%', '650');

-- --------------------------------------------------------

--
-- Table structure for table `fees_fee_structure`
--

CREATE TABLE `fees_fee_structure` (
  `s_no` int(100) NOT NULL,
  `student_class` varchar(250) NOT NULL,
  `admission_fee_for_new_student` varchar(100) NOT NULL,
  `admission_fee_for_old_student` varchar(100) NOT NULL,
  `total_fee` varchar(100) NOT NULL DEFAULT '0',
  `student_tution_fee_per_year` varchar(100) NOT NULL,
  `student_tution_fee_mode_of_payment` varchar(100) NOT NULL,
  `student_tution_fee_no_of_installment` varchar(100) NOT NULL,
  `student_exam_fee_per_year` varchar(100) NOT NULL,
  `student_exam_fee_mode_of_payment` varchar(100) NOT NULL,
  `student_exam_fee_no_of_installment` varchar(100) NOT NULL,
  `student_bus_fee_per_year` varchar(100) NOT NULL,
  `student_bus_fee_mode_of_payment` varchar(100) NOT NULL,
  `student_bus_fee_no_of_installment` varchar(100) NOT NULL,
  `student_computer_fee_per_year` varchar(100) NOT NULL,
  `student_computer_fee_mode_of_payment` varchar(100) NOT NULL,
  `student_computer_fee_no_of_installment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_fee_structure`
--

INSERT INTO `fees_fee_structure` (`s_no`, `student_class`, `admission_fee_for_new_student`, `admission_fee_for_old_student`, `total_fee`, `student_tution_fee_per_year`, `student_tution_fee_mode_of_payment`, `student_tution_fee_no_of_installment`, `student_exam_fee_per_year`, `student_exam_fee_mode_of_payment`, `student_exam_fee_no_of_installment`, `student_bus_fee_per_year`, `student_bus_fee_mode_of_payment`, `student_bus_fee_no_of_installment`, `student_computer_fee_per_year`, `student_computer_fee_mode_of_payment`, `student_computer_fee_no_of_installment`) VALUES
(1, 'NURSERY', '1000', '0', '4900', '1000', 'installment', '5', '1200', 'In Per Year', '', '1200', 'In Per Month', '', '1500', 'In Per Month', ''),
(2, 'LKG', '2000', '1000', '4500', '1000', 'installment', '5', '500', 'installment', '', '2000', 'installment', '5', '1000', 'installment', ''),
(3, 'UKG', '3000', '2000', '4500', '1000', 'installment', '5', '500', 'installment', '5', '2000', 'installment', '5', '1000', 'installment', '5'),
(4, '1ST', '2500', '1500', '4500', '1000', 'installment', '5', '500', 'installment', '5', '2000', 'installment', '5', '1000', 'installment', '5'),
(5, '2ND', '2500', '1500', '5000', '1500', 'installment', '5', '500', 'installment', '5', '2000', 'installment', '5', '1000', 'installment', '5'),
(6, '3RD', '2500', '1500', '5000', '1500', 'installment', '5', '500', 'installment', '5', '2000', 'installment', '5', '1000', 'installment', '5'),
(7, '4TH', '2500', '1500', '3400', '1500', 'installment', '5', '500', 'installment', '5', '200', 'installment', '5', '1200', 'installment', '5'),
(8, '5TH', '2500', '1500', '5000', '1500', 'installment', '5', '500', 'installment', '5', '2000', 'installment', '5', '1000', 'installment', '5'),
(9, '6TH', '3000', '2000', '7000', '2000', 'installment', '5', '1000', 'installment', '5', '3000', 'installment', '5', '1000', 'installment', '5'),
(10, '7TH', '3500', '2500', '6000', '2000', 'installment', '5', '1000', 'installment', '3', '2000', 'installment', '5', '1000', 'installment', '3'),
(11, '8TH', '3500', '2500', '5500', '1500', 'installment', '5', '1000', 'installment', '3', '2000', 'installment', '5', '1000', 'installment', '3'),
(12, '9TH', '3500', '2500', '6000', '2000', 'installment', '5', '1000', 'installment', '3', '2000', 'installment', '5', '1000', 'installment', '3'),
(13, '10TH', '3500', '2500', '7000', '2000', 'In Per Year', '5', '1500', 'In Per Year', '5', '2000', 'In Per Year', '5', '1500', 'In Per Year', '5'),
(14, '11', '2500', '2000', '7300', '1500', 'In Per Year', '', '1400', 'In Per Year', '', '3000', 'In Per Year', '', '1400', 'In Per Year', ''),
(15, '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '12th', '2500', '2000', '7400', '1500', 'In Per Year', '', '1450', 'In Per Year', '', '3000', 'In Per Year', '', '1450', 'In Per Year', '');

-- --------------------------------------------------------

--
-- Table structure for table `fees_student_fee`
--

CREATE TABLE `fees_student_fee` (
  `s_no` int(100) NOT NULL,
  `fee_status` varchar(100) NOT NULL DEFAULT 'Deactive',
  `student_name` varchar(100) NOT NULL,
  `student_class` varchar(100) NOT NULL,
  `student_roll_no` varchar(100) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `balance_total` varchar(100) NOT NULL,
  `paid_total` varchar(100) NOT NULL,
  `student_admission_fee` varchar(100) NOT NULL,
  `student_admission_fee_balance` varchar(100) NOT NULL,
  `student_admission_fee_paid` varchar(100) NOT NULL,
  `student_tution_fee_per_year` varchar(100) NOT NULL,
  `student_tution_fee_discount_type` varchar(100) NOT NULL,
  `student_tution_fee_discount_method` varchar(100) NOT NULL,
  `student_tution_fee_discount_amount` varchar(100) NOT NULL,
  `student_tution_total_amount_after_discount` varchar(100) NOT NULL,
  `student_tution_fee_balance` varchar(100) NOT NULL,
  `student_tution_fee_paid_total` varchar(100) NOT NULL,
  `student_exam_fee_per_year` varchar(100) NOT NULL,
  `student_exam_fee_discount_type` varchar(100) NOT NULL,
  `student_exam_fee_discount_method` varchar(100) NOT NULL,
  `student_exam_fee_discount_amount` varchar(100) NOT NULL,
  `student_exam_total_amount_after_discount` varchar(100) NOT NULL,
  `student_exam_fee_balance` varchar(100) NOT NULL,
  `student_exam_fee_paid_total` varchar(100) NOT NULL,
  `student_bus_fee_per_year` varchar(100) NOT NULL,
  `student_bus_fee_discount_type` varchar(100) NOT NULL,
  `student_bus_fee_discount_method` varchar(100) NOT NULL,
  `student_bus_fee_discount_amount` varchar(100) NOT NULL,
  `student_bus_total_amount_after_discount` varchar(100) NOT NULL,
  `student_bus_fee_balance` varchar(100) NOT NULL,
  `student_bus_fee_paid_total` varchar(100) NOT NULL,
  `student_computer_fee_per_year` varchar(100) NOT NULL,
  `student_computer_fee_discount_type` varchar(100) NOT NULL,
  `student_computer_fee_discount_method` varchar(100) NOT NULL,
  `student_computer_fee_discount_amount` varchar(100) NOT NULL,
  `student_computer_total_amount_after_discount` varchar(100) NOT NULL,
  `student_computer_fee_balance` varchar(100) NOT NULL,
  `student_computer_fee_paid_total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_student_fee`
--

INSERT INTO `fees_student_fee` (`s_no`, `fee_status`, `student_name`, `student_class`, `student_roll_no`, `grand_total`, `balance_total`, `paid_total`, `student_admission_fee`, `student_admission_fee_balance`, `student_admission_fee_paid`, `student_tution_fee_per_year`, `student_tution_fee_discount_type`, `student_tution_fee_discount_method`, `student_tution_fee_discount_amount`, `student_tution_total_amount_after_discount`, `student_tution_fee_balance`, `student_tution_fee_paid_total`, `student_exam_fee_per_year`, `student_exam_fee_discount_type`, `student_exam_fee_discount_method`, `student_exam_fee_discount_amount`, `student_exam_total_amount_after_discount`, `student_exam_fee_balance`, `student_exam_fee_paid_total`, `student_bus_fee_per_year`, `student_bus_fee_discount_type`, `student_bus_fee_discount_method`, `student_bus_fee_discount_amount`, `student_bus_total_amount_after_discount`, `student_bus_fee_balance`, `student_bus_fee_paid_total`, `student_computer_fee_per_year`, `student_computer_fee_discount_type`, `student_computer_fee_discount_method`, `student_computer_fee_discount_amount`, `student_computer_total_amount_after_discount`, `student_computer_fee_balance`, `student_computer_fee_paid_total`) VALUES
(1, 'Active', 'Ramesh Verma', 'NURSERY', '171904', '6600                        ', '540', '2060', '1000      ', '200', '50', '1000', 'Sibling', 'Rs', '200', '800', '0', '200', '500', 'Sibling', 'Rs', '100', '400', '10', '150', '5000', 'Sibling', 'Rs', '1000', '4000', '300', '1500', '500', 'Sibling', 'Rs', '100', '400', '30', '160'),
(2, 'Active', 'Vikram singh', 'LKG', '172006', '2600      ', '-4000', '6600', '200     ', '0', '200', '1000', 'Sibling', 'Rs', '200', '800', '-1000', '1800', '500', 'Sibling', 'Rs', '100', '400', '-1000', '1400', '1000', 'Sibling', 'Rs', '200', '800', '-1000', '1800', '500', 'Sibling', 'Rs', '100', '400', '-1000', '1400'),
(3, 'Active', 'Samrat Yadav', 'UKG', '172106', '3780 ', '3780', '', '200 ', '200', '', '1000', 'Sibling', 'Rs', '300', '700', '700', '', '500', 'Sibling', 'Rs', '300', '200', '200', '', '2000', 'Sibling', 'Rs', '300', '1700', '1700', '', '1000', 'Group', '%', '2', '980', '980', ''),
(4, 'Active', 'Vishakha Singh', '1ST', '172203', '3500  ', '2400', '1100', '200 ', '0', '200', '1000', 'Sibling', 'Rs', '300', '700', '600', '100', '500', 'Sibling', 'Rs', '300', '200', '0', '200', '2000', 'Sibling', 'Rs', '300', '1700', '1200', '500', '1000', 'Sibling', 'Rs', '300', '700', '600', '100'),
(5, 'Active', 'Madhu Yadav', '2ND', '172307', '4100 ', '4100', '', '300 ', '300', '', '1500', 'Sibling', 'Rs', '300', '1200', '1200', '', '500', 'Sibling', 'Rs', '300', '200', '200', '', '2000', 'Sibling', 'Rs', '300', '1700', '1700', '', '1000', 'Sibling', 'Rs', '300', '700', '700', ''),
(6, 'Active', 'Sneha Sharma', '3RD', '172407', '4000  ', '4000', '', '200  ', '200', '', '1500', 'Sibling', 'Rs', '300', '1200', '1200', '', '500', 'Sibling', 'Rs', '300', '200', '200', '', '2000', 'Sibling', 'Rs', '300', '1700', '1700', '', '1000', 'Sibling', 'Rs', '300', '700', '700', ''),
(7, 'Deactive', 'Aaisha Jain', '4TH', '172506', '', '', '', '500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'Active', 'Arzoo Khatoon', '5TH', '172607', '3700 ', '3700', '', '300 ', '300', '', '1500', 'Sibling', 'Rs', '400', '1100', '1100', '', '500', 'Sibling', 'Rs', '400', '100', '100', '', '2000', 'Sibling', 'Rs', '400', '1600', '1600', '', '1000', 'Sibling', 'Rs', '400', '600', '600', ''),
(9, 'Active', 'Vishal Kharat', '6TH', '172701', '5100  ', '5100', '', '100  ', '100', '', '2000', 'Sibling', 'Rs', '500', '1500', '1500', '', '1000', 'Sibling', 'Rs', '500', '500', '500', '', '3000', 'Sibling', 'Rs', '500', '2500', '2500', '', '1000', 'Sibling', 'Rs', '500', '500', '500', ''),
(10, 'Active', 'Amrita Kaur', '7TH', '172801', '4200  ', '4200', '', '200  ', '200', '', '2000', 'Sibling', 'Rs', '500', '1500', '1500', '', '1000', 'Sibling', 'Rs', '500', '500', '500', '', '2000', 'Sibling', 'Rs', '500', '1500', '1500', '', '1000', 'Sibling', 'Rs', '500', '500', '500', ''),
(11, 'Active', 'Aman kapoor', '8TH', '172901', '3900  ', '3900', '', '400  ', '400', '', '1500', 'Sibling', 'Rs', '500', '1000', '1000', '', '1000', 'Sibling', 'Rs', '500', '500', '500', '', '2000', 'Sibling', 'Rs', '500', '1500', '1500', '', '1000', 'Sibling', 'Rs', '500', '500', '500', ''),
(12, 'Active', 'Ritesh Bhagmare', '9TH', '173001', '4500    ', '4500', '', '500    ', '500', '', '2000', 'Sibling', 'Rs', '500', '1500', '1500', '', '1000', 'Sibling', 'Rs', '500', '500', '500', '', '2000', 'Sibling', 'Rs', '500', '1500', '1500', '', '1000', 'Sibling', 'Rs', '500', '500', '500', ''),
(13, 'Active', 'Mohan Khanna', '10TH', '173101', '7500  ', '7500', '', '700  ', '700', '', '5000', 'Sibling', 'Rs', '500', '4500', '4500', '', '1000', 'Sibling', 'Rs', '100', '900', '900', '', '1000', 'Sibling', 'Rs', '100', '900', '900', '', '700', 'Sibling', 'Rs', '200', '500', '500', ''),
(14, 'Active', 'Rakesh Chaubey', 'NURSERY', '171905', '4300  ', '4300', '', '1000  ', '1000', '', '1000', 'Sibling', 'Rs', '400', '600', '600', '', '1200', 'Sibling', 'Rs', '400', '800', '800', '', '1200', 'Sibling', 'Rs', '400', '800', '800', '', '1500', 'Sibling', 'Rs', '400', '1100', '1100', ''),
(15, 'Active', 'Sneha Raj', 'LKG', '172007', '5300     ', '5300', '', '2000     ', '2000', '', '1000', 'Sibling', 'Rs', '300', '700', '700', '', '500', 'Sibling', 'Rs', '300', '200', '200', '', '2000', 'Sibling', 'Rs', '300', '1700', '1700', '', '1000', 'Sibling', 'Rs', '300', '700', '700', ''),
(16, 'Active', 'Vikash Gupta', '10TH', '1831002', '10500    ', '10500', '', '3500    ', '3500', '', '2000', 'None', '%', '', '2000', '2000', '', '1500', 'None', '%', '0', '1500', '1500', '', '2000', 'None', '%', '0', '2000', '2000', '', '1500', 'None', '%', '0', '1500', '1500', ''),
(17, 'Active', 'Vikash Gupta', '10TH', '1831003', '8610    ', '3110', '5500', '3500     ', '1000', '2500', '2000', 'Sibling', 'Rs', '600', '1400', '400', '1000', '1500', 'Sibling', 'Rs', '600', '900', '400', '500', '2000', 'Sibling', 'Rs', '600', '1400', '400', '1000', '1500', 'Group', '%', '6', '1410', '910', '500'),
(18, 'Active', 'Aryan Sharma', 'NURSERY', '1819006', '0    ', '-4000', '4000', '0  ', '0', '0', '1000', 'None', '%', '0', '1000', '0', '1000', '1200', 'None', '%', '0', '1200', '200', '1000', '1200', 'None', '%', '0', '1200', '200', '1000', '1500', 'None', '%', '0', '1500', '500', '1000'),
(19, 'Active', 'mardul shrivastava', '3RD', '1824008', '7250        ', '0', '7250', '2500       ', '0', '2500', '1500', 'None', '%', '0', '1500', '0', '1500', '500', 'Group', '%', '10', '450', '0', '450', '2000', 'Group', '%', '10', '1800', '0', '1800', '1000', 'None', '%', '0', '1000', '0', '1000'),
(20, 'Active', 'Ram ', 'NURSERY', '1819007', '0 ', '0', '', '1000 ', '1000', '', '1000', 'None', '%', '0', '1000', '1000', '', '1200', 'None', '%', '0', '1200', '1200', '', '1200', 'None', '%', '0', '1200', '1200', '', '1500', 'None', '%', '0', '1500', '1500', ''),
(21, 'Active', 'devendra agrawal', 'NURSERY', '1819008', '0 ', '0', '', '1000 ', '1000', '', '1000', 'None', '%', '0', '1000', '1000', '', '1200', 'None', '%', '0', '1200', '1200', '', '1200', 'None', '%', '0', '1200', '1200', '', '1500', 'None', '%', '0', '1500', '1500', ''),
(22, 'Active', 'shivam', '6TH', '1827002', '10000  ', '10000', '', '3000  ', '3000', '', '2000', 'Sibling', 'Rs', '500', '1500', '1500', '', '5000', 'Sibling', 'Rs', '500', '4500', '4500', '', '00', 'None', '%', '0', '00', '0', '', '1000', 'None', '%', '0', '1000', '1000', ''),
(23, 'Deactive', 'pappu', '6TH', '1827003', '', '', '', '3000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'Active', 'Somya nema', '7TH', '1828002', '9495         ', '4500', '4995', '3500     ', '2700', '800', '2000', 'Group', 'Rs', '5', '1995', '700', '1295', '1000', 'None', '%', '0', '1000', '200', '800', '2000', 'None', '%', '0', '2000', '700', '1300', '1000', 'None', '%', '0', '1000', '200', '800');

-- --------------------------------------------------------

--
-- Table structure for table `fees_student_fee_add`
--

CREATE TABLE `fees_student_fee_add` (
  `s_no` int(100) NOT NULL,
  `fee_status` varchar(100) NOT NULL DEFAULT 'Active',
  `student_name` varchar(100) NOT NULL,
  `student_father_name` varchar(100) NOT NULL,
  `student_class` varchar(100) NOT NULL,
  `student_class_section` varchar(50) NOT NULL,
  `student_roll_no` varchar(100) NOT NULL,
  `fee_submission_date` varchar(50) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `balance_total` varchar(100) NOT NULL,
  `paid_total` varchar(100) NOT NULL,
  `student_admission_fee` varchar(100) NOT NULL,
  `student_admission_fee_balance` varchar(50) NOT NULL,
  `student_admission_fee_paid` varchar(50) NOT NULL,
  `student_tution_total_amount_after_discount` varchar(100) NOT NULL,
  `student_tution_fee_balance` varchar(100) NOT NULL,
  `student_tution_fee_paid_total` varchar(100) NOT NULL,
  `student_exam_total_amount_after_discount` varchar(100) NOT NULL,
  `student_exam_fee_balance` varchar(100) NOT NULL,
  `student_exam_fee_paid_total` varchar(100) NOT NULL,
  `student_bus_total_amount_after_discount` varchar(100) NOT NULL,
  `student_bus_fee_balance` varchar(100) NOT NULL,
  `student_bus_fee_paid_total` varchar(100) NOT NULL,
  `student_computer_total_amount_after_discount` varchar(100) NOT NULL,
  `student_computer_fee_balance` varchar(100) NOT NULL,
  `student_computer_fee_paid_total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_student_fee_add`
--

INSERT INTO `fees_student_fee_add` (`s_no`, `fee_status`, `student_name`, `student_father_name`, `student_class`, `student_class_section`, `student_roll_no`, `fee_submission_date`, `grand_total`, `balance_total`, `paid_total`, `student_admission_fee`, `student_admission_fee_balance`, `student_admission_fee_paid`, `student_tution_total_amount_after_discount`, `student_tution_fee_balance`, `student_tution_fee_paid_total`, `student_exam_total_amount_after_discount`, `student_exam_fee_balance`, `student_exam_fee_paid_total`, `student_bus_total_amount_after_discount`, `student_bus_fee_balance`, `student_bus_fee_paid_total`, `student_computer_total_amount_after_discount`, `student_computer_fee_balance`, `student_computer_fee_paid_total`) VALUES
(1, 'Active', 'Ramesh Verma', 'Raman verma', 'NURSERY', 'A', '171904', '2017-12-29', '6600    ', '5000', '1600', '1000    ', '800', '200', '800', '600', '200', '400', '300', '100', '4000', '3000', '1000', '400', '300', '100'),
(2, 'Active', 'Ramesh Verma', 'Raman verma', 'NURSERY', 'A', '171904', '2017-12-29', '6600     ', '3400', '1600', '1000    ', '700', '100', '800', '400', '200', '400', '100', '200', '4000', '2000', '1000', '400', '200', '100'),
(3, 'Active', 'Ramesh Verma', 'Raman verma', 'NURSERY', 'A', '171904', '2017-12-29', '6600      ', '1600', '1800', '1000    ', '0', '700', '800', '0', '400', '400', '0', '100', '4000', '1500', '500', '400', '100', '100'),
(4, 'Active', 'Ramesh Verma', 'Raman verma', 'NURSERY', 'A', '171904', '2017-12-29', '6600       ', '710', '890', '1000    ', '0', '', '800', '0', '', '400', '0', '', '4000', '610', '890', '400', '100', ''),
(5, 'Active', 'Vikash Gupta', 'Mahesh Chand Gupta', '10TH', 'A', '1831003', '2018-01-02', '0 ', '-5000', '5000', '3500', '2500', '1000', '2000', '1000', '1000', '1500', '500', '1000', '2000', '1000', '1000', '1500', '500', '1000'),
(6, 'Active', 'Vikash Gupta', 'Mahesh Chand Gupta', '10TH', 'A', '1831003', '2018-01-02', '0  ', '-10500', '5500', '3500', '0', '2500', '2000', '0', '1000', '1500', '0', '500', '2000', '0', '1000', '1500', '0', '500'),
(7, 'Active', 'Aryan Sharma', 'Rahul Sharma', 'NURSERY', 'A', '1819006', '2018-01-02', '0  ', '-2000', '2000', '0 ', '0', '', '1000', '500', '500', '1200', '700', '500', '1200', '700', '500', '1500', '1000', '500'),
(8, 'Active', 'Aryan Sharma', 'Rahul Sharma', 'NURSERY', 'A', '1819006', '2018-01-02', '0   ', '-4000', '2000', '0 ', '0', '', '1000', '0', '500', '1200', '200', '500', '1200', '200', '500', '1500', '500', '500'),
(9, 'Active', 'Vikram singh', 'Amresh Singh', 'LKG', 'A', '172006', '2018-01-02', '2600     ', '0', '2600', '200    ', '0', '200', '800', '0', '800', '400', '0', '400', '800', '0', '800', '400', '0', '400'),
(10, 'Active', 'mardul shrivastava', 'sanjay shrivastava', '3RD', 'A', '1824008', '2018-01-02', '7250   ', '0', '7250', '2500  ', '0', '2500', '1500', '0', '1500', '450', '0', '450', '1800', '0', '1800', '1000', '0', '1000'),
(11, 'Active', 'Ramesh Raza', 'Raman verma', 'NURSERY', 'A', '171904', '2018-01-03', '6600         ', '5110', '600', '1000     ', '1000', '', '800', '400', '400', '400', '200', '200', '4000', '3110', '', '400', '400', ''),
(12, 'Active', 'Ramesh Raza', 'Raman verma', 'NURSERY', 'A', '171904', '2018-01-03', '6600          ', '3510', '1600', '1000     ', '1000', '', '800', '0', '400', '400', '0', '200', '4000', '2110', '1000', '400', '400', ''),
(13, 'Active', 'Ramesh Raza', 'Raman verma', 'NURSERY', 'A', '171904', '2018-01-03', '6600           ', '3310', '200', '1000     ', '1000', '', '800', '0', '', '400', '0', '', '4000', '2010', '100', '400', '300', '100'),
(14, 'Active', 'Ramesh Raza', 'Raman verma', 'NURSERY', 'A', '171904', '2018-01-03', '6600            ', '3060', '250', '1000     ', '1000', '', '800', '0', '', '400', '0', '', '4000', '1810', '200', '400', '250', '50'),
(15, 'Active', 'Ramesh Raza', 'Raman verma', 'NURSERY', 'A', '171904', '2018-01-03', '6600             ', '2900', '160', '1000     ', '1000', '', '800', '0', '', '400', '0', '', '4000', '1700', '110', '400', '200', '50'),
(16, 'Active', 'Ramesh Raza', 'Raman verma', 'NURSERY', 'A', '171904', '2018-01-03', '6600              ', '1800', '1100', '1000     ', '500', '500', '800', '0', '0', '400', '0', '', '4000', '1200', '500', '400', '100', '100'),
(17, 'Active', 'Ramesh Raza', 'Raman verma', 'NURSERY', 'A', '171904', '2018-01-04', '6600               ', '1600', '200', '1000     ', '500', '', '800', '0', '', '400', '0', '', '4000', '1000', '200', '400', '100', ''),
(18, 'Active', 'Ramesh Raza', 'Raman verma', 'NURSERY', 'A', '171904', '2018-01-04', '6600                ', '1480', '120', '1000     ', '500', '', '800', '0', '', '400', '0', '', '4000', '900', '100', '400', '80', '20'),
(19, 'Active', 'Vishakha Singh', 'Bindu Singh', '1ST', 'A', '172203', '2018-01-04', '3500 ', '2400', '1100', '200', '0', '200', '700', '600', '100', '200', '0', '200', '1700', '1200', '500', '700', '600', '100'),
(20, 'Active', 'Raja mishra', 'Rammilan mishra', 'NURSERY', 'A', '171904', '2018-01-04', '6600                  ', '4680', '500', '1000      ', '500', '', '800', '400', '400', '400', '300', '100', '4000', '3200', '', '400', '280', ''),
(21, 'Active', 'Raja mishra', 'Rammilan mishra', 'NURSERY', 'A', '171904', '2018-01-04', '6600                   ', '2340', '2340', '1000      ', '250', '250', '800', '200', '200', '400', '150', '150', '4000', '1600', '1600', '400', '140', '140'),
(22, 'Active', 'Raja mishra', 'Rammilan mishra', 'NURSERY', 'A', '171904', '2018-01-04', '6600                    ', '1130', '1210', '1000      ', '200', '50', '800', '0', '200', '400', '30', '120', '4000', '800', '800', '400', '100', '40'),
(23, 'Active', 'Raja mishra', 'Rammilan mishra', 'NURSERY', 'A', '171904', '2018-01-04', '6600                     ', '1030', '100', '1000      ', '200', '', '800', '0', '', '400', '30', '', '4000', '700', '100', '400', '100', ''),
(24, 'Active', 'Raja mishra', 'Rammilan mishra', 'NURSERY', 'A', '171904', '2018-01-04', '6600                      ', '770', '260', '1000      ', '200', '', '800', '0', '', '400', '20', '10', '4000', '500', '200', '400', '50', '50'),
(25, 'Active', 'Raja mishra', 'Rammilan mishra', 'NURSERY', 'A', '171904', '2018-01-04', '6600                      ', '770', '260', '1000      ', '200', '', '800', '0', '', '400', '20', '10', '4000', '500', '200', '400', '50', '50'),
(26, 'Active', 'Raja mishra', 'Rammilan mishra', 'NURSERY', 'A', '171904', '2018-01-04', '6600                       ', '655', '115', '1000      ', '200', '', '800', '0', '', '400', '15', '5', '4000', '400', '100', '400', '40', '10'),
(27, 'Active', 'Raja mishra', 'Rammilan mishra', 'NURSERY', 'A', '171904', '2018-01-04', '6600                        ', '540', '115', '1000      ', '200', '', '800', '0', '', '400', '10', '5', '4000', '300', '100', '400', '30', '10'),
(28, 'Active', 'Somya nema', 'Suresh kumar nema', '7TH', 'A', '1828002', '2018-01-05', '9495    ', '6000', '3495', '3500   ', '3000', '500', '1995', '1000', '995', '1000', '500', '500', '2000', '1000', '1000', '1000', '500', '500'),
(29, 'Active', 'Somya nema', 'Suresh kumar nema', '7TH', 'A', '1828002', '2018-01-05', '9495     ', '5500', '500', '3500   ', '2900', '100', '1995', '900', '100', '1000', '400', '100', '2000', '900', '100', '1000', '400', '100'),
(30, 'Active', 'Somya nema', 'Suresh kumar nema', '7TH', 'A', '1828002', '2018-01-05', '9495      ', '5000', '500', '3500   ', '2800', '100', '1995', '800', '100', '1000', '300', '100', '2000', '800', '100', '1000', '300', '100'),
(31, 'Active', 'Somya nema', 'Suresh kumar nema', '7TH', 'A', '1828002', '2018-01-05', '9495         ', '4500', '500', '3500     ', '2700', '100', '1995', '700', '100', '1000', '200', '100', '2000', '700', '100', '1000', '200', '100');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `s_no` int(22) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `upload_time` varchar(100) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `view_permission` varchar(10) NOT NULL DEFAULT 'All'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`s_no`, `image_name`, `upload_time`, `gallery_name`, `view_permission`) VALUES
(20, 'download (2).jpg', '2017-12-29 07:55:24', 'Animal pic', 'All'),
(21, 'download (3).jpg', '2017-12-29 07:55:24', 'Animal pic', 'All'),
(22, 'images (1).jpg', '2017-12-29 07:55:25', 'Animal pic', 'All'),
(23, 'images (2).jpg', '2017-12-29 07:55:25', 'Animal pic', 'All'),
(24, 'images (3).jpg', '2017-12-29 07:55:26', 'Animal pic', 'All'),
(25, 'images (5).jpg', '2017-12-29 07:55:26', 'Animal pic', 'All'),
(26, 'images (7).jpg', '2017-12-29 07:55:27', 'Animal pic', 'All'),
(27, 'download (3).jpg', '2017-12-29 07:57:21', 'Enviroment Pic', 'All'),
(28, 'download.jpg', '2017-12-29 07:57:21', 'Enviroment Pic', 'All'),
(29, 'images (1).jpg', '2017-12-29 07:57:23', 'Enviroment Pic', 'All'),
(30, 'images (4).jpg', '2017-12-29 07:57:23', 'Enviroment Pic', 'All'),
(31, 'images (5).jpg', '2017-12-29 07:57:24', 'Enviroment Pic', 'All'),
(32, 'images (6).jpg', '2017-12-29 07:57:24', 'Enviroment Pic', 'All');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_manage`
--

CREATE TABLE `holiday_manage` (
  `s_no` int(100) NOT NULL,
  `holiday_name` varchar(100) NOT NULL,
  `holiday_date` varchar(100) NOT NULL,
  `holiday_day` varchar(100) NOT NULL,
  `holiday_year` varchar(100) NOT NULL,
  `holiday_description` varchar(100) NOT NULL,
  `extra1` varchar(100) NOT NULL,
  `extra2` varchar(100) NOT NULL,
  `extra3` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday_manage`
--

INSERT INTO `holiday_manage` (`s_no`, `holiday_name`, `holiday_date`, `holiday_day`, `holiday_year`, `holiday_description`, `extra1`, `extra2`, `extra3`) VALUES
(1, 'Goa Trip', '26-01-2018', 'Friday', '2018', 'All School members have to  come for picnic', '', '', 0),
(4, 'Makar sharanti Holiday', '13-01-2018', 'Saturday', '2018', 'one day holiday decided due to festival', '', '', 0),
(5, 'national festival', '26-01-2016', 'Tuesday', '2016', 'Republic day', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `homework_student`
--

CREATE TABLE `homework_student` (
  `s_no` int(11) NOT NULL,
  `homework_class` varchar(50) NOT NULL,
  `homework_section` varchar(100) NOT NULL,
  `homework` varchar(2000) NOT NULL,
  `homework_date` varchar(50) NOT NULL,
  `homework_remark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homework_student`
--

INSERT INTO `homework_student` (`s_no`, `homework_class`, `homework_section`, `homework`, `homework_date`, `homework_remark`) VALUES
(2, 'NURSERY', 'A', '<p>1.Google News is a free news aggregator provided and operated by Google, selecting news from thousands of news websites</p>\r\n', '30-12-2017', 'homework for tommorrow'),
(3, '10TH', 'A', '<p>2.Operated by Google, selecting news from thousands of news websites</p>\r\n', '30-12-2017', 'homework for tommorrow'),
(4, 'NURSERY', 'A', '<p>1.Environment&nbsp;Project&nbsp;</p>\r\n\r\n<p>2.Learn Hindi</p>\r\n', '02-01-2018', 'Tommarow'),
(5, '2ND', 'A', '<p>write table 11 to 20</p>\r\n', '02-01-2018', 'maths home work'),
(6, '5TH', 'A', '<p>write all the formula of profit and loss in your&nbsp;</p>\r\n\r\n<p>&nbsp;copy&nbsp;</p>\r\n', '02-01-2018', 'copy will be submitted tommrow');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_add_room`
--

CREATE TABLE `hostel_add_room` (
  `s_no` int(200) NOT NULL,
  `hostel_name` varchar(100) NOT NULL,
  `room_number` varchar(100) NOT NULL,
  `room_bed_type` varchar(100) NOT NULL,
  `room_facility` varchar(100) NOT NULL,
  `room_attach_washroom` varchar(100) NOT NULL,
  `room_charge_per_student` varchar(100) NOT NULL,
  `fill` varchar(200) NOT NULL,
  `room_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_add_room`
--

INSERT INTO `hostel_add_room` (`s_no`, `hostel_name`, `room_number`, `room_bed_type`, `room_facility`, `room_attach_washroom`, `room_charge_per_student`, `fill`, `room_status`) VALUES
(1, 'Kalam Hostel', '101', '4', 'NonAc', 'Yes', '500', '4', 'Active'),
(2, 'Royal boys hostel', '1110', '1', 'Cooler', 'Yes', '2500', '1', 'Active'),
(3, 'Royal boys hostel', '1010', '2', 'Cooler', 'Yes', '2000', '2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_fee_details`
--

CREATE TABLE `hostel_fee_details` (
  `s_no` int(200) NOT NULL,
  `hostel_student_id` varchar(100) NOT NULL,
  `roll_number` varchar(100) NOT NULL,
  `hostel_student_name` varchar(100) NOT NULL,
  `hostel_charge_balance` varchar(100) NOT NULL,
  `pay_hostel_charge` varchar(100) NOT NULL,
  `hostel_charge_remarks` varchar(1000) NOT NULL,
  `hostel_room_charge_balance` varchar(100) NOT NULL,
  `pay_hostel_room_charge` varchar(100) NOT NULL,
  `hostel_room_charge_remarks` varchar(1000) NOT NULL,
  `mess_fee_balance` varchar(100) NOT NULL,
  `pay_mess_fee` varchar(100) NOT NULL,
  `mess_fee_remarks` varchar(1000) NOT NULL,
  `laundry_charge_balance` varchar(100) NOT NULL,
  `pay_laundry_charge` varchar(100) NOT NULL,
  `laundry_charge_remarks` varchar(1000) NOT NULL,
  `caution_money_balance` varchar(100) NOT NULL,
  `pay_caution_money` varchar(100) NOT NULL,
  `caution_money_remarks` varchar(1000) NOT NULL,
  `pay_date` varchar(100) NOT NULL,
  `month_pay` varchar(100) NOT NULL,
  `fee_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_fee_details`
--

INSERT INTO `hostel_fee_details` (`s_no`, `hostel_student_id`, `roll_number`, `hostel_student_name`, `hostel_charge_balance`, `pay_hostel_charge`, `hostel_charge_remarks`, `hostel_room_charge_balance`, `pay_hostel_room_charge`, `hostel_room_charge_remarks`, `mess_fee_balance`, `pay_mess_fee`, `mess_fee_remarks`, `laundry_charge_balance`, `pay_laundry_charge`, `laundry_charge_remarks`, `caution_money_balance`, `pay_caution_money`, `caution_money_remarks`, `pay_date`, `month_pay`, `fee_status`) VALUES
(1, '_2', '171904', 'Raja mishra', '6700', '2100', 'due', '2500', '500', 'single room', '2000', '500', 'due', '200', '100', 'due', '2000', '1000', 'due', '04-01-2018', 'January', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_info`
--

CREATE TABLE `hostel_info` (
  `s_no` int(200) NOT NULL,
  `hostel_name` varchar(100) NOT NULL,
  `hostel_type` varchar(100) NOT NULL,
  `hostel_number_of_room` varchar(100) NOT NULL,
  `hostel_total_capacity` varchar(100) NOT NULL,
  `hostel_facility` varchar(100) NOT NULL,
  `hostel_laundry` varchar(100) NOT NULL,
  `hostel_mess` varchar(100) NOT NULL,
  `hostel_warden_name` varchar(100) NOT NULL,
  `hostel_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_info`
--

INSERT INTO `hostel_info` (`s_no`, `hostel_name`, `hostel_type`, `hostel_number_of_room`, `hostel_total_capacity`, `hostel_facility`, `hostel_laundry`, `hostel_mess`, `hostel_warden_name`, `hostel_status`) VALUES
(1, 'Kalam Hostel', 'Both', '10', '50', 'AC&NonAc', 'Yes', 'Yes', '', 'Active'),
(2, 'Royal boys hostel', 'Boys', '50', '120', 'Cooler', 'Yes', 'Yes', 'Jaspal singh', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_leave`
--

CREATE TABLE `hostel_leave` (
  `s_no` int(200) NOT NULL,
  `hostel_student_id` varchar(100) NOT NULL,
  `roll_number` varchar(100) NOT NULL,
  `hostel_student_name` varchar(100) NOT NULL,
  `room_number` varchar(100) NOT NULL,
  `caution_due` varchar(100) NOT NULL,
  `laundry_due` varchar(100) NOT NULL,
  `mess_due` varchar(100) NOT NULL,
  `room_due` varchar(100) NOT NULL,
  `total_due` varchar(100) NOT NULL,
  `leave_date` varchar(100) NOT NULL,
  `leave_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_mess_daily_purchase`
--

CREATE TABLE `hostel_mess_daily_purchase` (
  `s_no` int(10) NOT NULL,
  `item_description` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `hostel_mess_status` varchar(100) NOT NULL,
  `date_purchase` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_mess_daily_purchase`
--

INSERT INTO `hostel_mess_daily_purchase` (`s_no`, `item_description`, `quantity`, `rate`, `hostel_mess_status`, `date_purchase`) VALUES
(1, 'onion ', '50kg', '50', 'Active', '0000-00-00'),
(2, 'potato', '50kg', '10', 'Active', '0000-00-00'),
(3, 'tommato', '50kg', '20', 'Active', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_mess_menu`
--

CREATE TABLE `hostel_mess_menu` (
  `s_no` int(200) NOT NULL,
  `sun_breakfast` varchar(100) NOT NULL,
  `mon_breakfast` varchar(100) NOT NULL,
  `tue_breakfast` varchar(100) NOT NULL,
  `wed_breakfast` varchar(100) NOT NULL,
  `thu_breakfast` varchar(100) NOT NULL,
  `fri_breakfast` varchar(100) NOT NULL,
  `sat_breakfast` varchar(100) NOT NULL,
  `sun_lunch` varchar(100) NOT NULL,
  `mon_lunch` varchar(100) NOT NULL,
  `tue_lunch` varchar(100) NOT NULL,
  `wed_lunch` varchar(100) NOT NULL,
  `thu_lunch` varchar(100) NOT NULL,
  `fri_lunch` varchar(100) NOT NULL,
  `sat_lunch` varchar(100) NOT NULL,
  `sun_dinner` varchar(100) NOT NULL,
  `mon_dinner` varchar(100) NOT NULL,
  `tue_dinner` varchar(100) NOT NULL,
  `wed_dinner` varchar(100) NOT NULL,
  `thu_dinner` varchar(100) NOT NULL,
  `fri_dinner` varchar(100) NOT NULL,
  `sat_dinner` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_staff_info`
--

CREATE TABLE `hostel_staff_info` (
  `s_no` int(200) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_gender` varchar(50) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_father` varchar(50) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_mobile` varchar(50) NOT NULL,
  `emp_address` varchar(1000) NOT NULL,
  `emp_qualification` varchar(100) NOT NULL,
  `emp_photo` varchar(1000) NOT NULL,
  `emp_doj` date NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_casual_leave` varchar(100) NOT NULL,
  `emp_pan_card_no` varchar(100) NOT NULL,
  `emp_bank_name` varchar(100) NOT NULL,
  `emp_account_no` varchar(1000) NOT NULL,
  `emp_ifsc_code` varchar(1000) NOT NULL,
  `emp_basic_salary` varchar(1000) NOT NULL,
  `emp_pf_number` varchar(1000) NOT NULL,
  `emp_status` varchar(100) NOT NULL DEFAULT 'Active',
  `emp_status_change_date` date NOT NULL,
  `emp_uid_no` varchar(250) NOT NULL,
  `remarks` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_staff_info`
--

INSERT INTO `hostel_staff_info` (`s_no`, `emp_name`, `emp_gender`, `emp_dob`, `emp_father`, `emp_email`, `emp_mobile`, `emp_address`, `emp_qualification`, `emp_photo`, `emp_doj`, `emp_designation`, `emp_casual_leave`, `emp_pan_card_no`, `emp_bank_name`, `emp_account_no`, `emp_ifsc_code`, `emp_basic_salary`, `emp_pf_number`, `emp_status`, `emp_status_change_date`, `emp_uid_no`, `remarks`) VALUES
(1, 'Rajendra jain', 'Male', '1992-01-07', 'Ratan lal jain', 'rajendra@gmail.com', '9685742536', 'new subhas nagar Bhopal', 'B.Ed.', 'images (2).jpg', '2018-01-04', 'Warden', '12', 'RAJ1236547852', 'State bank of India', '6091001566223562', 'Sbi-5241', '20000', '6091556644020', 'Active', '0000-00-00', '5445655412365', 'warden of royal boys hostel');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_stock_purchase`
--

CREATE TABLE `hostel_stock_purchase` (
  `s_no` int(200) NOT NULL,
  `item_product_name` varchar(200) NOT NULL,
  `item_quantity` varchar(200) NOT NULL,
  `item_purchase_rate` varchar(200) NOT NULL,
  `total_purchase_amount` varchar(200) NOT NULL,
  `shop_name` varchar(200) NOT NULL,
  `contact_person_name` varchar(200) NOT NULL,
  `purchase_status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_stock_purchase`
--

INSERT INTO `hostel_stock_purchase` (`s_no`, `item_product_name`, `item_quantity`, `item_purchase_rate`, `total_purchase_amount`, `shop_name`, `contact_person_name`, `purchase_status`) VALUES
(1, 'vegetable', '50', '50', '2500', 'Relience fresh', 'Akashy jain', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_student_attendence`
--

CREATE TABLE `hostel_student_attendence` (
  `s_no` int(100) NOT NULL,
  `attendance_roll_no` varchar(100) NOT NULL,
  `attendance_name` varchar(100) NOT NULL,
  `hostel_name_attendance` varchar(100) NOT NULL,
  `hostel_room_attendance` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `01` varchar(10) NOT NULL,
  `02` varchar(10) NOT NULL,
  `03` varchar(10) NOT NULL,
  `04` varchar(10) NOT NULL,
  `05` varchar(10) NOT NULL,
  `06` varchar(10) NOT NULL,
  `07` varchar(10) NOT NULL,
  `08` varchar(10) NOT NULL,
  `09` varchar(10) NOT NULL,
  `10` varchar(10) NOT NULL,
  `11` varchar(10) NOT NULL,
  `12` varchar(10) NOT NULL,
  `13` varchar(10) NOT NULL,
  `14` varchar(10) NOT NULL,
  `15` varchar(10) NOT NULL,
  `16` varchar(10) NOT NULL,
  `17` varchar(10) NOT NULL,
  `18` varchar(10) NOT NULL,
  `19` varchar(10) NOT NULL,
  `20` varchar(10) NOT NULL,
  `21` varchar(10) NOT NULL,
  `22` varchar(10) NOT NULL,
  `23` varchar(10) NOT NULL,
  `24` varchar(10) NOT NULL,
  `25` varchar(10) NOT NULL,
  `26` varchar(10) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_student_info`
--

CREATE TABLE `hostel_student_info` (
  `s_no` int(200) NOT NULL,
  `hostel_student_id` varchar(100) NOT NULL,
  `roll_number` varchar(100) NOT NULL,
  `hostel_student_name` varchar(100) NOT NULL,
  `hotel_father_name` varchar(100) NOT NULL,
  `hostel_student_dob` varchar(100) NOT NULL,
  `hostel_student_gender` varchar(100) NOT NULL,
  `hostel_student_handicapped` varchar(100) NOT NULL,
  `hostel_student_religion` varchar(100) NOT NULL,
  `hostel_student_category` varchar(100) NOT NULL,
  `hostel_student_aadhar` varchar(100) NOT NULL,
  `hostel_student_class` varchar(100) NOT NULL,
  `hostel_student_father_contact` varchar(100) NOT NULL,
  `hostel_student_father_email` varchar(100) NOT NULL,
  `hostel_student_mother_name` varchar(100) NOT NULL,
  `hostel_student_mother_contact` varchar(100) NOT NULL,
  `hostel_student_contact` varchar(100) NOT NULL,
  `hostel_student_email` varchar(100) NOT NULL,
  `hostel_student_photo` varchar(100) NOT NULL,
  `hostel_emergency_contact` varchar(100) NOT NULL,
  `hostel_hostel_name` varchar(100) NOT NULL,
  `hostel_room` varchar(100) NOT NULL,
  `hostel_room_bed_type` varchar(100) NOT NULL,
  `hostel_room_facility` varchar(100) NOT NULL,
  `hostel_washroom` varchar(100) NOT NULL,
  `hostel_room_charge_per_bed` varchar(100) NOT NULL,
  `hostel_room_table` varchar(100) NOT NULL,
  `hostel_room_bed` varchar(100) NOT NULL,
  `hostel_room_almirah` varchar(100) NOT NULL,
  `hostel_mess` varchar(100) NOT NULL,
  `hostel_mess_charge` varchar(100) NOT NULL,
  `hostel_join` varchar(100) NOT NULL,
  `hostel_caution_money` varchar(100) NOT NULL,
  `hostel_laundry_charge` varchar(100) NOT NULL,
  `hostel_student_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_student_info`
--

INSERT INTO `hostel_student_info` (`s_no`, `hostel_student_id`, `roll_number`, `hostel_student_name`, `hotel_father_name`, `hostel_student_dob`, `hostel_student_gender`, `hostel_student_handicapped`, `hostel_student_religion`, `hostel_student_category`, `hostel_student_aadhar`, `hostel_student_class`, `hostel_student_father_contact`, `hostel_student_father_email`, `hostel_student_mother_name`, `hostel_student_mother_contact`, `hostel_student_contact`, `hostel_student_email`, `hostel_student_photo`, `hostel_emergency_contact`, `hostel_hostel_name`, `hostel_room`, `hostel_room_bed_type`, `hostel_room_facility`, `hostel_washroom`, `hostel_room_charge_per_bed`, `hostel_room_table`, `hostel_room_bed`, `hostel_room_almirah`, `hostel_mess`, `hostel_mess_charge`, `hostel_join`, `hostel_caution_money`, `hostel_laundry_charge`, `hostel_student_status`) VALUES
(1, '_2', '171904', 'Raja mishra', 'Rammilan mishra', '2014-01-06', 'Male', 'No', 'Hindu', 'General', '521478963214', 'NURSERY', '9632587412', 'raman@gmail.com', 'kavita mishra', '9632587412', '8523697412', 'ramesh@gmail.com', 'images (5).jpg', '8517932695', 'Royal boys Hostel', '', 'single ', 'cooler', 'yes', '2500', 'Yes', 'Yes', 'Yes', 'Yes', '2000', '2018-01-04', '2000', '200', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(100) NOT NULL,
  `book_id_no` varchar(100) NOT NULL,
  `student_roll_no` varchar(200) NOT NULL,
  `issue_date` varchar(100) NOT NULL,
  `return_date` varchar(100) NOT NULL,
  `class` varchar(200) NOT NULL,
  `student_class_section` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL,
  `penality` varchar(200) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `extra_5` varchar(200) NOT NULL,
  `extra_6` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `s_no` int(100) NOT NULL,
  `emp_id` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `student_id_generate` int(200) NOT NULL,
  `emp_id_generate` varchar(100) NOT NULL,
  `admission_no` int(200) NOT NULL,
  `employee_id_no` int(200) NOT NULL,
  `fee_reciept_no` int(100) NOT NULL,
  `email_id` varchar(1000) NOT NULL,
  `tc_generate_no` int(200) NOT NULL,
  `student_hostel_id` varchar(100) NOT NULL,
  `bus_id_no` varchar(200) NOT NULL,
  `class_code` int(100) NOT NULL,
  `roll_nursery` int(100) NOT NULL,
  `roll_lkg` int(100) NOT NULL,
  `roll_ukg` int(100) NOT NULL,
  `roll_1st` int(100) NOT NULL,
  `roll_2nd` int(100) NOT NULL,
  `roll_3rd` int(100) NOT NULL,
  `roll_4th` int(100) NOT NULL,
  `roll_5th` int(100) NOT NULL,
  `roll_8th` int(100) NOT NULL,
  `roll_6th` int(100) NOT NULL,
  `roll_7th` int(100) NOT NULL,
  `roll_9th` int(100) NOT NULL,
  `roll_10th` int(100) NOT NULL,
  `roll_11` int(100) NOT NULL,
  `roll_` int(100) NOT NULL,
  `roll_12th` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`s_no`, `emp_id`, `password`, `student_id_generate`, `emp_id_generate`, `admission_no`, `employee_id_no`, `fee_reciept_no`, `email_id`, `tc_generate_no`, `student_hostel_id`, `bus_id_no`, `class_code`, `roll_nursery`, `roll_lkg`, `roll_ukg`, `roll_1st`, `roll_2nd`, `roll_3rd`, `roll_4th`, `roll_5th`, `roll_8th`, `roll_6th`, `roll_7th`, `roll_9th`, `roll_10th`, `roll_11`, `roll_`, `roll_12th`) VALUES
(1, 'simption', 'tech', 63, '', 0, 106, 100, 'star_1129@rediffmail.com', 100, '_3', '7', 34, 8, 8, 6, 3, 7, 8, 6, 7, 1, 3, 2, 1, 3, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `participate_table`
--

CREATE TABLE `participate_table` (
  `s_no` int(200) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_type` varchar(200) NOT NULL,
  `event_activity` varchar(200) NOT NULL,
  `event_date` varchar(200) NOT NULL,
  `event_address` varchar(200) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `student_class` varchar(200) NOT NULL,
  `student_class_section` varchar(100) NOT NULL,
  `student_roll_no` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participate_table`
--

INSERT INTO `participate_table` (`s_no`, `event_name`, `event_type`, `event_activity`, `event_date`, `event_address`, `student_name`, `gender`, `student_class`, `student_class_section`, `student_roll_no`, `father_name`, `contact_no`) VALUES
(1, 'techomania', 'Anual Function', 'dance', '08-01-2018', 'school ground', 'Madhu Yadav', 'Female', '2ND', 'A', '172307', 'Bhagwan  Rai', '9874663123'),
(2, 'techomania', 'Anual Function', 'dance', '08-01-2018', 'school ground', 'Samrat Yadav', 'Male', 'UKG', 'A', '172106', 'Virat Yadav', '9874563112');

-- --------------------------------------------------------

--
-- Table structure for table `question_correct_choose`
--

CREATE TABLE `question_correct_choose` (
  `s_no` int(100) NOT NULL,
  `correct_choose_question_class` varchar(200) NOT NULL,
  `correct_choose_question_subject` varchar(200) NOT NULL,
  `correct_choose_question_chapter` varchar(200) NOT NULL,
  `correct_choose_question_book` varchar(200) NOT NULL,
  `correct_choose_question` varchar(500) NOT NULL,
  `correct_choose_marks` varchar(200) NOT NULL,
  `correct_choose_correct_answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_correct_choose`
--

INSERT INTO `question_correct_choose` (`s_no`, `correct_choose_question_class`, `correct_choose_question_subject`, `correct_choose_question_chapter`, `correct_choose_question_book`, `correct_choose_question`, `correct_choose_marks`, `correct_choose_correct_answer`) VALUES
(1, 'NURSERY', 'english', '1st', 'English question bank', '<p>color of sky is -----,</p>\r\n', '1', '<p>blue</p>\r\n'),
(2, 'NURSERY', 'english', '1st', 'English question bank', '<p>mango taste .......... whle eating</p>\r\n', '1', '<p>sweet</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `question_fill_in_the_blank`
--

CREATE TABLE `question_fill_in_the_blank` (
  `s_no` int(100) NOT NULL,
  `fill_blank_question_class` varchar(200) NOT NULL,
  `fill_blank_question_subject` varchar(200) NOT NULL,
  `fill_blank_question_chapter` varchar(200) NOT NULL,
  `fill_blank_question_book` varchar(200) NOT NULL,
  `fill_blank_question_before` varchar(500) NOT NULL,
  `fill_blank_question_after` varchar(500) NOT NULL,
  `fill_blank_marks` varchar(200) NOT NULL,
  `fill_blank_correct_answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_fill_in_the_blank`
--

INSERT INTO `question_fill_in_the_blank` (`s_no`, `fill_blank_question_class`, `fill_blank_question_subject`, `fill_blank_question_chapter`, `fill_blank_question_book`, `fill_blank_question_before`, `fill_blank_question_after`, `fill_blank_marks`, `fill_blank_correct_answer`) VALUES
(1, '3RD', 'english', '1st', 'Question bank english', 'cat jump ', ' the table', '1', 'on'),
(2, '3RD', 'english', '1st', 'Question bank english', 'Run first ', 'you will be late', '1', 'otherwise'),
(3, 'NURSERY', 'english', '1st', 'english question bank', 'cat jump ', 'the table.', '1', 'on'),
(4, 'NURSERY', 'english', '1st', 'english question bank', 'Run fast ', 'ypu will be late', '1', 'otherwise'),
(5, 'NURSERY', 'english', '1st', 'English question bank', 'a,b,c,d,e', 'g,h,i', '1', 'f'),
(6, 'NURSERY', 'english', '1st', 'English question bank', 'u,v,w,', 'y,z', '1', 'x'),
(7, 'NURSERY', 'english', '1st', 'English question bank', '1,2,3,4', ',7,8,9,10', '1', '5,6');

-- --------------------------------------------------------

--
-- Table structure for table `question_long`
--

CREATE TABLE `question_long` (
  `s_no` int(100) NOT NULL,
  `long_question_class` varchar(200) NOT NULL,
  `long_question_subject` varchar(200) NOT NULL,
  `long_question_chapter` varchar(200) NOT NULL,
  `long_question_book` varchar(200) NOT NULL,
  `long_question` varchar(500) NOT NULL,
  `long_marks` varchar(200) NOT NULL,
  `long_correct_answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_long`
--

INSERT INTO `question_long` (`s_no`, `long_question_class`, `long_question_subject`, `long_question_chapter`, `long_question_book`, `long_question`, `long_marks`, `long_correct_answer`) VALUES
(1, 'NURSERY', 'english', '1st', 'English question bank', '<p>In which class do you read</p>\r\n', '1', '<p>I read in class nursery</p>\r\n'),
(2, 'NURSERY', 'english', '1st', 'English question bank', '<p>which game do you like to play most?</p>\r\n', '1', '<p>i like to play cricket.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `question_matching`
--

CREATE TABLE `question_matching` (
  `s_no` int(100) NOT NULL,
  `matching_question_class` varchar(200) NOT NULL,
  `matching_question_subject` varchar(200) NOT NULL,
  `matching_question_chapter` varchar(200) NOT NULL,
  `matching_question_book` varchar(200) NOT NULL,
  `matching_correct_match` varchar(200) NOT NULL,
  `matching_correct_answer` varchar(200) NOT NULL,
  `matching_marks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_matching`
--

INSERT INTO `question_matching` (`s_no`, `matching_question_class`, `matching_question_subject`, `matching_question_chapter`, `matching_question_book`, `matching_correct_match`, `matching_correct_answer`, `matching_marks`) VALUES
(1, 'NURSERY', 'english', '1st', 'English question bank', 'Delhi', 'Delhi', '1'),
(2, 'NURSERY', 'english', '1st', 'English question bank', 'Maharasthra', 'Mumbai', '1'),
(3, 'NURSERY', 'english', '1st', 'English question bank', 'Madhya Pradesh', 'Bhopal', '1'),
(4, 'NURSERY', 'english', '1st', 'English question bank', 'Uttar Pradesh', 'Lucknow', '1');

-- --------------------------------------------------------

--
-- Table structure for table `question_objective`
--

CREATE TABLE `question_objective` (
  `s_no` int(100) NOT NULL,
  `question_class` varchar(200) NOT NULL,
  `question_subject` varchar(200) NOT NULL,
  `question_chapter` varchar(200) NOT NULL,
  `question_book` varchar(200) NOT NULL,
  `question` varchar(500) NOT NULL,
  `option_1` varchar(200) NOT NULL,
  `option_2` varchar(200) NOT NULL,
  `option_3` varchar(200) NOT NULL,
  `option_4` varchar(200) NOT NULL,
  `correct_answer` varchar(200) NOT NULL,
  `marks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_objective`
--

INSERT INTO `question_objective` (`s_no`, `question_class`, `question_subject`, `question_chapter`, `question_book`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `correct_answer`, `marks`) VALUES
(1, '1ST', 'mathe_matics', '1st', 'maths question bank', '12+14', '20', '22', '26', '28', 'C', '1'),
(2, '1ST', 'mathe_matics', '1st', 'maths question bank', '2+3+6', '8', '11', '12', '14', 'B', '1111111111'),
(3, 'NURSERY', 'hindi', '1st', 'hindi bank ', 'gdhjgdg', 'jlkj', 'jlk', 'jl;lk', 'j;l', 'B', '1'),
(4, '10TH', 'science', '10th', 'science question bank', 'how many bone are there in human body', '200', '201', '204', '206', 'D', '1'),
(5, '10TH', 'hindi', '1st', 'Sugam bharti', '\r\nà¤­à¤¾à¤°à¤¤ à¤•à¤¾ à¤ªà¥à¤°à¤§à¤¾à¤¨ à¤®à¤‚à¤¤à¥à¤°à¥€ à¤•à¥Œà¤¨ à¤¹à¥ˆ ', 'à¤©à¤°à¥‡à¤¨à¥à¤¦à¤°à¥ à¤®à¥‹à¤¦à¥€', 'à¤°à¤¾à¤¹à¥à¤² à¤—à¤¾à¤‚à¤§à¥€ ', 'à¤¿à¤¶à¤µà¤°à¤¾à¤œ', 'à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€', 'A', '1'),
(6, 'NURSERY', 'english', '1st', 'English question bank', 'what is the colour of parrot', 'green', 'blue', 'yellow', 'red', 'A', '1'),
(7, 'NURSERY', 'english', '1st', 'English question bank', 'The cow gives ?', 'milk', 'water', 'fruits', 'butter', 'B', '1'),
(8, 'NURSERY', 'english', '1st', 'English question bank', 'which of them is a game', 'cricket', 'dance', 'song', 'lesson', 'A', '1');

-- --------------------------------------------------------

--
-- Table structure for table `question_other`
--

CREATE TABLE `question_other` (
  `s_no` int(100) NOT NULL,
  `other_question_class` varchar(200) NOT NULL,
  `other_question_subject` varchar(200) NOT NULL,
  `other_question_chapter` varchar(200) NOT NULL,
  `other_question_book` varchar(200) NOT NULL,
  `other_question` varchar(500) NOT NULL,
  `other_marks` varchar(200) NOT NULL,
  `other_correct_answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_other`
--

INSERT INTO `question_other` (`s_no`, `other_question_class`, `other_question_subject`, `other_question_chapter`, `other_question_book`, `other_question`, `other_marks`, `other_correct_answer`) VALUES
(1, 'NURSERY', 'english', '1st', 'english question bank', '<p>write something about you</p>\r\n', '1', '<p>my naam is Adity kumar I studied in nursery class in shant jhosph convent school bhopal</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `question_paper_set`
--

CREATE TABLE `question_paper_set` (
  `s_no` int(10) NOT NULL,
  `question_s_no` varchar(250) NOT NULL,
  `question_type` varchar(250) NOT NULL,
  `exam_type` varchar(250) NOT NULL,
  `question_class` varchar(100) NOT NULL,
  `question_subject` varchar(250) NOT NULL,
  `total_question` varchar(100) NOT NULL,
  `exam_date` varchar(100) NOT NULL,
  `exam_time_from` varchar(100) NOT NULL,
  `exam_time_to` varchar(100) NOT NULL,
  `total_marks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_paper_set`
--

INSERT INTO `question_paper_set` (`s_no`, `question_s_no`, `question_type`, `exam_type`, `question_class`, `question_subject`, `total_question`, `exam_date`, `exam_time_from`, `exam_time_to`, `total_marks`) VALUES
(1, '2', 'Short_Question', 'Terminal Exam', 'NURSERY', 'hindi', '4', '10-01-2018', '12:00', '15:00', '100'),
(2, '3', 'Short_Question', 'Terminal Exam', 'NURSERY', 'hindi', '4', '10-01-2018', '12:00', '15:00', '100'),
(3, '4', 'Short_Question', 'Terminal Exam', 'NURSERY', 'hindi', '4', '10-01-2018', '12:00', '15:00', '100'),
(4, '5', 'Short_Question', 'Terminal Exam', 'NURSERY', 'hindi', '4', '10-01-2018', '12:00', '15:00', '100'),
(5, '3', 'Long_Question', 'Terminal Exam', 'NURSERY', 'hindi', '2', '10-01-2018', '12:00', '15:00', '100'),
(6, '4', 'Long_Question', 'Terminal Exam', 'NURSERY', 'hindi', '2', '10-01-2018', '12:00', '15:00', '100'),
(7, '5', 'Long_Question', 'Terminal Exam', 'NURSERY', 'hindi', '2', '10-01-2018', '12:00', '15:00', '100'),
(8, '6', 'Long_Question', 'Terminal Exam', 'NURSERY', 'hindi', '2', '10-01-2018', '12:00', '15:00', '100'),
(9, '2', 'Unseen_Passage', 'Terminal Exam', 'NURSERY', 'hindi', '1', '10-01-2018', '12:00', '15:00', '100'),
(10, '3', 'Fill_in_the_blank', 'Terminal Exam', 'NURSERY', 'english', '2', '06-01-2018', '22:00', '23:00', '50'),
(11, '4', 'Fill_in_the_blank', 'Terminal Exam', 'NURSERY', 'english', '2', '06-01-2018', '22:00', '23:00', '50'),
(12, '3', 'Objective', 'Terminal Exam', 'NURSERY', 'hindi', '1', '10-01-2018', '12:00', '15:00', '100'),
(13, '1', 'True_False', 'Terminal Exam', 'NURSERY', 'hindi', '1', '10-01-2018', '12:00', '15:00', '100'),
(14, '3', 'Objective', 'Terminal Exam', 'NURSERY', 'hindi', '1', '', '', '', ''),
(15, '3', 'Objective', 'Terminal Exam', 'NURSERY', 'hindi', '1', '', '', '', ''),
(16, '6', 'Objective', 'Terminal Exam', 'NURSERY', 'english', '1', '06-01-2018', '22:00', '23:00', '50'),
(17, '6', 'Objective', 'Terminal Exam', 'NURSERY', 'english', '1', '06-01-2018', '22:00', '23:00', '50'),
(18, '6', 'Objective', 'Terminal Exam', 'NURSERY', 'english', '3', '06-01-2018', '22:00', '23:00', '50'),
(19, '7', 'Objective', 'Terminal Exam', 'NURSERY', 'english', '3', '06-01-2018', '22:00', '23:00', '50'),
(20, '8', 'Objective', 'Terminal Exam', 'NURSERY', 'english', '3', '06-01-2018', '22:00', '23:00', '50'),
(21, '6', 'Objective', 'Terminal Exam', 'NURSERY', 'english', '3', '06-01-2018', '22:00', '23:00', '50'),
(22, '7', 'Objective', 'Terminal Exam', 'NURSERY', 'english', '3', '06-01-2018', '22:00', '23:00', '50'),
(23, '8', 'Objective', 'Terminal Exam', 'NURSERY', 'english', '3', '06-01-2018', '22:00', '23:00', '50'),
(24, '1', 'Other', 'Terminal Exam', 'NURSERY', 'english', '1', '06-01-2018', '22:00', '23:00', '50');

-- --------------------------------------------------------

--
-- Table structure for table `question_short`
--

CREATE TABLE `question_short` (
  `s_no` int(100) NOT NULL,
  `short_question_class` varchar(200) NOT NULL,
  `short_question_subject` varchar(200) NOT NULL,
  `short_question_chapter` varchar(200) NOT NULL,
  `short_question_book` varchar(200) NOT NULL,
  `short_question` varchar(500) NOT NULL,
  `short_marks` varchar(200) NOT NULL,
  `short_correct_answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_short`
--

INSERT INTO `question_short` (`s_no`, `short_question_class`, `short_question_subject`, `short_question_chapter`, `short_question_book`, `short_question`, `short_marks`, `short_correct_answer`) VALUES
(1, '2ND', 'mathe_matics', '2nd', 'question bank maths', '<p>A men buy 5 orange 3apple and 2 bannana.total number of fruits that men have?</p>\r\n', '2', '<p>total number of fruits that men have = 5</p>\r\n'),
(2, '2ND', 'mathe_matics', '2nd', 'question bank maths', '<p>you have 10 chocolate 3 you gave to friend number of chocolate left with you ?</p>\r\n', '2', '<p>answer 7</p>\r\n'),
(3, 'NURSERY', 'hindi', '1st', '1', '<p>à¤­à¤¾à¤°à¤¤ à¤®à¤¾à¤¤à¤¾ à¤•à¥€ à¤œà¤¯ à¤¹à¥‹&nbsp;</p>\r\n', '10', '<p>à¤­à¤¾à¤°à¤¤ à¤®à¤¾à¤¤à¤¾ à¤•à¥€ à¤œà¤¯ à¤¹à¥‹&nbsp;</p>\r\n'),
(4, 'NURSERY', 'english', '1st', 'English question bank', '<p>who is your principal?</p>\r\n', '1', '<p>our principal is sister Leena Jhosph</p>\r\n'),
(5, 'NURSERY', 'english', '1st', 'English question bank', '<p>what is your name?</p>\r\n', '1', '<p>my name is Anmol singh thakur?</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `question_true_false`
--

CREATE TABLE `question_true_false` (
  `s_no` int(100) NOT NULL,
  `true_false_question_class` varchar(200) NOT NULL,
  `true_false_question_subject` varchar(200) NOT NULL,
  `true_false_question_chapter` varchar(200) NOT NULL,
  `true_false_question_book` varchar(200) NOT NULL,
  `true_false_question` varchar(500) NOT NULL,
  `true_false_marks` varchar(200) NOT NULL,
  `true_false_correct_answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_true_false`
--

INSERT INTO `question_true_false` (`s_no`, `true_false_question_class`, `true_false_question_subject`, `true_false_question_chapter`, `true_false_question_book`, `true_false_question`, `true_false_marks`, `true_false_correct_answer`) VALUES
(1, 'NURSERY', 'hindi', '10th', 'opkm,okmi', 'fcdskjh;lk', '2', 'True'),
(2, 'NURSERY', 'english', '1st', 'English question bank', 'sonu lives in Bhopal.', '1', 'True'),
(3, 'NURSERY', 'english', '1st', 'English question bank', 'Delhi is the capital of India', '1', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `question_unseen_passage`
--

CREATE TABLE `question_unseen_passage` (
  `s_no` int(100) NOT NULL,
  `unseen_passage_question_class` varchar(200) NOT NULL,
  `unseen_passage_question_subject` varchar(200) NOT NULL,
  `unseen_passage_question_chapter` varchar(200) NOT NULL,
  `unseen_passage_question_book` varchar(200) NOT NULL,
  `passage` varchar(1500) NOT NULL,
  `unseen_passage_que_1` varchar(200) NOT NULL,
  `unseen_passage_ans_1` varchar(200) NOT NULL,
  `unseen_passage_que_2` varchar(200) NOT NULL,
  `unseen_passage_ans_2` varchar(200) NOT NULL,
  `unseen_passage_que_3` varchar(200) NOT NULL,
  `unseen_passage_ans_3` varchar(200) NOT NULL,
  `unseen_passage_que_4` varchar(200) NOT NULL,
  `unseen_passage_ans_4` varchar(200) NOT NULL,
  `unseen_passage_que_5` varchar(200) NOT NULL,
  `unseen_passage_ans_5` varchar(200) NOT NULL,
  `unseen_passage_marks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_unseen_passage`
--

INSERT INTO `question_unseen_passage` (`s_no`, `unseen_passage_question_class`, `unseen_passage_question_subject`, `unseen_passage_question_chapter`, `unseen_passage_question_book`, `passage`, `unseen_passage_que_1`, `unseen_passage_ans_1`, `unseen_passage_que_2`, `unseen_passage_ans_2`, `unseen_passage_que_3`, `unseen_passage_ans_3`, `unseen_passage_que_4`, `unseen_passage_ans_4`, `unseen_passage_que_5`, `unseen_passage_ans_5`, `unseen_passage_marks`) VALUES
(1, 'NURSERY', 'english', '1st', 'English question bank', 'hejfrhejflkfvlkmvflkvb fgfdgghfhgjgh', 'fgfhh', 'gfdgh', 'fghfhgf', 'hfghfghgf', 'hfghfg', 'hfghf', 'hgfgfh', 'gfhgfhgf', 'hfghffr', 'kjkllkjlh', '1'),
(2, 'NURSERY', 'english', '1st', 'English question bank', 'efdgfhghjk;lkg;lkmlknmgfdhjbgkjbkjgfbgkjf', 'fgfhgjhgj', 'gbhghgg', 'fgfdghgh', 'ytryuyuytu', 'ghgjhgjhgj', 'hgfgjhgj', 'bvbnbnb', 'tytytytuiu', 'tryytuui', 'ncmjhkjjlkj', '1');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `s_no` int(250) NOT NULL,
  `reminder_allocated_date` varchar(100) NOT NULL,
  `reminder_finish_date` varchar(100) NOT NULL,
  `reminder_task_1` varchar(100) NOT NULL,
  `reminder_task_2` varchar(50) NOT NULL,
  `reminder_task_3` varchar(50) NOT NULL,
  `reminder_task_4` varchar(50) NOT NULL,
  `reminder_task_5` varchar(50) NOT NULL,
  `reminder_remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`s_no`, `reminder_allocated_date`, `reminder_finish_date`, `reminder_task_1`, `reminder_task_2`, `reminder_task_3`, `reminder_task_4`, `reminder_task_5`, `reminder_remark`) VALUES
(1, '04-01-2018', '05-01-2018', 'Go to Gwalior', 'Meeting With DPS Principal', 'Distribut Medal To winner Student', '', '', 'Reminder Gwalior Meeting'),
(2, '02-01-2018', '05-01-2018', 'Meenting With Director Lok Shikshan Sanshtan', 'Meenting With Director Aditya Birla Faoundation', 'Meenting With Director School Minister', 'None', 'None', 'Its Urgent'),
(3, '02-01-2018', '05-01-2018', 'goto governmnet block level school', 'meeeting pti ', 'exam meeing', 'board exam time table', 'next meeting', 'meeeting held');

-- --------------------------------------------------------

--
-- Table structure for table `result_publish`
--

CREATE TABLE `result_publish` (
  `s_no` int(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `section` varchar(10) NOT NULL,
  `exam_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_info_class_info`
--

CREATE TABLE `school_info_class_info` (
  `s_no` int(100) NOT NULL,
  `class_name` varchar(200) NOT NULL,
  `class_code` int(100) NOT NULL,
  `section` varchar(200) NOT NULL DEFAULT '1',
  `class_teacher_a` varchar(200) NOT NULL,
  `class_teacher_b` varchar(200) NOT NULL,
  `class_teacher_c` varchar(200) NOT NULL,
  `class_teacher_d` varchar(200) NOT NULL,
  `class_teacher_e` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_class_info`
--

INSERT INTO `school_info_class_info` (`s_no`, `class_name`, `class_code`, `section`, `class_teacher_a`, `class_teacher_b`, `class_teacher_c`, `class_teacher_d`, `class_teacher_e`) VALUES
(47, 'NURSERY', 19, '3', '', '', '', '', ''),
(48, 'LKG', 20, '1', '', '', '', '', ''),
(49, 'UKG', 21, '2', '', '', '', '', ''),
(50, '1ST', 22, '1', '', '', '', '', ''),
(51, '2ND', 23, '1', '', '', '', '', ''),
(52, '3RD', 24, '1', '', '', '', '', ''),
(53, '4TH', 25, '1', '', '', '', '', ''),
(54, '5TH', 26, '1', '', '', '', '', ''),
(55, '6TH', 27, '1', '', '', '', '', ''),
(56, '7TH', 28, '1', '', '', '', '', ''),
(57, '8TH', 29, '1', '', '', '', '', ''),
(58, '9TH', 30, '1', '', '', '', '', ''),
(59, '10TH', 31, '1', '', '', '', '', ''),
(61, '', 33, '1', '', '', '', '', ''),
(62, '12th', 34, '1', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `school_info_class_period`
--

CREATE TABLE `school_info_class_period` (
  `s_no` int(10) NOT NULL,
  `period_name` varchar(100) NOT NULL,
  `period_start_time` time NOT NULL,
  `period_end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_class_period`
--

INSERT INTO `school_info_class_period` (`s_no`, `period_name`, `period_start_time`, `period_end_time`) VALUES
(1, 'period1', '07:00:00', '07:45:00'),
(2, 'period2', '07:45:00', '08:30:00'),
(3, 'period3', '08:30:00', '09:15:00'),
(4, 'period4', '09:15:00', '10:00:00'),
(5, 'lunch', '10:00:00', '10:30:00'),
(6, 'period5', '10:30:00', '11:15:00'),
(7, 'period6', '11:15:00', '12:00:00'),
(8, 'period7', '12:00:00', '12:45:00'),
(9, 'period8', '12:45:00', '13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `school_info_discount_types`
--

CREATE TABLE `school_info_discount_types` (
  `s_no` int(100) NOT NULL,
  `discount_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_discount_types`
--

INSERT INTO `school_info_discount_types` (`s_no`, `discount_type`) VALUES
(1, 'Sibling'),
(2, 'Group'),
(3, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `school_info_exam_types`
--

CREATE TABLE `school_info_exam_types` (
  `s_no` int(100) NOT NULL,
  `exam_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_exam_types`
--

INSERT INTO `school_info_exam_types` (`s_no`, `exam_type`) VALUES
(11, 'quarterly_exam'),
(12, 'half_yearly_exam'),
(13, 'pre_board_exam'),
(14, 'annual_exam');

-- --------------------------------------------------------

--
-- Table structure for table `school_info_fee_types`
--

CREATE TABLE `school_info_fee_types` (
  `s_no` int(100) NOT NULL,
  `fee_type` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_fee_types`
--

INSERT INTO `school_info_fee_types` (`s_no`, `fee_type`) VALUES
(1, 'Tution'),
(2, 'Exam'),
(3, 'Bus'),
(4, 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `school_info_general`
--

CREATE TABLE `school_info_general` (
  `s_no` int(200) NOT NULL,
  `school_info_school_name` varchar(300) NOT NULL,
  `school_info_school_state` varchar(300) NOT NULL,
  `school_info_school_district` varchar(300) NOT NULL,
  `school_info_school_city` varchar(300) NOT NULL,
  `school_info_school_pincode` varchar(300) NOT NULL,
  `school_info_school_landmark` varchar(300) NOT NULL,
  `school_info_school_latitude` varchar(300) NOT NULL,
  `school_info_school_longitude` varchar(200) NOT NULL,
  `school_info_school_address` varchar(300) NOT NULL,
  `school_info_school_contact_no` varchar(300) NOT NULL,
  `school_info_school_email_id` varchar(100) NOT NULL,
  `school_info_school_website` varchar(100) NOT NULL,
  `school_info_principal_name` varchar(300) NOT NULL,
  `school_info_dise_code` varchar(300) NOT NULL,
  `school_info_school_code` varchar(300) NOT NULL,
  `school_info_registration_code` varchar(300) NOT NULL,
  `school_info_total_class` varchar(300) NOT NULL,
  `school_info_medium` varchar(300) NOT NULL,
  `school_info_school_board` varchar(300) NOT NULL,
  `school_info_student_type` varchar(300) NOT NULL,
  `school_info_student_category` varchar(300) NOT NULL,
  `school_info_principal_seal` varchar(300) NOT NULL,
  `school_info_principal_signature` varchar(300) NOT NULL,
  `school_info_logo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_general`
--

INSERT INTO `school_info_general` (`s_no`, `school_info_school_name`, `school_info_school_state`, `school_info_school_district`, `school_info_school_city`, `school_info_school_pincode`, `school_info_school_landmark`, `school_info_school_latitude`, `school_info_school_longitude`, `school_info_school_address`, `school_info_school_contact_no`, `school_info_school_email_id`, `school_info_school_website`, `school_info_principal_name`, `school_info_dise_code`, `school_info_school_code`, `school_info_registration_code`, `school_info_total_class`, `school_info_medium`, `school_info_school_board`, `school_info_student_type`, `school_info_student_category`, `school_info_principal_seal`, `school_info_principal_signature`, `school_info_logo`) VALUES
(3, 'SIMPTION SCHOOL SOFTWARE DEMO', 'Madhya Pradesh', 'Bhopal', 'Bhopal', '462021', 'Siddhart Lake City', '', '', 'Siddhart Lake City', '9074822542', 'info@simption.com', 'www.simption.com', 'Rahul Agrawal', '512365', '54215', '554225', '', 'Both', 'CBSE Board', 'Regular + Unregular', 'EWS + Non EWS', 'seal.jpg', 'signature.png', 'simption_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `school_info_rfid_card`
--

CREATE TABLE `school_info_rfid_card` (
  `s_no` int(100) NOT NULL,
  `rfid_no` varchar(100) NOT NULL,
  `student_roll_no` varchar(100) NOT NULL,
  `edited` tinyint(1) NOT NULL DEFAULT '0',
  `student_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_rfid_card`
--

INSERT INTO `school_info_rfid_card` (`s_no`, `rfid_no`, `student_roll_no`, `edited`, `student_name`) VALUES
(1, '0003441708', '171904', 0, ''),
(2, '0003442426', '171904', 0, 'Ramesh Verma'),
(3, '0003338044', '172006', 0, ''),
(4, '0003346942', '172203', 0, ''),
(5, '0003521355', '171905', 0, 'Rakesh Chaubey'),
(6, '0003348073', '172407', 0, 'Sneha Sharma'),
(7, ' 0003441349', '', 0, ''),
(8, '0003440989', '171905', 0, 'Rakesh Chaubey'),
(9, '0003346566', '171904', 0, 'Ramesh Raza'),
(10, '0003349194', '172008', 0, 'vicky'),
(11, '0003348822', '172007', 0, 'Sneha Raj'),
(12, '0003348448', '172006', 0, 'Vikram singh');

-- --------------------------------------------------------

--
-- Table structure for table `school_info_subjects`
--

CREATE TABLE `school_info_subjects` (
  `s_no` int(100) NOT NULL,
  `subject` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_subjects`
--

INSERT INTO `school_info_subjects` (`s_no`, `subject`) VALUES
(1, 'HINDI'),
(2, 'ENGLISH'),
(3, 'MATHE MATICS'),
(4, 'SCIENCE'),
(6, 'EVS'),
(7, 'SOCIAL SCIENCE');

-- --------------------------------------------------------

--
-- Table structure for table `school_info_subject_info`
--

CREATE TABLE `school_info_subject_info` (
  `s_no` int(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `subject_teacher_id_a` varchar(200) NOT NULL,
  `subject_class_time_from_a` time NOT NULL,
  `subject_class_time_to_a` time NOT NULL,
  `subject_day_a` varchar(500) NOT NULL,
  `subject_teacher_id_b` varchar(200) NOT NULL,
  `subject_class_time_from_b` varchar(200) NOT NULL,
  `subject_class_time_to_b` varchar(200) NOT NULL,
  `subject_teacher_id_c` varchar(200) NOT NULL,
  `subject_class_time_from_c` varchar(200) NOT NULL,
  `subject_class_time_to_c` varchar(200) NOT NULL,
  `subject_teacher_id_d` varchar(200) NOT NULL,
  `subject_class_time_from_d` varchar(200) NOT NULL,
  `subject_class_time_to_d` varchar(200) NOT NULL,
  `subject_teacher_id_e` varchar(200) NOT NULL,
  `subject_class_time_from_e` varchar(200) NOT NULL,
  `subject_class_time_to_e` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info_subject_info`
--

INSERT INTO `school_info_subject_info` (`s_no`, `class`, `subject_name`, `subject_teacher_id_a`, `subject_class_time_from_a`, `subject_class_time_to_a`, `subject_day_a`, `subject_teacher_id_b`, `subject_class_time_from_b`, `subject_class_time_to_b`, `subject_teacher_id_c`, `subject_class_time_from_c`, `subject_class_time_to_c`, `subject_teacher_id_d`, `subject_class_time_from_d`, `subject_class_time_to_d`, `subject_teacher_id_e`, `subject_class_time_from_e`, `subject_class_time_to_e`) VALUES
(1, 'NURSERY', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'NURSERY', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'NURSERY', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'LKG', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'LKG', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'LKG', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'UKG', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'UKG', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'UKG', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '1ST', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '1ST', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '1ST', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '1ST', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '1ST', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '2ND', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '2ND', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '2ND', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '2ND', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '2ND', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '3RD', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, '3RD', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, '3RD', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, '3RD', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '3RD', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, '4TH', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '4TH', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, '4TH', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, '4TH', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, '4TH', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, '5TH', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, '5TH', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, '5TH', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '5TH', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, '5TH', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, '6TH', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, '6TH', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, '6TH', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, '6TH', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, '6TH', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, '7TH', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, '7TH', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, '7TH', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, '7TH', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, '7TH', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, '8TH', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, '8TH', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, '8TH', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, '8TH', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, '8TH', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, '9TH', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, '9TH', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, '9TH', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, '9TH', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '9TH', 'evs', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '9TH', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '10TH', 'hindi', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, '10TH', 'english', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '10TH', 'mathe_matics', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '10TH', 'science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '10TH', 'evs', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '10TH', 'social_science', '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `school_library_book`
--

CREATE TABLE `school_library_book` (
  `id` int(100) NOT NULL,
  `book_id_no` varchar(100) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_catagory` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `publish_date` varchar(100) NOT NULL,
  `publish_name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `no_of_copy` varchar(100) NOT NULL,
  `available_copy` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_info`
--

CREATE TABLE `sms_info` (
  `s_no` int(100) NOT NULL,
  `job_id` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `message_id` varchar(100) NOT NULL,
  `delivery_report` varchar(100) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `message` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_info`
--

INSERT INTO `sms_info` (`s_no`, `job_id`, `contact_no`, `message_id`, `delivery_report`, `delivery_date`, `message`) VALUES
(1, '4653677', '919713002205', 'XyGgnQ0WRUChXhI6VpuSQQ', 'Delivered', '2017-12-29T13:20:16.013', 'hiiiiiiiii					\r\n					'),
(2, '4658242', '919893540319', 'J3p5Gxo9rU6c9N66XSYhnw', 'Delivered', '2017-12-29T19:01:32.963', 'Your One Time Password (OTP) for School Management Software Registration is 962240.\n Do not share th'),
(3, '4658245', '919893540318', 'gaGJ3xhsq0661NgoEsOa1g', 'Delivered', '2017-12-29T19:01:48.67', 'Your One Time Password (OTP) for School Management Software Registration is 124228.\n Do not share th'),
(4, '4658323', '919893540318', 'lQjm2Ux54EW6QNTRR6tZaw', 'Delivered', '2017-12-29T19:09:30.267', 'Your One Time Password (OTP) for School Management Software Registration is 141635.\n Do not share th'),
(5, '4664422', '919713002205', 'it9j3HhNOkCBH6eVXeWGRQ', 'Delivered', '2017-12-30T10:45:15.03', 'Google News is a free news aggregator provided and operated by Google, selectin'),
(6, '4664422', '918878291481', 'DkxkcXYgxUmEEAj50O1NCA', 'Delivered', '2017-12-30T10:44:38.727', 'Google News is a free news aggregator provided and operated by Google, selectin'),
(7, '4667808', '919713002205', 'NWEqw6pKHUyxLMSUfn5Xmw', 'Delivered', '2017-12-30T12:23:02.477', 'Your One Time Password (OTP) for School Management Software Registration is 194552.\n Do not share th'),
(8, '4715706', '919752144856', 'T6XL6V9UGkWS6zOLpTtsMA', 'Delivered', '2018-01-02T10:48:04.227', '		hello			\r\n					'),
(9, '4716786', '918269679536', '83urIL6y5EyDW51lPaNrGw', 'Delivered', '2018-01-02T11:43:37.333', 'Your Child Is Not Working Proper.			'),
(10, '4719216', '919144555966', '6XCcRFChrEyVIwkn3jpTLQ', 'Delivered', '2018-01-02T12:53:52.727', 'Your One Time Password (OTP) for School Management Software Registration is 928162.\n Do not share th'),
(11, '4729193', '918517930978', 'QB35yQuG70GRy8zCwxTBZA', 'Delivered', '2018-01-02T17:33:01.193', '			à¤¸à¤¿à¤®à¥à¤ªà¥à¤¶à¤¨ à¤Ÿà¥‡à¤• à¤ªà¥à¤°à¤¾à¤‡à¤µà¥‡à¤Ÿ\r\nà¤²à¤¿à¤®à¤¿à¤Ÿà¥‡à¤¡ \r\n					'),
(12, '4729238', '918269679536', 'r9cdpqn6OkOvFOmOSO20vw', 'Delivered', '2018-01-02T17:34:28.337', '			à¤¸à¤¿à¤®à¥à¤ªà¥à¤¶à¤¨ à¤Ÿà¥‡à¤• à¤ªà¥à¤°à¤¾à¤‡à¤µà¥‡à¤Ÿ\r\nà¤²à¤¿à¤®à¤¿à¤Ÿà¥‡à¤¡ \r\n					'),
(13, '4734492', '918517930978', '3C4Ad926lEKjo8N5PPAaGA', 'Delivered', '2018-01-03T09:44:43.667', 'Hiii		\r\n\r\n\r\n\r\n\r\n\r\n \r\n'),
(14, '4734573', '918517930978', 'p4JqCUmzP0q58jYtqMbchQ', 'Delivered', '2018-01-03T09:49:45.87', 'Parents%20and%20teachers%20meet'),
(15, '4734727', '918517930978', 'OvYkuzcM10uPuefI6Cxcnw', 'Delivered', '2018-01-03T10:00:31.813', 'hii	\r\n\r\n\r\n'),
(16, '4734819', '918517930978', 'xujEAsof0kytSblcHYK6zg', 'Delivered', '2018-01-03T10:04:38.143', 'hii					\r\n					'),
(17, '4738885', '919893388763', 'h6xAUUfX6UO2LFVWTwUT5w', 'Undelivered', '2018-01-03T12:13:20.687', 'Hello Sir\r\nThis is Simption Teh Pvt Ltd Bopal					'),
(18, '4740621', '919584574477', '5iD76SNhVk6VMT2UF6eLTQ', 'Delivered', '2018-01-03T12:45:31.333', 'Your One Time Password (OTP) for School Management Software Registration is 571160.\n Do not share th'),
(19, '4740694', '919584574477', 'oq3EcQBct0WHyy0lqRhDwg', 'Delivered', '2018-01-03T12:47:07.89', 'Your One Time Password (OTP) for School Management Software Registration is 305829.\n Do not share th'),
(20, '4743812', '919753825932', 'wkXV5vYv6UOPxm6bN8ejTA', 'Delivered', '2018-01-03T13:36:10.58', 'Your One Time Password (OTP) for School Management Software Registration is 379522.\n Do not share th'),
(21, '4752293', '919425489825', 'AXoY1SlCVkWzEwJs0nWQUQ', 'Delivered', '2018-01-03T17:22:04.247', 'Your One Time Password (OTP) for School Management Software Registration is 928351.\n Do not share th'),
(22, '4752889', '918871860504', 'Dq51Z15aAkmFwOGoPCbGDw', 'Delivered', '2018-01-03T18:20:38.88', 'Your One Time Password (OTP) for School Management Software Registration is 447272.\n Do not share th'),
(23, '4753343', '919669766758', 'ICxsAsbOnECRU6LhSjPd2A', 'Delivered', '2018-01-03T19:19:13.5', 'Your One Time Password (OTP) for School Management Software Registration is 726827.\n Do not share th'),
(24, '4759518', '919993869967', 'Ul9xe76CtUa5OspIDPodpA', 'Delivered', '2018-01-04T10:46:02.477', 'Your One Time Password (OTP) for School Management Software Registration is 907079.\n Do not share th'),
(25, '4759683', '919926854043', 'rpBvhV6NNkecEBQ82Ty72Q', 'Delivered', '2018-01-04T10:52:18.36', 'Your One Time Password (OTP) for School Management Software Registration is 381208.\n Do not share th'),
(26, '4760503', '919993869967', 'h5SIuHqXHEaR2L4HRYe5BQ', 'Delivered', '2018-01-04T11:16:05.327', 'Your One Time Password (OTP) for School Management Software Registration is 591053.\n Do not share th'),
(27, '4766578', '919144555966', 'STgt6tFkXE6A2VUIw64Oiw', '', '', 'Your One Time Password (OTP) for School Management Software Registration is 320246.\n Do not share th'),
(28, '4778296', '919109589076', 'GXAat61cTUqt9TuZGV504Q', '', '', 'Your One Time Password (OTP) for School Management Software Registration is 741595.\n Do not share th');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `s_no` int(22) NOT NULL,
  `templates_name` varchar(200) NOT NULL,
  `templates_massage_content` varchar(200) NOT NULL,
  `templates_last_modified_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`s_no`, `templates_name`, `templates_massage_content`, `templates_last_modified_date`) VALUES
(1, 'News Message', 'Google News is a free news aggregator provided and operated by Google, selectin', '2017-12-30'),
(2, 'Get together will be done on 12th of january', 'Parents and teachers meet					\r\n					', '2018-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `sports_participate_table`
--

CREATE TABLE `sports_participate_table` (
  `s_no` int(200) NOT NULL,
  `sports_name` varchar(200) NOT NULL,
  `sports_type` varchar(200) NOT NULL,
  `sports_activity` varchar(200) NOT NULL,
  `sports_date` varchar(200) NOT NULL,
  `sports_address` varchar(200) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `student_class` varchar(200) NOT NULL,
  `student_class_section` varchar(100) NOT NULL,
  `student_roll_no` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_participate_table`
--

INSERT INTO `sports_participate_table` (`s_no`, `sports_name`, `sports_type`, `sports_activity`, `sports_date`, `sports_address`, `student_name`, `gender`, `student_class`, `student_class_section`, `student_roll_no`, `father_name`, `contact_no`) VALUES
(2, 'School Kridda', 'School Level', 'Cricket', '26-01-2018', 'Dusherra Maidan Bhopal', 'Ramesh Verma', 'Male', 'NURSERY', 'A', '171904', 'Raman verma', '9632587412'),
(3, 'Badminton', 'School Level', 'Badminton', '24-01-2018', 'School Play Ground', 'Aryan Sharma', 'Male', 'NURSERY', 'A', '1819006', 'Rahul Sharma', '9826824566'),
(4, 'Badminton', 'School Level', 'Badminton', '24-01-2018', 'School Play Ground', 'Raja mishra', 'Male', 'NURSERY', 'A', '171904', 'Rammilan mishra', '9632587412');

-- --------------------------------------------------------

--
-- Table structure for table `sports_table`
--

CREATE TABLE `sports_table` (
  `s_no` int(200) NOT NULL,
  `sports_name` varchar(200) NOT NULL,
  `sports_type` varchar(200) NOT NULL,
  `sports_activity` varchar(200) NOT NULL,
  `sports_date` varchar(200) NOT NULL,
  `sports_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_table`
--

INSERT INTO `sports_table` (`s_no`, `sports_name`, `sports_type`, `sports_activity`, `sports_date`, `sports_address`) VALUES
(1, 'School Kridda', 'School Level', 'Cricket', '26-01-2018', 'Dusherra Maidan Bhopal'),
(3, 'simption cricket tournament', 'School Level', 'cricket', '07-01-2018', 'piplani ground'),
(4, 'Badminton', 'School Level', 'Badminton', '24-01-2018', 'School Play Ground'),
(5, 'Badminton', 'School Level', 'BolleyBall', '24-01-2018', 'School Play Ground'),
(6, 'sport  week', 'School Level', 'Runing', '02-01-2018', 'sagar'),
(8, 'sport  week', 'School Level', 'indoor games', '02-01-2018', 'sagar');

-- --------------------------------------------------------

--
-- Table structure for table `sport_certificate`
--

CREATE TABLE `sport_certificate` (
  `s_no` int(100) NOT NULL,
  `sport_student_name` varchar(200) NOT NULL,
  `sport_type` varchar(200) NOT NULL,
  `sport_organized_date` varchar(200) NOT NULL,
  `sport_rank` varchar(200) NOT NULL,
  `sport_student_roll_no` varchar(100) NOT NULL,
  `student_sport_status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sport_certificate`
--

INSERT INTO `sport_certificate` (`s_no`, `sport_student_name`, `sport_type`, `sport_organized_date`, `sport_rank`, `sport_student_roll_no`, `student_sport_status`) VALUES
(12, 'Rashid khan', 'bbbbdfg', '16-12-2017', '122', '12', 'Active'),
(13, 'Vikash Gupta', 'cricket', '02-01-2018', '1st', '2', 'Active'),
(14, 'Aryan Sharma', 'Badminton', '25-01-2018', '2nd', '1', 'Active'),
(17, 'mardul shrivastava', 'cricket', '04-01-2018', '1st', '2', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `s_no` int(100) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `staff_name` varchar(250) NOT NULL,
  `staff_type` varchar(200) NOT NULL,
  `staff_designation` varchar(200) NOT NULL,
  `emp_rf_id_no` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `intime_01` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `outtime_01` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `01` varchar(10) NOT NULL,
  `intime_02` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_02` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `02` varchar(10) NOT NULL,
  `intime_03` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_03` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `03` varchar(10) NOT NULL,
  `intime_04` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_04` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `04` varchar(10) NOT NULL,
  `intime_05` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_05` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `05` varchar(10) NOT NULL,
  `intime_06` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_06` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `06` varchar(10) NOT NULL,
  `intime_07` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_07` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `07` varchar(10) NOT NULL,
  `intime_08` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_08` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `08` varchar(10) NOT NULL,
  `intime_09` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_09` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `09` varchar(10) NOT NULL,
  `intime_10` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_10` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `10` varchar(10) NOT NULL,
  `intime_11` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_11` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `11` varchar(10) NOT NULL,
  `intime_12` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_12` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `12` varchar(10) NOT NULL,
  `intime_13` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_13` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `13` varchar(10) NOT NULL,
  `intime_14` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_14` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `14` varchar(10) NOT NULL,
  `intime_15` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_15` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `15` varchar(10) NOT NULL,
  `intime_16` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_16` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `16` varchar(10) NOT NULL,
  `intime_17` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_17` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `17` varchar(10) NOT NULL,
  `intime_18` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_18` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `18` varchar(10) NOT NULL,
  `intime_19` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_19` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `19` varchar(10) NOT NULL,
  `intime_20` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_20` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `20` varchar(10) NOT NULL,
  `intime_21` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_21` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `21` varchar(10) NOT NULL,
  `intime_22` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_22` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `22` varchar(10) NOT NULL,
  `intime_23` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_23` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `23` varchar(10) NOT NULL,
  `intime_24` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_24` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `24` varchar(10) NOT NULL,
  `intime_25` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_25` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `25` varchar(10) NOT NULL,
  `intime_26` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_26` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `26` varchar(10) NOT NULL,
  `intime_27` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_27` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `27` varchar(10) NOT NULL,
  `intime_28` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_28` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `28` varchar(10) NOT NULL,
  `intime_29` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_29` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `29` varchar(10) NOT NULL,
  `intime_30` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_30` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `30` varchar(10) NOT NULL,
  `intime_31` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_31` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `31` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`s_no`, `staff_id`, `staff_name`, `staff_type`, `staff_designation`, `emp_rf_id_no`, `date`, `month`, `year`, `intime_01`, `outtime_01`, `01`, `intime_02`, `outtime_02`, `02`, `intime_03`, `outtime_03`, `03`, `intime_04`, `outtime_04`, `04`, `intime_05`, `outtime_05`, `05`, `intime_06`, `outtime_06`, `06`, `intime_07`, `outtime_07`, `07`, `intime_08`, `outtime_08`, `08`, `intime_09`, `outtime_09`, `09`, `intime_10`, `outtime_10`, `10`, `intime_11`, `outtime_11`, `11`, `intime_12`, `outtime_12`, `12`, `intime_13`, `outtime_13`, `13`, `intime_14`, `outtime_14`, `14`, `intime_15`, `outtime_15`, `15`, `intime_16`, `outtime_16`, `16`, `intime_17`, `outtime_17`, `17`, `intime_18`, `outtime_18`, `18`, `intime_19`, `outtime_19`, `19`, `intime_20`, `outtime_20`, `20`, `intime_21`, `outtime_21`, `21`, `intime_22`, `outtime_22`, `22`, `intime_23`, `outtime_23`, `23`, `intime_24`, `outtime_24`, `24`, `intime_25`, `outtime_25`, `25`, `intime_26`, `outtime_26`, `26`, `intime_27`, `outtime_27`, `27`, `intime_28`, `outtime_28`, `28`, `intime_29`, `outtime_29`, `29`, `intime_30`, `outtime_30`, `30`, `intime_31`, `outtime_31`, `31`) VALUES
(1, '101', 'Rahul Sharma', 'Teaching', 'Lec', '0020862855', '0000-00-00', '12', '2017', '2017-12-27 08:03:17', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-12-27 08:03:14', '2017-12-27 08:03:17', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, '102', 'Ramesh Gupta', 'Teaching', 'Senior Lecture', 'RF 1002', '0000-00-00', '01', '2018', '2018-01-04 06:34:44', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 11:42:22', '0000-00-00 00:00:00', 'P', '2018-01-04 12:04:44', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(3, '104', 'Nk Thomas', 'Teaching', 'Sr Lecturer', '', '0000-00-00', '01', '2018', '2018-01-04 06:34:44', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 11:42:22', '0000-00-00 00:00:00', 'A', '2018-01-04 12:04:44', '0000-00-00 00:00:00', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(4, '106', 'Neha soni', 'Teaching', 'middle class teacher', '0003348073', '0000-00-00', '01', '2018', '2018-01-04 06:34:44', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 11:42:22', '0000-00-00 00:00:00', 'P', '2018-01-04 12:04:44', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_buy_table_1`
--

CREATE TABLE `stock_buy_table_1` (
  `s_no` int(100) NOT NULL,
  `item_product_name` varchar(100) NOT NULL,
  `item_quantity` varchar(100) NOT NULL,
  `item_purchase_rate` varchar(100) NOT NULL,
  `total_purchase_amount` varchar(100) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `contact_person_name` varchar(100) NOT NULL,
  `purchase_status` varchar(100) NOT NULL,
  `total_stock` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_buy_table_1`
--

INSERT INTO `stock_buy_table_1` (`s_no`, `item_product_name`, `item_quantity`, `item_purchase_rate`, `total_purchase_amount`, `shop_name`, `contact_person_name`, `purchase_status`, `total_stock`) VALUES
(1, 'Belt', '48', '50', '2500', 'Mohan Shop', 'Mohan Sharma', 'Active', '50'),
(2, 'shirt', '49', '500', '25000', 'abc', 'amit jain', 'Active', '50'),
(3, 'School Socks', '20', '50', '1000', 'Kirti Accesories', 'Ravi Jadhav', 'Active', '20'),
(4, 'sports item', '10', '1200', '12000', 'Reebook showroom', 'Ritesh kumar ', 'Deleted', '10'),
(5, 'sports glubs', '10', '50', '500', 'Reebook showroom', 'Ritesh kumar ', 'Active', '10'),
(6, 'chairs', '20', '450', '22500', 'neelkamal showroom ', 'Rajendra kumar ', 'Active', '50');

-- --------------------------------------------------------

--
-- Table structure for table `stock_item_table`
--

CREATE TABLE `stock_item_table` (
  `s_no` int(100) NOT NULL,
  `item_product_name` varchar(100) NOT NULL,
  `item_brand_name` varchar(100) NOT NULL,
  `item_description` varchar(100) NOT NULL,
  `item_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_item_table`
--

INSERT INTO `stock_item_table` (`s_no`, `item_product_name`, `item_brand_name`, `item_description`, `item_status`) VALUES
(1, 'Belt', 'Nike', 'Belt for Schooling Uniform', 'Active'),
(2, 'shirt', 'nike', 'school uniform', 'Active'),
(3, 'School Socks', 'Cambridge School', '4585', 'Active'),
(4, 'sports item', 'Reebook', 'football cricket bat and net', 'Deleted'),
(5, 'sports glubs', 'Reebook', 'cricket glubs', 'Active'),
(6, 'chairs', 'neelkamal', 'full size ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `stock_sale_table`
--

CREATE TABLE `stock_sale_table` (
  `s_no` int(200) NOT NULL,
  `item_product_name` varchar(200) NOT NULL,
  `item_quantity` varchar(200) NOT NULL,
  `item_sales_rate` varchar(200) NOT NULL,
  `total_amount` varchar(200) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `student_father_name` varchar(200) NOT NULL,
  `student_class` varchar(200) NOT NULL,
  `student_roll_no` varchar(200) NOT NULL,
  `sale_status` varchar(200) NOT NULL DEFAULT 'Active',
  `stock_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_sale_table`
--

INSERT INTO `stock_sale_table` (`s_no`, `item_product_name`, `item_quantity`, `item_sales_rate`, `total_amount`, `student_name`, `student_father_name`, `student_class`, `student_roll_no`, `sale_status`, `stock_id`) VALUES
(1, 'Belt', '2', '100', '200', '1', 'Raman verma', 'NURSERY', '171904', 'Active', '1'),
(2, 'shirt', '1', '500', '500', '18', 'Mahesh Chand Gupta', '10TH', '1831003', 'Active', '2'),
(5, 'chairs', '30', '500', '15000', '20', 'sanjay shrivastava', '3RD', '1824008', 'Active', '6');

-- --------------------------------------------------------

--
-- Table structure for table `student_admission_info`
--

CREATE TABLE `student_admission_info` (
  `s_no` int(100) NOT NULL,
  `student_id_generate` varchar(100) DEFAULT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_father_name` varchar(100) NOT NULL,
  `student_mother_name` varchar(100) DEFAULT NULL,
  `student_class` varchar(100) NOT NULL,
  `student_class_section` varchar(100) DEFAULT NULL,
  `student_roll_no` varchar(100) DEFAULT NULL,
  `school_roll_no` varchar(100) DEFAULT NULL,
  `student_date_of_birth` varchar(100) DEFAULT NULL,
  `student_date_of_birth_month` varchar(20) DEFAULT NULL,
  `student_date_of_birth_date` varchar(200) DEFAULT NULL,
  `student_gender` varchar(100) NOT NULL,
  `student_handicapped` varchar(100) DEFAULT NULL,
  `student_religion` varchar(100) DEFAULT NULL,
  `student_category` varchar(100) DEFAULT NULL,
  `student_rf_id_number` varchar(100) DEFAULT NULL,
  `student_adhar_number` varchar(100) DEFAULT NULL,
  `student_father_adhar_card_number` varchar(100) DEFAULT NULL,
  `student_sssmid_number` varchar(100) DEFAULT NULL,
  `student_family_id` varchar(100) DEFAULT NULL,
  `student_child_id` varchar(100) DEFAULT NULL,
  `student_father_bank_name` varchar(100) DEFAULT NULL,
  `student_father_bank_account_number` varchar(100) DEFAULT NULL,
  `student_father_bank_ifsc_code` varchar(100) DEFAULT NULL,
  `student_bank_name` varchar(100) DEFAULT NULL,
  `student_account_number` varchar(100) DEFAULT NULL,
  `student_bank_ifsc_code` varchar(100) DEFAULT NULL,
  `student_admission_type` varchar(100) NOT NULL,
  `stuent_old_or_new` varchar(100) NOT NULL,
  `student_medium` varchar(100) NOT NULL,
  `student_date_of_admission` varchar(100) DEFAULT NULL,
  `student_date_of_birth_in_word` varchar(100) DEFAULT NULL,
  `student_previous_class` varchar(100) DEFAULT NULL,
  `student_previous_school_name` varchar(100) DEFAULT NULL,
  `student_admission_scheme` varchar(100) DEFAULT NULL,
  `student_sibling_name_1` varchar(100) DEFAULT NULL,
  `student_sibling_unique_id_1` varchar(100) DEFAULT NULL,
  `student_sibling_name_2` varchar(100) DEFAULT NULL,
  `student_sibling_unique_id_2` varchar(100) DEFAULT NULL,
  `student_admission_number` varchar(100) DEFAULT NULL,
  `student_scholar_number` varchar(100) DEFAULT NULL,
  `student_father_contact_number` varchar(100) DEFAULT NULL,
  `student_father_email_id` varchar(100) DEFAULT NULL,
  `student_mother_contact_number` varchar(100) DEFAULT NULL,
  `student_mother_email_id` varchar(100) DEFAULT NULL,
  `student_father_occupation` varchar(100) DEFAULT NULL,
  `student_mother_occupation` varchar(100) DEFAULT NULL,
  `student_contact_number` varchar(100) DEFAULT NULL,
  `student_email_id` varchar(100) DEFAULT NULL,
  `student_adress` varchar(2000) DEFAULT NULL,
  `student_last_passed_marksheet` varchar(1000) DEFAULT NULL,
  `student_tc` varchar(1000) DEFAULT NULL,
  `student_income_certificate` varchar(1000) DEFAULT NULL,
  `student_caste_certificate` varchar(1000) DEFAULT NULL,
  `student_dob_certificate` varchar(1000) DEFAULT NULL,
  `student_photo` varchar(1000) DEFAULT NULL,
  `student_parents_photo` varchar(1000) DEFAULT NULL,
  `student_facility` varchar(100) DEFAULT NULL,
  `student_status` varchar(100) NOT NULL DEFAULT 'Deactive',
  `registration_final` varchar(20) NOT NULL DEFAULT 'no',
  `student_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_admission_info`
--

INSERT INTO `student_admission_info` (`s_no`, `student_id_generate`, `student_name`, `student_father_name`, `student_mother_name`, `student_class`, `student_class_section`, `student_roll_no`, `school_roll_no`, `student_date_of_birth`, `student_date_of_birth_month`, `student_date_of_birth_date`, `student_gender`, `student_handicapped`, `student_religion`, `student_category`, `student_rf_id_number`, `student_adhar_number`, `student_father_adhar_card_number`, `student_sssmid_number`, `student_family_id`, `student_child_id`, `student_father_bank_name`, `student_father_bank_account_number`, `student_father_bank_ifsc_code`, `student_bank_name`, `student_account_number`, `student_bank_ifsc_code`, `student_admission_type`, `stuent_old_or_new`, `student_medium`, `student_date_of_admission`, `student_date_of_birth_in_word`, `student_previous_class`, `student_previous_school_name`, `student_admission_scheme`, `student_sibling_name_1`, `student_sibling_unique_id_1`, `student_sibling_name_2`, `student_sibling_unique_id_2`, `student_admission_number`, `student_scholar_number`, `student_father_contact_number`, `student_father_email_id`, `student_mother_contact_number`, `student_mother_email_id`, `student_father_occupation`, `student_mother_occupation`, `student_contact_number`, `student_email_id`, `student_adress`, `student_last_passed_marksheet`, `student_tc`, `student_income_certificate`, `student_caste_certificate`, `student_dob_certificate`, `student_photo`, `student_parents_photo`, `student_facility`, `student_status`, `registration_final`, `student_password`) VALUES
(1, '39', 'Raja mishra', 'Rammilan mishra', 'kavita mishra', 'NURSERY', 'A', '171904', '4', '2014-01-06', NULL, NULL, 'Male', 'No', 'Hindu', 'General', '0003346566', '521478963214', '563214789652', '456987125', '56987415', '45263987', 'State Bank', '32145698745', 'SBIN012345', 'Punjab National Bank', '497100150652110', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Sixth January Two Thousand Fourteen', 'NONE', 'saraswati vidhya mandir', 'Government', '', '', '', '', '140245', '245140', '9632587412', 'raman@gmail.com', '9632587412', 'sangita@gmail.com', 'Doctor', 'House Wife', '8523697412', 'ramesh@gmail.com', 'Anand Nagar', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'images (5).jpg', 'images (11).jpg', NULL, 'Active', 'yes', 'password'),
(2, '40', 'Vikram singh', 'Amresh Singh', 'Ritika Singh', 'LKG', 'A', '172006', '2', '2014-01-08', NULL, NULL, 'Male', 'No', 'Hindu', 'General', '0003348448', '546321789654', '546352789654', '145263', '415263', '145263', 'State Bank of India', '32561498745', 'SBIN012346', 'ICICI Bank', '312560045687', 'ICIC01245', 'Regular', 'New', 'English', '2017-12-29', 'Eighth January Two Thousand Fourteen', 'NURSERY', 'Saint Joseph School', 'Government', '', '', '', '', '100202', '100265', '8693254125', 'vikram@gmail.com', '9635487412', 'ritika@gmail.com', 'Business ', 'Primary Teacher', '963248412', 'vikram@gmail.com', 'Narela Shankari, Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'images (6).jpg', 'images (11).jpg', NULL, 'Active', 'yes', 'password'),
(3, '41', 'Samrat Yadav', 'vivek Yadav', 'Shanti Yadav', 'UKG', 'A', '172106', '1', '2013-04-12', NULL, NULL, 'Male', 'No', 'Hindu', 'OBC', 'RF 7', '56546666464646', '5646464646464', '41526398', '1452639', '145263985', 'Bank of India', '415263968574', 'BOI4152639685', 'Punjab National Bank', '445644646464644', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Twelfth April Two Thousand Thirteen', 'LKG', 'Shanti Niketan Aawasiya Vidhyalaya', 'Government', 'Mohan Khanna', '173101', 'Ritesh Bhagmare', '173001', '405063', '203065', '9874563112', 'vivek@gmail.com', '963258742', 'shanti@gmail.com', 'Engineer', 'House Wife', '7825416548', 'samarat@gmail.com', 'Narela Shankari, Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'download.jpg', 'parents1 (1).jpg', NULL, 'Active', 'yes', 'password'),
(4, '42', 'Vishakha Singh', 'Bindu Singh', 'Sarita Singh', '1ST', 'A', '172203', '1', '2013-04-22', NULL, NULL, 'Female', 'No', 'Hindu', 'General', 'RF 8', '5446464464646464', '5656464646456', '4152632563', '4152632563', '4152632563', 'State Bank of Indore', '355588787585', 'SBIIN012345', 'Punjab National Bank', '58858587578585', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Twenty Second April Two Thousand Thirteen', 'UKG', 'Vishwa bharti school', 'Government', 'Sneha Raj', '172007', 'Madhu Yadav', '172307', '1452636', '1452636', '9874563123', 'bindu@gmail.com', '9144555977', 'sarita@gmail.com', 'Doctor', 'House Wife', '919144555977', 'vishakha@gmail.com', 'Rajeev Nagar, Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'images (7).jpg', 'parents1 (2).jpg', NULL, 'Active', 'yes', 'password'),
(5, '43', 'Madhu Yadav', 'Bhagwan  yadav', 'Nirmala Devi yavad', '2ND', 'A', '172307', '1', '2013-04-24', NULL, NULL, 'Female', 'No', 'Hindu', 'OBC', 'RF 5', '5435436545465', '53563535543543', '4152636', '45859674', '14526398', 'Bank of Baroda', '919713002204', 'BOB-415263', 'ICICI Bank', '341313464646442', 'ICIC01245', 'Regular', 'New', 'English', '2017-12-29', 'Twenty Fourth April Two Thousand Thirteen', '1ST', '', 'Government', 'Sneha Raj', '172007', 'Mohan Khanna', '173101', '4152639', '4152636', '9874663123', 'bhagwan@gmail.com', '8236697412', 'nirmala@gmail.com', 'Government Service', 'House Wife', '9713002205', 'madhu@gmail.com', 'Kamla Nagar , Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'images (2).jpg', 'parents1 (2).jpg', NULL, 'Active', 'yes', 'password'),
(6, '44', 'Sneha Sharma', 'Brijesh Sharma', 'Devmata Sharma', '3RD', 'A', '172407', '2', '2013-04-02', NULL, NULL, 'Female', 'No', 'Hindu', 'General', '0003348073', '563214563214', '56321456547', '225263', '2563415', '25639856', 'Ratnakar bank', '32145698714', 'Ratn458962', 'Punjab National Bank', '32145698712', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Second April Two Thousand Thirteen', '2ND', 'shant paul english medim school', 'Government', 'Aman kapoor', '172901', 'Vikram singh', '172006', '452631', '785462', '9884663123', 'brijesh@gmail.com', '9696587454', 'devmata@gmail.com', 'Doctor', 'House Wife', '9256321478', 'sneha123@gmail.com', 'Narela Shankari, Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'download (4).jpg', 'parents5 (2).jpg', NULL, 'Active', 'yes', 'password'),
(7, '45', 'Aaisha Jain', 'Aditya Jain', NULL, '4TH', 'A', '172506', NULL, '2015-05-21', NULL, NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Regular', 'New', 'English', '2017-12-29', 'Twenty First May Two Thousand Fifteen', NULL, NULL, 'Government', NULL, NULL, NULL, NULL, NULL, NULL, '9784663123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images (5).jpg', 'images (13).jpg', NULL, 'Deactive', 'no', 'password'),
(8, '46', 'Arzoo Khatoon', 'Nazrul Islam', 'Shehnaj Hussain', '5TH', 'A', '172607', '1', '2015-05-19', NULL, NULL, 'Female', 'No', 'Hindu', 'OBC', 'RF 14', '563214565412', '563214789632', '456239874', '41526396', '41526985', 'State Bank', '56321456541', 'SBIN012345', 'Punjab National Bank', '56321456326', 'PUNB0497100', 'Regular', 'Old', 'English', '2017-12-29', 'Nineteenth May Two Thousand Fifteen', '4TH', 'Vishwa bharti school', 'Government', 'Madhu Yadav', '172307', 'Sneha Sharma', '172407', '14', '14', '9784863123', 'nazrul@gmail.com', '0826986937', 'shehnaj@gmail.com', 'Farmer', 'House Wife', '8269869375', 'aarzoo@gmail.com', 'Narela Shankari, Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'download (4).jpg', 'download (7) - Copy.jpg', NULL, 'Active', 'yes', 'password'),
(9, '47', 'Vishal Kharat', 'Jagdish Kharat', 'Sushmita Kharat', '6TH', 'A', '172701', '2', '2015-05-23', NULL, NULL, 'Male', 'No', 'Hindu', 'SC', 'RF 12', '563214541236', '654123987456', '45126399', '65254152', '659857452', 'hindustan bank', '919635865412', 'hind45623', 'ICICI Bank', '32145698745', 'ICIC01245', 'Regular', 'New', 'English', '2017-12-29', 'Twenty Third May Two Thousand Fifteen', '5TH', 'Saint Joseph School', 'Government', 'Amrita Kaur', '172801', 'Samrat Yadav', '172106', '4526398', '45263665', '9284863123', 'jagdish@gmail.com', '9144555977', 'sushmita@gmail.com', 'Business ', 'Primary School Teacher', '8523694223', 'vishal@gmail.com', 'Chunna Bhatti Kolar Road, Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'download.jpg', 'download (3).jpg', NULL, 'Active', 'yes', 'password'),
(10, '48', 'Amrita Kaur', 'Daljit kaur', 'Preet Kaur', '7TH', 'A', '172801', '1', '2015-05-23', NULL, NULL, 'Female', 'No', 'Hindu', 'General', 'RF 11', '566655646464', '555664646445', '4545256315', '556234152', '452636521', 'State Bank', '654654646464', 'SBIN012345', 'Punjab National Bank', '566646464646', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Twenty Third May Two Thousand Fifteen', '6TH', 'Sagar public school', 'Government', 'Rakesh Chaubey', '171905', 'Sneha Raj', '172007', '11', '11', '9284863123', 'daljit@gmail.com', '8965321478', 'preet@gmail.com', 'Doctor', 'House Wife', '8269869374', 'amrita@gmail.com', 'Chunna Bhatti Kolar Road, Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'images (3).jpg', 'images.jpg', NULL, 'Active', 'yes', 'password'),
(11, '49', 'Aman kapoor', 'Rishi Kapoor', 'Nidhi kapoor', '8TH', 'A', '172901', '1', '2015-07-23', NULL, NULL, 'Male', 'No', 'Hindu', 'OBC', 'RF 9', '54655545646', '546546655465', '456987', '664521', '5241854', 'State Bank', '5565656546555', 'SBIN012345', 'Punjab National Bank', '565556565654644', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Twenty Third July Two Thousand Fifteen', '7TH', 'shant jhosph convent school ', 'Government', 'Vishakha Singh', '172203', 'Samrat Yadav', '172106', '45896', '524163', '9284563123', 'rishi@gmail.com', '8305066605', 'nidhi@gmail.com', 'Business ', 'Teacher', '09144555977', 'aman@gmail.com', 'Anand Nagar', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'images (6).jpg', 'download (7) - Copy.jpg', NULL, 'Active', 'yes', 'password'),
(12, '50', 'Ritesh Bhagmare', 'Shiv Shankar Bhagmare', 'Supriya Bhagmare', '9TH', 'A', '173001', '1', '2015-02-23', NULL, NULL, 'Male', 'No', 'Hindu', 'SC', 'RF 6', '458796253654', '458967123633', '564857', '857412', '52413986', 'State Bank', '3131614614614', 'SBIN012345', 'Punjab National Bank', '4971646464646', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Twenty Third February Two Thousand Fifteen', '8TH', 'Sp jain gurukul school', 'Government', 'Madhu Yadav', '172307', 'Madhu Yadav', '172307', '45623984', '4521896', '9254563123', 'shivshankar@gmail.com', '8522967422', 'supriya@gmail.com', 'farmer', 'House Wife', '9713002205', 'ritesh@gmail.com', 'Indrprashat colony House no 445 vidisha', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'download.jpg', 'parents5 (1).jpg', NULL, 'Active', 'yes', 'password'),
(13, '51', 'Abhiraj  Khanna', 'Sudhir Khanna', 'Savitri Khanna', '10TH', 'A', '173101', '1', '2015-02-21', NULL, NULL, 'Male', 'No', 'Hindu', 'OBC', 'RF 3', '563214789654', '512364896557', '7485621', '9685723', '54129683', 'ICICI Bank', '32145698745', 'ICIC012345', 'Punjab National Bank', '4971001500144115', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Second February Two Thousand Fifteen', '9TH', 'DAV Public School', 'Government', 'Ramesh Verma', '171904', '', '', '450596', '5024896', '9254563113', 'sudhir@gmail.com', '8521456478', 'savitri@gmail.com', 'Actor', 'Actress', '7050521623', 'abhiraj@gmail.com', 'civil line kabir nirala galli Indore', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'images (5).jpg', 'images (9).jpg', NULL, 'Active', 'yes', 'password'),
(14, '52', 'sumit  Chaubey', 'Vikash Chaubey', 'Anita Chaubey', 'NURSERY', 'A', '171905', '5', '2014-01-02', NULL, NULL, 'Male', 'No', 'Hindu', 'General', '0003440989', '5344646465465', '53354345368', '458967', '9685962', '52648555', 'State Bank', '325454654353', 'SBIN012345', 'Punjab National Bank', '355353538969', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Second January Two Thousand Fourteen', 'NONE', 'play school sagar', 'Government', 'Vishakha Singh', '172203', 'Madhu Yadav', '172307', '4452896', '132639', '9632587412', 'vikash@gmail.com', '8523107654', 'anita@gmail.com', 'Property Dealer', 'House Wife', '7845129632', 'sumit@gmail.com', 'Kolar Road, Bhopal', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'download (1).jpg', 'download (7) - Copy.jpg', NULL, 'Active', 'yes', 'password'),
(15, '53', 'Sneha Raj', 'Anil yadav', 'Lalita Yadav', 'LKG', 'A', '172007', '1', '2013-11-18', NULL, NULL, 'Female', 'No', 'Hindu', 'OBC', '0003348822', '563214789654', '541236987456', '96857415', '526369', '214263', 'State Bank', '325641254654', 'SBIN054346', 'Punjab National Bank', '4546646464647654', 'PUNB0497100', 'Regular', 'New', 'English', '2017-12-29', 'Eighteenth November  One', 'NURSERY', 'play school sagar', 'Government', 'Vikram singh', '172006', 'Mohan Khanna', '173101', '122436', '61218', '9893182194', 'anil@gmail.com', '9636587412', 'lalita@gmail.com', 'Doctor', 'House Wife', '08305066605', 'sneha@gmail.com', 'Rajeev nagar colony', 'marksheer.jpg', 'tc.jpg', 'income.jpg', 'caste.jpg', 'birth.jpg', 'downloajikd.jpg', 'parents1 (1).jpg', NULL, 'Active', 'yes', 'password'),
(16, '54', 'vicky', 'vicky', NULL, 'LKG', 'A', '172008', NULL, '', NULL, NULL, 'Male', NULL, NULL, NULL, '0003349194', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Regular', 'New', 'English', '2017-12-29', NULL, NULL, NULL, 'Government', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Deleted', 'no', 'password'),
(17, '55', 'Pranaav  Gupta', 'Mahesh Chand Gupta', 'Geeta gupta', '10TH', 'A', '1831002', '2', '1996-03-15', NULL, NULL, 'Male', 'No', 'Hindu', 'General', '123456', '123456789', '123456789', '45698712', '3672106', '142842', 'SBI', '123456789', '123456', 'PNB', '123456789', '123456', 'Regular', 'New', 'English', '2018-01-02', 'Fifteenth March Ninteen Hundred Ninety Six', '9TH', 'saraswati vidhya Mandir  Ashok nagar', 'Government', '', '', '', '', '123456', '12345', '9752144856', 'abc@gmail.com', '12345678', 'abc@gmail.com', 'Government employ ', 'teacher ', '9752144856', 'abc@gmail.com', 'kalam house bagsimaniya Bhopal', '', '', '', '', '', 'images (2).jpg', 'download (7) - Copy.jpg', NULL, 'Active', 'yes', 'password'),
(18, '56', 'vipul shrma', 'surendra kumar shrma', 'vinita shrma', '10TH', 'A', '1831003', '3', '1996-03-15', NULL, NULL, 'Male', 'No', 'Hindu', 'General', '123456', '145263968571', '2456396857445', '163264', '122550', '336526', 'state bank of India', '6091001500009563', 'sbi 609100', 'state bank of India', '6091001500009564', 'sbi609100', 'Regular', 'New', 'English', '2018-01-02', 'Fifteenth March Ninteen Hundred Ninety Six', '9TH', 'Deevik vidhya mandir school', 'Government', 'Aryan Sharma', '1819006', '', '', '123566', '66321', '7509635241', 'surendra@gmail.com', '7509635242', 'vinitashrma11@gmail.com', 'goverment employ ', 'homemaker', '750635241', 'vipul@gmail.com', '', 'download (7).jpg', 'download (9).jpg', 'images (1).jpg', 'download (3).jpg', 'download (7).jpg', 'images (11).jpg', 'parents1 (2).jpg', NULL, 'Active', 'yes', 'password'),
(19, '57', 'Aryan Sharma', 'Rahul Sharma', 'Surbhi Sharma', 'NURSERY', 'A', '1819006', '1', '2004-12-24', NULL, NULL, 'Male', 'No', 'Hindu', 'General', '', '9858457888898', '7897988797977', '798798797', '987977797', '8797979777', '98797779877', '79879797979', 'Sbi589658', 'SBi', '63024563214', 'Sbi896523', 'Regular', 'Old', 'English', '2018-01-02', 'Twenty Fourth December Two Thousand Four', 'NONE', 'TRGPS', 'Government', '', '', '', '', '1234', '2582', '9826824566', 'Rahul@yahoo.com', '9926589665', 'Surbhi@yahoo.com', 'Buisness', 'Teacher', '', 'Aryan@yahoo.com', 'Kolar Road Bhopal', '', '', '', '', '', '3738852-boy-images.jpg', 'parents1 (1).jpg', NULL, 'Active', 'yes', 'password'),
(20, '58', 'mardul shrivastava', 'sanjay shrivastava', 'sangeeta shrivastava', '3RD', 'A', '1824008', '1', '1996-06-11', NULL, NULL, 'Male', 'No', 'Hindu', 'General', '456123', '124563968574', '214563968574', '451265456', '45125', '142525', 'state ban of India', '451263968574', 'Sbi451263', 'state bank of India ', '4569871525', 'sbi451263', 'Regular', 'New', 'English', '2018-01-02', 'Eleventh June Ninteen Hundred Ninety Six', '2ND', 'holy family convent school ', 'Non-Government', '', '', '', '', '46123', '45621398', '8109236054', 'sanjayshri@gmail.com', '81452636254', 'saggeeta@gmail.com', 'lawyer', 'Homemaker', '8109236056', 'mardulshri@gmail.com', 'nanak ward khurai sagar mp', 'download (1).jpg', 'download (2).jpg', 'download (3).jpg', 'download (7).jpg', 'download (8).jpg', 'images (12).jpg', 'images (12).jpg', NULL, 'Active', 'yes', 'password'),
(21, '59', 'Raj ', 'Ramesh kumar sahu', 'suwati sahu', 'NURSERY', 'A', '1819007', '3', '2018-01-03', NULL, NULL, 'Male', 'No', 'Hindu', 'OBC', '', '5874961526', '5869741526', '54623987', '45612312', '6985741526', 'punjab National Bank', '60910050002635', 'pnb609100', 'punjab National Bank', '60910050002645', 'pnb609100', 'Regular', 'New', 'English', '2018-01-03', 'Third January Two Thousand Eighteen', '', 'government school ', 'Non-Government', '', '', '', '', '456987152636', '4526312899', '9584574477', 'rameshkumar@gmail.com', '9584574478', 'suwati@gmail.com', 'teacher', 'teacher', '995623857415', 'raj@gmail.com', '', 'download (1).jpg', 'download (9).jpg', 'download (3).jpg', 'download (7).jpg', 'images.jpg', 'images (11).jpg', 'parents5 (2).jpg', NULL, 'Active', 'yes', 'password'),
(22, '60', 'Harsh kumar Agrwal', 'Hement kumar Agrwal', 'Vidhya Agrwal', 'NURSERY', 'A', '1819008', '2', '2018-01-18', NULL, NULL, 'Male', 'No', 'Hindu', 'General', '', '544563256314', '542636524152', '45623984', '415896744', '4562365', 'union bank of India', '550452632541', 'ubi-2563', 'union bank of India', '550452632542', 'ubi-2563', 'Regular', 'New', 'English', '2018-01-03', 'Eighteenth January Two Thousand Eighteen', 'NURSERY', 'model public school ', 'Government', '', '', '', '', '45698715', '45698714', '9893178542', 'hement@gmail.com', '9685741526', 'vidhya234@gmail.com', 'Bussiness', 'Teacher', '9685742536', 'harsh@gmail.com', '', 'download (7).jpg', 'download (9).jpg', 'download (7).jpg', 'download (1).jpg', 'images.jpg', 'images (2).jpg', 'parents1 (1).jpg', NULL, 'Active', 'yes', 'password'),
(23, '61', 'Satyam ', 'Rakesh singh', 'Sangita singh', '6TH', 'A', '1827002', '1', '2007-01-01', NULL, NULL, 'Male', 'No', 'Hindu', 'OBC', '', '4561239877813', '4563217895612', '4152639685', '4512639685', '452631452', 'Central Bank of India', '63295685741525', 'cbi4561', 'central Bank of India', '63295685741525', 'cbi4561', 'Regular', 'New', 'English', '2018-01-04', 'First January Two Thousand Five', '5TH', 'public school vidisha ', 'Non-Government', 'Arzoo Khatoon', '172607', 'Pranaav  Gupta', '1831002', '1452636669', '1452639855', '99568574152', 'rakesh@gmail.com', '996585741525', 'sangita@gmail.com', 'bussiness', 'teacher', '99568574155', 'satyam@gmail.com', '', 'download (7).jpg', 'download (9).jpg', 'images (1).jpg', 'download (1).jpg', 'images.jpg', 'images (12).jpg', 'parents1 (1).jpg', NULL, 'Active', 'yes', 'password'),
(24, '62', 'pappu', 'Ramkumar', NULL, '6TH', 'A', '1827003', NULL, '2003-02-01', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Regular', 'New', 'Hindi', '2018-01-04', 'First February Two Thousand Three', NULL, NULL, 'Non-Government', NULL, NULL, NULL, NULL, NULL, NULL, '56998885585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Deactive', 'no', 'password'),
(25, '63', 'Somya nema', 'Suresh kumar nema', 'Anjli nema', '7TH', 'A', '1828002', '2', '2005-05-25', NULL, NULL, 'Female', 'No', 'Hindu', 'General', '', '54126396852', '5412646972', '4569874', '400512', '411526', 'State bank of India', '50004503321', 'sbi5004', 'Punjab National Bank ', '500045003356', 'sbi5004', 'Regular', 'New', 'English', '2018-01-05', 'Twenty Fifth May Two Thousand Five', '6TH', 'Holy family convent sr sec school vidisha', 'Non-Government', '', '', '', '', '450562', '800812', '9926565857', 'sureshnema22@gmail.com', '9926565456', 'anjlinema33@gmail.com', 'Bussiness', 'Lawyer', '9685745262', 'somya321@gmail.com', 'Near hemant takies station road vidisha', 'download (1).jpg', 'download (3).jpg', 'download (7).jpg', 'download (1).jpg', 'images.jpg', 'images (9).jpg', 'parents1 (1).jpg', NULL, 'Active', 'yes', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `s_no` int(100) NOT NULL,
  `attendance_roll_no` varchar(200) NOT NULL,
  `attendance_name` varchar(250) NOT NULL,
  `attendance_class` varchar(200) NOT NULL,
  `attendance_section` varchar(200) NOT NULL,
  `attendance_rf_id_no` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `intime_01` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `outtime_01` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `01` varchar(10) NOT NULL,
  `intime_02` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_02` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `02` varchar(10) NOT NULL,
  `intime_03` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_03` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `03` varchar(10) NOT NULL,
  `intime_04` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_04` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `04` varchar(10) NOT NULL,
  `intime_05` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_05` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `05` varchar(10) NOT NULL,
  `intime_06` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_06` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `06` varchar(10) NOT NULL,
  `intime_07` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_07` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `07` varchar(10) NOT NULL,
  `intime_08` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_08` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `08` varchar(10) NOT NULL,
  `intime_09` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_09` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `09` varchar(10) NOT NULL,
  `intime_10` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_10` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `10` varchar(10) NOT NULL,
  `intime_11` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_11` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `11` varchar(10) NOT NULL,
  `intime_12` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_12` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `12` varchar(10) NOT NULL,
  `intime_13` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_13` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `13` varchar(10) NOT NULL,
  `intime_14` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_14` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `14` varchar(10) NOT NULL,
  `intime_15` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_15` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `15` varchar(10) NOT NULL,
  `intime_16` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_16` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `16` varchar(10) NOT NULL,
  `intime_17` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_17` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `17` varchar(10) NOT NULL,
  `intime_18` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_18` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `18` varchar(10) NOT NULL,
  `intime_19` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_19` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `19` varchar(10) NOT NULL,
  `intime_20` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_20` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `20` varchar(10) NOT NULL,
  `intime_21` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_21` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `21` varchar(10) NOT NULL,
  `intime_22` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_22` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `22` varchar(10) NOT NULL,
  `intime_23` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_23` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `23` varchar(10) NOT NULL,
  `intime_24` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_24` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `24` varchar(10) NOT NULL,
  `intime_25` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_25` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `25` varchar(10) NOT NULL,
  `intime_26` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_26` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `26` varchar(10) NOT NULL,
  `intime_27` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_27` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `27` varchar(10) NOT NULL,
  `intime_28` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_28` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `28` varchar(10) NOT NULL,
  `intime_29` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_29` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `29` varchar(10) NOT NULL,
  `intime_30` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_30` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `30` varchar(10) NOT NULL,
  `intime_31` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `outtime_31` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `31` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`s_no`, `attendance_roll_no`, `attendance_name`, `attendance_class`, `attendance_section`, `attendance_rf_id_no`, `date`, `month`, `year`, `intime_01`, `outtime_01`, `01`, `intime_02`, `outtime_02`, `02`, `intime_03`, `outtime_03`, `03`, `intime_04`, `outtime_04`, `04`, `intime_05`, `outtime_05`, `05`, `intime_06`, `outtime_06`, `06`, `intime_07`, `outtime_07`, `07`, `intime_08`, `outtime_08`, `08`, `intime_09`, `outtime_09`, `09`, `intime_10`, `outtime_10`, `10`, `intime_11`, `outtime_11`, `11`, `intime_12`, `outtime_12`, `12`, `intime_13`, `outtime_13`, `13`, `intime_14`, `outtime_14`, `14`, `intime_15`, `outtime_15`, `15`, `intime_16`, `outtime_16`, `16`, `intime_17`, `outtime_17`, `17`, `intime_18`, `outtime_18`, `18`, `intime_19`, `outtime_19`, `19`, `intime_20`, `outtime_20`, `20`, `intime_21`, `outtime_21`, `21`, `intime_22`, `outtime_22`, `22`, `intime_23`, `outtime_23`, `23`, `intime_24`, `outtime_24`, `24`, `intime_25`, `outtime_25`, `25`, `intime_26`, `outtime_26`, `26`, `intime_27`, `outtime_27`, `27`, `intime_28`, `outtime_28`, `28`, `intime_29`, `outtime_29`, `29`, `intime_30`, `outtime_30`, `30`, `intime_31`, `outtime_31`, `31`) VALUES
(1, '171904', 'Ramesh Verma', 'NURSERY', 'A', 'RF 1', '0000-00-00', '12', '2017', '2017-12-29 09:44:42', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-12-29 11:19:16', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, '173101', 'Mohan Khanna', '10TH', 'A', 'RF 3', '0000-00-00', '12', '2017', '2017-12-29 07:01:27', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-12-29 11:20:02', '0000-00-00 00:00:00', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(3, '172006', 'Vikram singh', 'LKG', 'A', 'RF 2', '0000-00-00', '12', '2017', '2017-12-29 07:02:50', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-12-29 12:32:50', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(4, '171904', 'Ramesh Verma', 'NURSERY', 'A', 'RF 1', '0000-00-00', '12', '2017', '2017-12-30 05:44:31', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(5, '171905', 'Rakesh Chaubey', 'NURSERY', 'A', 'RF 10', '0000-00-00', '12', '2017', '2017-12-30 05:44:31', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-12-30 11:14:31', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(6, '172106', 'Samrat Yadav', 'UKG', 'A', 'RF 7', '0000-00-00', '12', '2017', '2017-12-30 05:44:53', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2017-12-30 11:14:53', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(7, '171904', 'Ramesh Verma', 'NURSERY', 'A', '0003442426', '0000-00-00', '01', '2018', '2018-01-04 05:10:51', '2018-01-01 20:08:47', 'P', '2018-01-02 10:12:33', '0000-00-00 00:00:00', 'P', '2018-01-03 10:32:28', '0000-00-00 00:00:00', 'L', '2018-01-04 10:40:51', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(8, '171905', 'Rakesh Chaubey', 'NURSERY', 'A', '0003521355', '0000-00-00', '01', '2018', '2018-01-04 12:36:01', '2018-01-01 20:09:05', 'P', '2018-01-02 10:12:33', '0000-00-00 00:00:00', 'A', '2018-01-03 11:36:13', '0000-00-00 00:00:00', 'A', '2018-01-04 10:40:51', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(9, '173101', 'Mohan Khanna', '10TH', 'A', 'RF 3', '0000-00-00', '01', '2018', '2018-01-02 04:29:01', '0000-00-00 00:00:00', '', '2018-01-02 09:59:01', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(10, '1831003', 'Vikash Gupta', '10TH', 'A', '123456', '0000-00-00', '01', '2018', '2018-01-02 06:35:40', '0000-00-00 00:00:00', '', '2018-01-02 09:59:01', '2018-01-02 12:05:40', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(11, '1819006', 'Aryan Sharma', 'NURSERY', 'A', '', '0000-00-00', '01', '2018', '2018-01-04 05:59:47', '0000-00-00 00:00:00', '', '2018-01-02 10:12:33', '0000-00-00 00:00:00', 'L', '2018-01-03 11:36:13', '0000-00-00 00:00:00', 'P', '2018-01-04 10:40:51', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(12, '172006', 'Vikram singh', 'LKG', 'A', 'RF 2', '0000-00-00', '01', '2018', '2018-01-02 08:29:45', '0000-00-00 00:00:00', '', '2018-01-02 13:59:45', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(13, '172007', 'Sneha Raj', 'LKG', 'A', 'RF 4', '0000-00-00', '01', '2018', '2018-01-02 08:29:45', '0000-00-00 00:00:00', '', '2018-01-02 13:59:45', '0000-00-00 00:00:00', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(14, '172407', 'Sneha Sharma', '3RD', 'A', '', '0000-00-00', '01', '2018', '2018-01-03 09:41:16', '0000-00-00 00:00:00', '', '2018-01-02 14:56:23', '0000-00-00 00:00:00', 'A', '2018-01-03 15:11:16', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(15, '1824008', 'mardul shrivastava', '3RD', 'A', '456123', '0000-00-00', '01', '2018', '2018-01-03 09:41:16', '0000-00-00 00:00:00', '', '2018-01-02 14:56:23', '0000-00-00 00:00:00', 'P', '2018-01-03 15:11:16', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(16, '172006', 'Vikram singh', 'LKG', 'A', '0003348448', '0000-00-00', '01', '2018', '2018-01-03 11:23:33', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 16:53:33', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(17, '172007', 'Sneha Raj', 'LKG', 'A', '0003348822', '0000-00-00', '01', '2018', '2018-01-04 12:36:59', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 10:31:01', '2018-01-03 14:03:39', 'P', '2018-01-04 10:41:23', '2018-01-04 18:06:59', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(18, '171904', 'Ramesh Raza', 'NURSERY', 'A', '0003346566', '0000-00-00', '01', '2018', '2018-01-04 05:10:51', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 10:32:28', '2018-01-03 12:47:00', 'L', '2018-01-04 10:40:51', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(19, '171905', 'Rakesh Chaubey', 'NURSERY', 'A', '0003440989', '0000-00-00', '01', '2018', '2018-01-04 12:36:01', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 11:36:13', '0000-00-00 00:00:00', 'A', '2018-01-04 10:40:51', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(20, '1819006', 'Aryan Sharma', 'NURSERY', 'A', '', '0000-00-00', '01', '2018', '2018-01-04 05:59:47', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 11:36:13', '0000-00-00 00:00:00', 'P', '2018-01-04 10:40:51', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(21, '172106', 'Samrat Yadav', 'UKG', 'A', 'RF 7', '0000-00-00', '01', '2018', '2018-01-03 07:16:44', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 12:46:44', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(22, '1819008', 'devendra agrawal', 'NURSERY', 'A', '', '0000-00-00', '01', '2018', '2018-01-04 05:10:51', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-03 16:52:46', '0000-00-00 00:00:00', 'P', '2018-01-04 10:40:51', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(23, '1819007', 'Raj ', 'NURSERY', 'A', '', '0000-00-00', '01', '2018', '2018-01-04 06:57:57', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-04 12:27:57', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(24, '172801', 'Amrita Kaur', '7TH', 'A', 'RF 11', '0000-00-00', '01', '2018', '2018-01-05 04:47:10', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-05 10:17:10', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(25, '1828002', 'Somya nema', '7TH', 'A', '', '0000-00-00', '01', '2018', '2018-01-05 04:47:10', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-05 10:17:10', '0000-00-00 00:00:00', 'P', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_leave_management`
--

CREATE TABLE `student_leave_management` (
  `s_no` int(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_class` varchar(100) NOT NULL,
  `student_section` varchar(100) NOT NULL,
  `student_roll_no` varchar(100) NOT NULL,
  `leave_from_date` date NOT NULL,
  `leave_to_date` date NOT NULL,
  `leave_approved_by` varchar(100) NOT NULL,
  `leave_total_day` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_leave_management`
--

INSERT INTO `student_leave_management` (`s_no`, `student_name`, `student_class`, `student_section`, `student_roll_no`, `leave_from_date`, `leave_to_date`, `leave_approved_by`, `leave_total_day`, `image`) VALUES
(1, 'Ramesh Verma', 'NURSERY', 'A', '171904', '0000-00-00', '0000-00-00', 'principal', '10', 'birth.jpg'),
(2, 'Aryan Sharma', 'NURSERY', 'A', '1819006', '0000-00-00', '0000-00-00', 'Teacher', '6', 'Sick-Leave.jpg'),
(3, 'Vikash Gupta', '10TH', 'A', '1831003', '0000-00-00', '0000-00-00', 'director', '4', ''),
(4, 'Ramesh Verma', 'NURSERY', 'A', '171904', '0000-00-00', '0000-00-00', 'Director', '4', 'download (6).jpg'),
(5, 'mardul shrivastava', '3RD', 'A', '1824008', '0000-00-00', '0000-00-00', 'principal ', '6', 'images (6).jpg'),
(6, 'Vishakha Singh', '1ST', 'A', '172203', '0000-00-00', '0000-00-00', 'principal ', '6', 'download (7).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_penality`
--

CREATE TABLE `student_penality` (
  `s_no` int(100) NOT NULL,
  `student_roll_no` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_class` varchar(100) NOT NULL,
  `student_class_section` varchar(100) NOT NULL,
  `penalty` varchar(100) NOT NULL,
  `penalty_reason` varchar(100) NOT NULL,
  `penalty_remark` varchar(100) NOT NULL,
  `extra_1` varchar(100) NOT NULL,
  `extra_2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_penality`
--

INSERT INTO `student_penality` (`s_no`, `student_roll_no`, `student_name`, `student_class`, `student_class_section`, `penalty`, `penalty_reason`, `penalty_remark`, `extra_1`, `extra_2`) VALUES
(1, '171904', 'Ramesh Verma', 'NURSERY', 'A', '500', 'Mis Behaviour With Teacher', 'Ramesh Penalty', '', ''),
(2, '1831003', 'Vikash Gupta', '10TH', 'A', '500', 'Bad Behaviour', '', '', ''),
(3, '1819006', 'Aryan Sharma', 'NURSERY', 'A', '100', 'Attendence', 'Short Attendence', '', ''),
(4, '172203', 'Vishakha Singh', '1ST', 'A', '100', 'being late', 'you was late on saturday', '', ''),
(5, '172006', 'Vikram singh', 'LKG', 'A', '100', 'leave', 'pay on saturday', '', ''),
(6, '1824008', 'mardul shrivastava', '3RD', 'A', '1200', 'leave ', 'pay amount before due date', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_tc`
--

CREATE TABLE `student_tc` (
  `s_no` int(100) NOT NULL,
  `tc_student_roll_no` varchar(100) NOT NULL,
  `tc_generate_no` varchar(100) NOT NULL,
  `tc_student_sssm_id_no` varchar(100) NOT NULL,
  `tc_student_uid_no` varchar(100) NOT NULL,
  `tc_student_name` varchar(100) NOT NULL,
  `tc_student_father_name` varchar(100) NOT NULL,
  `tc_mother_name` varchar(100) NOT NULL,
  `date_of_birth` varchar(100) NOT NULL,
  `date_of_birth_in_word` varchar(100) NOT NULL,
  `tc_student_religion` varchar(100) NOT NULL,
  `tc_student_caste` varchar(100) NOT NULL,
  `tc_admission_no` varchar(100) NOT NULL,
  `tc_admission_date` varchar(100) NOT NULL,
  `tc_student_class` varchar(100) NOT NULL,
  `tc_student_class_leaving` varchar(100) NOT NULL,
  `tc_student_class_section` varchar(100) NOT NULL,
  `class_in_which_admitted` varchar(100) NOT NULL,
  `date_of_school_leaving` varchar(100) NOT NULL,
  `region_for_leaving` varchar(100) NOT NULL,
  `tc_subject` varchar(100) NOT NULL,
  `due_if_any` varchar(100) NOT NULL,
  `conduct_and_behaviour` varchar(100) NOT NULL,
  `student_tc_status` varchar(100) NOT NULL DEFAULT 'Active',
  `student_to_status_change_date` date NOT NULL,
  `tc_student_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_tc`
--

INSERT INTO `student_tc` (`s_no`, `tc_student_roll_no`, `tc_generate_no`, `tc_student_sssm_id_no`, `tc_student_uid_no`, `tc_student_name`, `tc_student_father_name`, `tc_mother_name`, `date_of_birth`, `date_of_birth_in_word`, `tc_student_religion`, `tc_student_caste`, `tc_admission_no`, `tc_admission_date`, `tc_student_class`, `tc_student_class_leaving`, `tc_student_class_section`, `class_in_which_admitted`, `date_of_school_leaving`, `region_for_leaving`, `tc_subject`, `due_if_any`, `conduct_and_behaviour`, `student_tc_status`, `student_to_status_change_date`, `tc_student_category`) VALUES
(3, '171904', '', '1', '521478963214', 'Ramesh Verma', 'Raman verma', 'Sangita Verma', '2014-01-06', 'Sixth January Two Thousand Fourteen', '', '', '1', '2017-12-29', 'NURSERY', 'NURSERY', 'A', 'NONE', '2017-12-29', '00', 'Father Transfer', 'No', 'No', 'Active', '0000-00-00', ''),
(4, '172006', '', '2', '546321789654', 'Vikram singh', 'Amresh Singh', 'Ritika Singh', '2014-01-08', 'Eighth January Two Thousand Fourteen', '', '', '', '2017-12-29', 'LKG', 'LKG', 'A', 'NURSERY', '', '', '', '', '', 'Active', '0000-00-00', ''),
(5, '171904', '', '1', '521478963214', 'Ramesh Verma', 'Raman verma', 'Sangita Verma', '2014-01-06', 'Sixth January Two Thousand Fourteen', '', '', '1', '2017-12-29', 'NURSERY', 'NURSERY', 'A', '', '', '', '', '', '', 'Active', '0000-00-00', ''),
(6, '1819006', '', '798798797', '9858457888898', 'Aryan Sharma', 'Rahul Sharma', 'Surbhi Sharma', '2004-12-24', 'Twenty Fourth December Two Thousand Four', '', '', '1234', '2018-01-02', 'NURSERY', 'NURSERY', 'A', 'NONE', '2018-05-25', '0', '0', '0', '0', 'Active', '0000-00-00', ''),
(9, '172007', '', '4', '563214789654', 'Sneha Raj', 'Anil yadav', 'Lalita Yadav', '2013-11-18', 'Eighteenth November  One', '', '', '4', '2017-12-29', 'LKG', 'LKG', 'A', 'NURSERY', '2018-01-02', 'Parents Transfer', 'All', 'no dues', 'conduct And Behaviour was very goood', 'Active', '0000-00-00', ''),
(11, '171904', '', '1', '521478963214', 'Ramesh Verma', 'Raman verma', 'Sangita Verma', '2014-01-06', 'Sixth January Two Thousand Fourteen', '', '', '1', '2017-12-29', 'NURSERY', 'NURSERY', 'A', 'NONE', '2018-01-03', '0', '', '', '', 'Active', '0000-00-00', ''),
(12, '171904', '', '1', '521478963214', 'Ramesh Verma', 'Raman verma', 'Sangita Verma', '2014-01-06', 'Sixth January Two Thousand Fourteen', '', '', '1', '2017-12-29', 'NURSERY', 'NURSERY', 'A', 'NONE', '', '', '', '', '', 'Active', '0000-00-00', ''),
(13, '1824008', '', '451265456', '124563968574', 'mardul shrivastava', 'sanjay shrivastava', 'sangeeta shrivastava', '1996-06-11', 'Eleventh June Ninteen Hundred Ninety Six', '', '', '46123', '2018-01-02', '3RD', '3RD', 'A', '2ND', '2018-01-02', 'Parents Transfer', 'all', 'no', 'good', 'Active', '0000-00-00', ''),
(14, '1824008', '', '451265456', '124563968574', 'mardul shrivastava', 'sanjay shrivastava', 'sangeeta shrivastava', '1996-06-11', 'Eleventh June Ninteen Hundred Ninety Six', '', '', '46123', '2018-01-02', '3RD', '3RD', 'A', '2ND', '', '', '', '', '', 'Active', '0000-00-00', ''),
(15, '1824008', '', '451265456', '124563968574', 'mardul shrivastava', 'sanjay shrivastava', 'sangeeta shrivastava', '1996-06-11', 'Eleventh June Ninteen Hundred Ninety Six', '', '', '46123', '2018-01-02', '3RD', '3RD', 'A', '2ND', '2018-01-02', 'Parents Transfer', 'all', 'no', 'good', 'Active', '0000-00-00', ''),
(16, '171904', '', '1', '521478963214', 'Ramesh Raza', 'Raman verma', 'Sangita Verma', '2014-01-06', 'Sixth January Two Thousand Fourteen', '', '', '1', '2017-12-29', 'NURSERY', 'NURSERY', 'A', 'NONE', '', '', '', '', '', 'Active', '0000-00-00', ''),
(17, '171904', '', '1', '521478963214', 'Ramesh Raza', 'Raman verma', 'Sangita Verma', '2014-01-06', 'Sixth January Two Thousand Fourteen', '', '', '1', '2017-12-29', 'NURSERY', 'NURSERY', 'A', 'NONE', '', '', '', '', '', 'Active', '0000-00-00', ''),
(18, '171904', '', '1', '521478963214', 'Ramesh Raza', 'Raman verma', 'Sangita Verma', '2014-01-06', 'Sixth January Two Thousand Fourteen', '', '', '1', '2017-12-29', 'NURSERY', 'NURSERY', 'A', 'NONE', '2018-01-04', '', '', '', '', 'Active', '0000-00-00', ''),
(23, '1824008', '', '451265456', '124563968574', 'mardul shrivastava', 'sanjay shrivastava', 'sangeeta shrivastava', '1996-06-11', 'Eleventh June Ninteen Hundred Ninety Six', '', '', '46123', '2018-01-02', '3RD', '3RD', 'A', '2ND', '2018-01-02', 'Parents transfer', 'all', '450', 'good', 'Active', '0000-00-00', ''),
(25, '1824008', '', '451265456', '124563968574', 'mardul shrivastava', 'sanjay shrivastava', 'sangeeta shrivastava', '1996-06-11', 'Eleventh June Ninteen Hundred Ninety Six', '', '', '46123', '2018-01-02', '3RD', '3RD', 'A', '2ND', '', '', '', '', '', 'Active', '0000-00-00', ''),
(27, '1824008', '', '451265456', '124563968574', 'mardul shrivastava', 'sanjay shrivastava', 'sangeeta shrivastava', '1996-06-11', 'Eleventh June Ninteen Hundred Ninety Six', '', '', '46123', '2018-01-02', '3RD', '3RD', 'A', '2ND', '2018-01-03', 'parents transfer', 'all', '450', 'good', 'Active', '0000-00-00', ''),
(28, '172006', '', '2', '546321789654', 'Vikram singh', 'Amresh Singh', 'Ritika Singh', '2014-01-08', 'Eighth January Two Thousand Fourteen', '', '', '', '2017-12-29', 'LKG', 'LKG', 'A', 'NURSERY', '2018-01-04', 'changing of city', 'all', 'no', 'good', 'Active', '0000-00-00', ''),
(29, '1828002', '', '4569874', '54126396852', 'Somya nema', 'Suresh kumar nema', 'Anjli nema', '2005-05-25', 'Twenty Fifth May Two Thousand Five', '', '', '450562', '2018-01-05', '7TH', '7TH', 'A', '6TH', '2018-01-05', 'parents transfer', 'all', 'no dues', 'good ', 'Active', '0000-00-00', ''),
(30, '1828002', '', '4569874', '54126396852', 'Somya nema', 'Suresh kumar nema', 'Anjli nema', '2005-05-25', 'Twenty Fifth May Two Thousand Five', '', '', '450562', '2018-01-05', '7TH', '7TH', 'A', '6TH', '2018-01-05', 'parents transfer', 'all', 'no dues', 'good', 'Active', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_reminder`
--

CREATE TABLE `teacher_reminder` (
  `s_no` int(250) NOT NULL,
  `reminder_teacher_name` varchar(100) NOT NULL,
  `reminder_allocated_date` varchar(100) NOT NULL,
  `reminder_finish_date` varchar(100) NOT NULL,
  `reminder_teacher_task_1` varchar(100) NOT NULL,
  `reminder_teacher_task_2` varchar(50) NOT NULL,
  `reminder_teacher_task_3` varchar(50) NOT NULL,
  `reminder_teacher_task_4` varchar(50) NOT NULL,
  `reminder_teacher_task_5` varchar(50) NOT NULL,
  `reminder_teacher_remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_reminder`
--

INSERT INTO `teacher_reminder` (`s_no`, `reminder_teacher_name`, `reminder_allocated_date`, `reminder_finish_date`, `reminder_teacher_task_1`, `reminder_teacher_task_2`, `reminder_teacher_task_3`, `reminder_teacher_task_4`, `reminder_teacher_task_5`, `reminder_teacher_remark`) VALUES
(1, 'Amresh Tiwari', '26-01-2018', '30-01-2018', 'To Teach Passive voice', 'To Teach Grammer Portion', 'To Teach Dictation', '', '', 'Teach'),
(2, 'Ramesh Gupta', '02-01-2018', '05-01-2018', 'Calling ', 'Marksheet Submission', 'Result Decalaration', 'Copy Check', 'None', 'Its Urgent'),
(3, 'Ramesh Gupta', '02-01-2018', '03-01-2018', 'hindi lecture is to be taken in class 5th', 'next period will be taken in 7th A', 'your class 7th leture will be taken by sir vikash', 'check copy', 'check student uniform', 'lecture will be taken today');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `s_no` int(200) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `student_father_name` varchar(200) NOT NULL,
  `student_class` varchar(200) NOT NULL,
  `student_roll_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_table_`
--

CREATE TABLE `time_table_` (
  `s_no` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_`
--

INSERT INTO `time_table_` (`s_no`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `time_table_1st`
--

CREATE TABLE `time_table_1st` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_1st`
--

INSERT INTO `time_table_1st` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_2nd`
--

CREATE TABLE `time_table_2nd` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_2nd`
--

INSERT INTO `time_table_2nd` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_3rd`
--

CREATE TABLE `time_table_3rd` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_3rd`
--

INSERT INTO `time_table_3rd` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '09:30', '12:00', '2018-01-04', '', '', '', '', '', '', '', '', '', '09:30', '12:00', '2018-01-04', '', '', '', '', '', '', '', '', '', '09:30', '12:00', '2018-01-06', '', '', '', '', '', '', '', '', '', '09:30', '12:00', '2018-01-09', '', '', '', '', '', '', '', '', '', '09:30', '12:00', '2018-01-11', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_4th`
--

CREATE TABLE `time_table_4th` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_4th`
--

INSERT INTO `time_table_4th` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_5th`
--

CREATE TABLE `time_table_5th` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_5th`
--

INSERT INTO `time_table_5th` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_6th`
--

CREATE TABLE `time_table_6th` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_6th`
--

INSERT INTO `time_table_6th` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_7th`
--

CREATE TABLE `time_table_7th` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_7th`
--

INSERT INTO `time_table_7th` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_8th`
--

CREATE TABLE `time_table_8th` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_8th`
--

INSERT INTO `time_table_8th` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_9th`
--

CREATE TABLE `time_table_9th` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_evs_time_from` varchar(50) NOT NULL,
  `quarterly_exam_evs_time_to` varchar(50) NOT NULL,
  `quarterly_exam_evs_date` varchar(50) NOT NULL,
  `half_yearly_exam_evs_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_evs_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_evs_date` varchar(50) NOT NULL,
  `pre_board_exam_evs_time_from` varchar(50) NOT NULL,
  `pre_board_exam_evs_time_to` varchar(50) NOT NULL,
  `pre_board_exam_evs_date` varchar(50) NOT NULL,
  `annual_exam_evs_time_from` varchar(50) NOT NULL,
  `annual_exam_evs_time_to` varchar(50) NOT NULL,
  `annual_exam_evs_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_9th`
--

INSERT INTO `time_table_9th` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_evs_time_from`, `quarterly_exam_evs_time_to`, `quarterly_exam_evs_date`, `half_yearly_exam_evs_time_from`, `half_yearly_exam_evs_time_to`, `half_yearly_exam_evs_date`, `pre_board_exam_evs_time_from`, `pre_board_exam_evs_time_to`, `pre_board_exam_evs_date`, `annual_exam_evs_time_from`, `annual_exam_evs_time_to`, `annual_exam_evs_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_10th`
--

CREATE TABLE `time_table_10th` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL,
  `quarterly_exam_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_science_date` varchar(50) NOT NULL,
  `pre_board_exam_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_science_date` varchar(50) NOT NULL,
  `annual_exam_science_time_from` varchar(50) NOT NULL,
  `annual_exam_science_time_to` varchar(50) NOT NULL,
  `annual_exam_science_date` varchar(50) NOT NULL,
  `quarterly_exam_evs_time_from` varchar(50) NOT NULL,
  `quarterly_exam_evs_time_to` varchar(50) NOT NULL,
  `quarterly_exam_evs_date` varchar(50) NOT NULL,
  `half_yearly_exam_evs_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_evs_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_evs_date` varchar(50) NOT NULL,
  `pre_board_exam_evs_time_from` varchar(50) NOT NULL,
  `pre_board_exam_evs_time_to` varchar(50) NOT NULL,
  `pre_board_exam_evs_date` varchar(50) NOT NULL,
  `annual_exam_evs_time_from` varchar(50) NOT NULL,
  `annual_exam_evs_time_to` varchar(50) NOT NULL,
  `annual_exam_evs_date` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_from` varchar(50) NOT NULL,
  `quarterly_exam_social_science_time_to` varchar(50) NOT NULL,
  `quarterly_exam_social_science_date` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_social_science_date` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_from` varchar(50) NOT NULL,
  `pre_board_exam_social_science_time_to` varchar(50) NOT NULL,
  `pre_board_exam_social_science_date` varchar(50) NOT NULL,
  `annual_exam_social_science_time_from` varchar(50) NOT NULL,
  `annual_exam_social_science_time_to` varchar(50) NOT NULL,
  `annual_exam_social_science_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_10th`
--

INSERT INTO `time_table_10th` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`, `quarterly_exam_science_time_from`, `quarterly_exam_science_time_to`, `quarterly_exam_science_date`, `half_yearly_exam_science_time_from`, `half_yearly_exam_science_time_to`, `half_yearly_exam_science_date`, `pre_board_exam_science_time_from`, `pre_board_exam_science_time_to`, `pre_board_exam_science_date`, `annual_exam_science_time_from`, `annual_exam_science_time_to`, `annual_exam_science_date`, `quarterly_exam_evs_time_from`, `quarterly_exam_evs_time_to`, `quarterly_exam_evs_date`, `half_yearly_exam_evs_time_from`, `half_yearly_exam_evs_time_to`, `half_yearly_exam_evs_date`, `pre_board_exam_evs_time_from`, `pre_board_exam_evs_time_to`, `pre_board_exam_evs_date`, `annual_exam_evs_time_from`, `annual_exam_evs_time_to`, `annual_exam_evs_date`, `quarterly_exam_social_science_time_from`, `quarterly_exam_social_science_time_to`, `quarterly_exam_social_science_date`, `half_yearly_exam_social_science_time_from`, `half_yearly_exam_social_science_time_to`, `half_yearly_exam_social_science_date`, `pre_board_exam_social_science_time_from`, `pre_board_exam_social_science_time_to`, `pre_board_exam_social_science_date`, `annual_exam_social_science_time_from`, `annual_exam_social_science_time_to`, `annual_exam_social_science_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '10:00', '13:00', '2018-01-03', '', '', '', '', '', '', '', '', '', '10:00', '13:00', '2018-01-05', '', '', '', '', '', '', '', '', '', '10:00', '22:00', '2018-01-08', '', '', '', '', '', '', '', '', '', '10:00', '13:00', '2018-01-10', '', '', '', '', '', '', '', '', '', '10:00', '13:00', '2018-01-12', '', '', '', '', '', '', '', '', '', '10:00', '13:00', '2018-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_11`
--

CREATE TABLE `time_table_11` (
  `s_no` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_11`
--

INSERT INTO `time_table_11` (`s_no`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `time_table_12th`
--

CREATE TABLE `time_table_12th` (
  `s_no` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_12th`
--

INSERT INTO `time_table_12th` (`s_no`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `time_table_lkg`
--

CREATE TABLE `time_table_lkg` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_lkg`
--

INSERT INTO `time_table_lkg` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_nursery`
--

CREATE TABLE `time_table_nursery` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_nursery`
--

INSERT INTO `time_table_nursery` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`) VALUES
(1, '09:30', '11:30', '2018-01-03', '', '', '', '', '', '', '', '', '', '09:30', '11:30', '2018-01-04', '', '', '', '', '', '', '', '', '', '09:30', '11:30', '2018-01-05', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_ukg`
--

CREATE TABLE `time_table_ukg` (
  `s_no` int(100) NOT NULL,
  `quarterly_exam_hindi_time_from` varchar(50) NOT NULL,
  `quarterly_exam_hindi_time_to` varchar(50) NOT NULL,
  `quarterly_exam_hindi_date` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_hindi_date` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_from` varchar(50) NOT NULL,
  `pre_board_exam_hindi_time_to` varchar(50) NOT NULL,
  `pre_board_exam_hindi_date` varchar(50) NOT NULL,
  `annual_exam_hindi_time_from` varchar(50) NOT NULL,
  `annual_exam_hindi_time_to` varchar(50) NOT NULL,
  `annual_exam_hindi_date` varchar(50) NOT NULL,
  `quarterly_exam_english_time_from` varchar(50) NOT NULL,
  `quarterly_exam_english_time_to` varchar(50) NOT NULL,
  `quarterly_exam_english_date` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_english_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_english_date` varchar(50) NOT NULL,
  `pre_board_exam_english_time_from` varchar(50) NOT NULL,
  `pre_board_exam_english_time_to` varchar(50) NOT NULL,
  `pre_board_exam_english_date` varchar(50) NOT NULL,
  `annual_exam_english_time_from` varchar(50) NOT NULL,
  `annual_exam_english_time_to` varchar(50) NOT NULL,
  `annual_exam_english_date` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `quarterly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `half_yearly_exam_mathe_matics_date` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `pre_board_exam_mathe_matics_date` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_from` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_time_to` varchar(50) NOT NULL,
  `annual_exam_mathe_matics_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_ukg`
--

INSERT INTO `time_table_ukg` (`s_no`, `quarterly_exam_hindi_time_from`, `quarterly_exam_hindi_time_to`, `quarterly_exam_hindi_date`, `half_yearly_exam_hindi_time_from`, `half_yearly_exam_hindi_time_to`, `half_yearly_exam_hindi_date`, `pre_board_exam_hindi_time_from`, `pre_board_exam_hindi_time_to`, `pre_board_exam_hindi_date`, `annual_exam_hindi_time_from`, `annual_exam_hindi_time_to`, `annual_exam_hindi_date`, `quarterly_exam_english_time_from`, `quarterly_exam_english_time_to`, `quarterly_exam_english_date`, `half_yearly_exam_english_time_from`, `half_yearly_exam_english_time_to`, `half_yearly_exam_english_date`, `pre_board_exam_english_time_from`, `pre_board_exam_english_time_to`, `pre_board_exam_english_date`, `annual_exam_english_time_from`, `annual_exam_english_time_to`, `annual_exam_english_date`, `quarterly_exam_mathe_matics_time_from`, `quarterly_exam_mathe_matics_time_to`, `quarterly_exam_mathe_matics_date`, `half_yearly_exam_mathe_matics_time_from`, `half_yearly_exam_mathe_matics_time_to`, `half_yearly_exam_mathe_matics_date`, `pre_board_exam_mathe_matics_time_from`, `pre_board_exam_mathe_matics_time_to`, `pre_board_exam_mathe_matics_date`, `annual_exam_mathe_matics_time_from`, `annual_exam_mathe_matics_time_to`, `annual_exam_mathe_matics_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `s_no` int(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `school_name` varchar(1000) NOT NULL,
  `remark` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`s_no`, `contact`, `otp`, `date`, `time`, `name`, `city`, `school_name`, `remark`) VALUES
(277, '7566002517', '257106', '2017-07-18', '2017-07-19 12-50-24', '', 'Sehore', 'Sehore public High School', 'Quatation bejna h, le lega.khi ar se le liya h nxt yr dekhege ab'),
(278, '7049989671', '193978', '2017-07-18', '2017-07-19 05-14-16', '', '', '', 'NOT REACHABLE/  band h'),
(22, '9202214796 ', '807911', '2017-04-08', '2017-04-08 08-29-33', 'Central Schhol Joura', 'Joura', '', 'INNE BOOLA AJ NHI DEKHA KAL DEKH K BTATE HN(2NOV)/inne bola ki dusri jgh se s/w milrha h usme 1lakh msg bhi hn,mene bola hmare s/w me bhi h or unne bola koi representative bhej do ,orena,mene kaha aap phle demo dekhlijiye fir nhi smjh aye tobhej denge or unne bola ki ek sath 20k amnt le k aap side hojaenge apko emi me lena chahye to mene kaha pura s/w apko ekbr me milrja h islye pay bhi ek hi sath krna pdega.demo bhja h dobata,dekh k btaenge vo//   PUCHHA OR 5BJE CALL KRNE KO BOLA(28OCT)/ NOT REAHABLE/ background me school ka distrbnc arha tha to clr baat nhi hopayi,inhe shaam ko call krna h/  Batata hu'),
(329, '8806288333', '138369', '2017-07-25', '2017-07-25 12-37-20', 'Hitesh', 'Software Suggest se', '10 bar visit kiya tha software', 'rhul sr se bt ho gya'),
(465, '8602183320', '843399', '2017-08-22', '2017-08-22 09-09-34', 'kalpna jain', '', 'childzone english midium school ', 'inn aj 30nov 2017ko inne boola ki april m ehi baat krenge sidhe is baare me/  le skti h ,decide krke btaygi,abhi record pura ho chuka data nxt session dekhege financial problm h '),
(28, '9826390607', '276515', '2017-04-14', '2017-04-14 09-54-25', 'Arya Public Schoo', 'ashoknagar', 'Arya Public Schoo', 'new session me lene ka bola h or abhi lene k vichar me nhi hn/  July ka bola h But av le lega'),
(37, '8800709684', '459293', '2017-04-19', '2017-04-19 12-06-02', 'Gyan Chandra Singhal', 'kailaras Delhi', '', 'Inka school ni h, kailaras se link beji thi'),
(31, '9301376333', '430931', '2017-04-18', '2017-04-18 09-03-38', 'Sanskar Public School', 'Kailaras', 'Sanskar Public School', 'INNE NMBR BLCK LIST ME DALA H/ CNR/  le sakta h but av rupee ka problm h ,rupees ka problm h nhi le skte free ho to btaiye'),
(456, '9926360958', '978181', '2017-08-22', '2017-08-22 03-09-40', 'Asif bhai ', 'salamatpur', 'Bright Future School Salamatpur', 'BOLA KI DECIDE NHI HUA JB HOGA TO BTADENGE/ SHIVENDRA SIR NE '),
(447, '8826828021', '712846', '2017-08-21', '2017-08-21 08-37-22', '', '', '', 'NOT REACHABLE'),
(43, '9818612227', '776924', '2017-04-25', '2017-04-25 04-37-18', 'Advertsing', 'Delhi', '', 'delhi cmpny h ads ka koi wrk h '),
(47, '8889646100', '223164', '2017-04-28', '2017-04-28 12-11-38', 'Kranti shreevstwa', 'Bhitarwar', 'Pink Flower School', 'inne aj 30 nov 2017 ko bola ki ye busy hn abhi baaat nhi krpaenge/  ye april tk le paenge/  abhi nhi le pyge bcoz finacial problm h'),
(55, '8462006381', '973502', '2017-05-01', '2017-05-01 11-25-21', 'Siddhi vinayak school', 'Narwar', 'Sunnel Sir', ''),
(582, '9981077741', '', '2017-11-06', '2017-11-06 12-15-59', 'SHARUKH PATHAN ', 'HOSHANGBAD', 'BOOK SHOP', 'INSE JUST DIAL K THRU SCHL MNGMNT S/W KI SELLING K BAARE ME BAAT HUI THI'),
(624, '7354515498', '966672', '2017-11-18', '2017-11-18 10-29-21', 'KAIZEN WORLD SCHOOL', 'GUNA', 'KAIZEN WORLD SCHOOL', 'inne bola ki director sir ne abhi kuch bola nhi h jb bolenge tb btate hn apko(28nov)/ BOLA KI SOFTWARE TO BOHT ACHHA H APKA,EK BR DIRECTOR SE PUCHH K BTATE HN JO BHI HOGA'),
(89, '7587480195', '649933', '2017-05-17', '2017-05-17 11-45-52', 'Mr. Shibu', 'Dondi,Balod CG', 'St. Thomas School', 'CNR/ inko sftware k features smjha diye hn or demo bhi send krdiya h,ye dekh k btaenge ab/   abi bhar h bol rha h call krega homtown jakr abi koi software use nh kr rha h'),
(354, '7879427339', '930941', '2017-07-29', '2017-07-29 07-04-19', 'surendra dhakad', 'gwalior', 'GS PUBLIC SCHOOL', 'INNE HARISISHORE SIR KA NMBR DIYA THA BUT UNKA NMBR BUSY BTA RHA HHARIKISHORE SIR INDORE GYE HN KAL AJAENGE TB 30OCT MONDAY KO BAAT KRNI H/  BOLA H KI SENIOR SIR HN NHI ABHI,AATE HN JB TB BAAT KRADENGE AJ HI/ rahul visit kr chuka h 5000 ki bol rha h'),
(84, '9926407142', '137580', '2017-05-12', '2017-05-12 11-53-41', 'devesh joshi', 'hoshangabad', 'marry convent school', 'INNE MAIL KRNE K LYE BOLA H,KRDIYA,BOLA H PRSO 31OCT KO BTAENGE/ bat ho gy h boss aynge tb contact krega,nxt session me lenge abhi to nikal hi gya ye session'),
(97, '9893952314', '171706', '2017-05-18', '2017-05-18 01-32-49', 'Neeraj verma', 'shivpuri', 'Pragya Bal Mandir School', 'CNR/ BOLA ABHI BUSY HN KAL 28OCT KO BAT KRNA H'),
(96, '9630814232', '266323', '2017-05-18', '2017-05-18 11-46-00', 'Mr. Nikunj', 'Chapa,CG', 'Golden Era Public School ', 'inne aj 30nov 2017 ko bola h ki confirm to nhi lena but agr lenge to april  me hi lenge/  APRIL K AS PAS ME LENE KA BOLA H INNE(28OCT)/  next session ki bol rh h,nxt yr dekhte h abhi h hmare pass'),
(108, '9691499998', '788173', '2017-05-22', '2017-05-22 04-38-09', 'dheeraj school', 'narwar', 'gurukul school', 'CNR(2NOV)/  CNR IN EVENING/ INHE EVENING ME CALL KRNA H'),
(288, '7000193816', '563666', '2017-07-20', '2017-07-20 11-04-55', 'Ganga Public School', 'Morena', '', 'Av check kr rha h. le sakta h ,maine project ke liye dekha tha ar kuch nhi ,me school se nhi hu '),
(126, '7566967735', '926596', '2017-05-30', '2017-05-30 07-09-03', 'abhisekh dhakad', 'shivpuri', 'Pragya Bal Mandir School', '3NMBR HN TEENO PE CALL KIYA CALL NHI UTHAYAE,BAR CALL LGAYACNR/  neeraj verma ka bhai h,le skte h kl(22) bhai se bat krke call back krenge , abhi busy h board exam me free hokr dekhege , nxt session dekhege '),
(293, '9098488769', '459837', '2017-07-21', '2017-07-21 01-44-58', 'Shanti Niketan School Sehore', '', '', 'dekhta hu link ,wrong nmbr bol rhe'),
(510, 'nissu089@gmail.com', '455485', '2017-08-29', '2017-08-29 02-38-12', '', '', '', ''),
(137, '9425417933', '899011', '2017-06-03', '2017-06-03 10-43-35', 'Rajendra Goyal', 'Morena', 'Ganga Public School', 'inne aj 30nov 2017 ko bola ki 5decembr ko 12 pm call krna aap,direct mam se baat hojaegi/    INSE JUNE ME BAAT KRNA H/  batate h av vichar bana rhe, busy h phon kat rha ,1 week bad btata hu,khud call kr luga free hokr busy hu abhi, khud bta duga '),
(580, '9993041188', '', '2017-11-03', '2017-11-03 12-53-41', 'Sandeep Jain', 'sagar', 'owner at BTIRT sagar', 'CNR'),
(207, '7440440388', '832029', '2017-06-20', '2017-06-20 01-24-04', 'mngla Hss school	', 'dabra', '', 'management se bat ki h abi tk koi khas response nhi diya mngmt ne , nxt session ka kha sr neabhi data manage ho gya hmara to nxt session dekhege mrch me,7440440381 ye nmbr sr ka h '),
(283, '9425181804', '370822', '2017-07-19', '2017-07-19 02-28-14', 'Robertson Convent School Umaria', 'Umaria', 'Robertson Convent School Umaria', 'INSE DECEMBER ME BAAT KRNI H/ Le sakta h or fanchai lene ki v bol rha.sr ka tbiyt thik nhi h 1 2 din me call krna '),
(289, '9427145632', '334299', '2017-07-20', '2017-07-20 04-31-18', '', '', '', 'CNR 2 TYMS/  22 ko call krna h., uske bhai ne check kiya tha ,othr software le liya h ,agr lgta h to call back kr lenge apko'),
(351, '8962163775', '840546', '2017-07-27', '2017-07-27 05-45-26', 'udit narayan', '', '', ''),
(242, '9425775400', '713904', '2017-06-30', '2017-06-30 03-42-18', 'pravin', 'Gwalior ', '', 'medical ka chahye h,already h'),
(413, '9907056200', '562795', '2017-08-16', '2017-08-16 08-40-14', 'lalit mohan srma ji', 'vijaypur', 'sant jopier', 'rahul sr ki bat ho gyi h '),
(245, '9630433570', '766950', '2017-06-30', '2017-06-30 07-34-12', 'akendra kushwaha', 'singrauli', 'jyoti school ', 'APRIL ME LENGE(28OCT)/  2-3 din bad ki bol rha h, ab nxt yr lenge '),
(286, '9926369353', '846422', '2017-07-20', '2017-07-20 10-42-22', 'RAJESH TYAGI', 'SEHORE', 'SEHORE PUBLIC SCHOOL', 'BOLA H KI INKE SCHOOL ME LIGHT KI VYAVASTHA NHI H TO S/W KESE CHLAENGE, ISLYE PHLE YE LIGHT KA MANAGMNT KRAENGE ABHI USKE BAD S/W LENGE APRIL TK/  Sohore wala hi visit kiya tha,5 ke bd free honge to btayge ,school me solar sytem lgwana h phlle tb ye dicede krege 15 20 din bad '),
(287, '9968850846', '325469', '2017-07-20', '2017-07-20 11-04-33', '', '', '', 'Call ni laga,voice cut rhi h bat nhi ho payi'),
(275, '9826462512', '392795', '2017-07-18', '2017-07-18 09-53-10', 'DEEPAK BHATNAGAR', 'Bhopal', 'MAY FLOWER PUBLIC SCHOOL KOTA SULTANABAD BHOPAL', 'INHONE KISI KO SCHOOL ME DEMO DIKHANE BHEJNE K LYE BOLA H/  3 baje call kren, 0755 426912 pr bat kr lijiye me busy hu , bhopal nhi u abhi mndy ko call kijiyega,kl btata hu registration ka employ se bat kr lu 7/9/2017 kl isko call krna h '),
(228, '9090907790', '332959', '2017-06-25', '2017-06-25 10-45-49', '', 'ORISSA', 'LONDON SCHOOL OF ECONOMIC SOCIETY', 'inko aj 30nov 2017 ko 2bar call lgaya,awz nhi arhi h kuch clear/   INNE BOLA KI NEW SESION SE LENGE/ chairman se bat krke batayega, av school start kiya h sr bhr h 15 ko ayge to decide hoga mam '),
(352, '8839576993', '312051', '2017-07-28', '2017-07-28 07-51-36', 'aryansh agrawal', '', '', '4BJE CALL KRNA H AJ 27OCT KO/ gst chahye h, rahul ko janta h'),
(326, '9907754141', '174473', '2017-07-24', '2017-07-24 08-48-37', 'gs public school', 'Gwalior ', ' GS public school', 'IS NMBR PE INCMING CALLING FACILITY NHI H/  mood m hai, bt paise km bol rha'),
(374, '9827314681', '185730', '2017-08-13', '2017-08-13 02-36-57', 'Chandrashekhar Singh Gautam', 'indore', '', 'BOLA H KI RAHUL SIR SE BAAT HOGYI THI NXT YEAR LENE KA BOLA H /sham ko 9 bje smjhne ki bol rhe h,EVE M HI BAT KR PAYGA OFFICE M RHTA H DAYTIME'),
(503, '8959621800', '401165', '2017-08-28', '2017-08-28 12-14-15', '', 'SHIVPURI', 'CHILD ZONE SCHOOL', '10 12 DIN BAD DEKH K BTAENGI'),
(504, 'nissu089@gmail.com', '294319', '2017-08-28', '2017-08-28 02-12-01', '', '', '', 'abhi ache se nhi dekha h ,dekh kr bat krege '),
(516, '8862894994', '322773', '2017-08-30', '2017-08-30 11-49-53', 'Abhay prjapti', '', '', 'cnr 2tyms (30nov)/  NOT REACHABLE/ demo opn nhi ho rha h,netwrk problem h dekh kr btate h,abhi nhi dekha ache se dekh kr khud call back krege hm,nxt session le pyge '),
(408, '9425774748', '260469', '2017-08-16', '2017-08-16 02-27-53', 'RADHESHYAM JAIN', 'BHITARWAR', 'MA VAISHNO DEVI', 'aj 30nov 2017 ko inne obla ki yhan fasal khrab hone k vjh se yhan ki economic condition khrab hogyi h,to is saal nhi le paenge/ March mai pakka lena h. RAHUL KI BAT HO RHI H'),
(518, '9893123869', '875660', '2017-08-30', '2017-08-30 08-41-28', 'RAJENDRA SAXENA ', '', 'MEMORIAL HSS SCHOOL', 'INHONE BOLA KI INNE DEKHA NHI H ABHI,JES BHI HOGA KHUD CALL KRKE BTADENGE(28OCT)/  BOLAKI EK BR OR DEMO SEND KRDIJIYE LENA H,OR COST PUCHHI THI S/W KI/  BUSY HN'),
(512, '9329673977', '783692', '2017-08-29', '2017-08-29 03-41-16', 'SHIVAM TIWARI', '', '', 'inka school abhi bnrha h,bnne k bad ye lenge demo send krdiya h inko/ CNR'),
(513, '9098667439', '671479', '2017-08-29', '2017-08-29 07-55-29', 'I P S international school', 'Morena', '', 'INNE BOLA H KI YE S/W LE CHUKE HN,INHE MONDAY 30OCT KI MORNING 9BJE CALL LGANA H/  NOT REACHABLE/  abhi achhe se nhi dekha h sham ko bat krna busy hu '),
(520, '9755572222', '229512', '2017-08-31', '2017-08-31 07-41-34', 'prdeep agrwal ', 'madangarh ,chatisghad', '', 'koi dealer h '),
(515, '8827770021', '894088', '2017-08-29', '2017-08-29 08-28-38', 'arya school ', 'bhitarwar', '', 'aj 30nov 2017 ko bola ki april me hi lenge/  APRIL SE START KRENGE YE/ 1 2din me btete h ,mndy ke bad btate h ,abhi koi decide nhi jb hoga to bta denge '),
(529, '7772888435', '392543', '2017-09-08', '2017-09-08 09-50-00', '', '', '', 'UNREACHABLE'),
(530, '7898840576', '487331', '2017-09-09', '2017-09-09 05-29-16', ' Dharmendra Khare', 'sagar', 'Bramhamand Saraswati Public School', 'inne aj 30nov 2017 ko bola ki  abhi inke paas system nhi h,ye july me lenge/  JULY KA BOLA H MGR APRIL ME CONTCT KRNA H/ Rahul: Next Session mai lenge,'),
(531, '9111106645', '167422', '2017-09-11', '2017-09-11 09-24-49', 'IMPORTNT CUSTOMER NOVEMBR', 'SAGAR', 'SAILESH MEMORIAL SCHOOL', 'lechuke hn s/w simpton ka/  YE DEMO DEKH RHE THE TO LIGHT CHLI GYI ADHA HI DEKH PAYE,TO INNE BOLA KI PURA DEKH K FINAL BAAT MNDAY 6NOV KO KRENGE/ AJ 27OCT KO DEMO MAIL KRDIYA H 2,3 DIN ME DEKH K BTAENGE, 1NOV KO CALL KRNA H INHE/  CNR 2TYMS'),
(532, '7566653558', '819486', '2017-09-13', '2017-09-13 12-20-59', '', '', '', 'UNREACHABLE'),
(535, '8827010106', '847017', '2017-09-13', '2017-09-13 01-49-14', 'hirdesh chandrvnsi ', 'kurabad ,bhopal', 'computer centre ', 'JB LGWANA HOGA TB CNTCT KRENGE//  computer centre h school opn krna h isiliye visit kiya  tha '),
(536, '9109589076', '553070', '2017-09-15', '2017-09-15 05-42-51', 'ankur ', '', '', ''),
(538, '8770395926', '542407', '2017-09-17', '2017-09-17 09-08-41', 'prshant sing rajput', '', '', 'mrketing '),
(541, '7415179570', '966762', '2017-09-21', '2017-09-21 05-08-29', 'MADHAV SCHOOL', '', '', 'BOLA KI REQUIREMNT H BUT ABHI READY NHI H QKI ABHI SENIORS SE PUCHHNA PDEGA TO BADME BTAENGE JB LENA HOGA TO'),
(543, '7632045127', '405697', '2017-09-22', '2017-09-22 03-47-32', '', 'HAZARIBAGH', 'J M angel public school', 'inne aj 30nov 2017 me bola ki April me lena confirm nhi h,april me dekhenge/April me lenge.'),
(544, '8435389412', '724054', '2017-09-23', '2017-09-23 06-56-30', 'Lekhraj Prince', 'bhopal', '', 'aj 30nov ko offc visit krne k lye bola h/   10th novmber ko bhopal aenge tb direct mil k baat krenge/  Startup company h, monday ko office visit krega,'),
(552, '7004941454', '724665', '2017-10-04', '2017-10-04 01-02-16', 'Sameer Shah', 'Jarkhand, Hajaribhag', '', 'BOLA KI INKE TECHNICL BNDE NE DEKHA THA S/W TO USSE MONDAY KO BAAT HOPAEGI TO INKO MONDAY 30OCT KO CALL KRKE PUCHHNA H/ Software lena h, wakil se bat krana h'),
(555, '9448747695', '730848', '2017-10-04', '2017-10-04 03-52-35', 'Raveendra Bathhala', '', '', 'HE HAS A PROBLM IN UNDERSTNDNG Hindi,SO DEMO IS SENT TO HIM N HE WILL CALL BACK WHETHR HE UNDERSTOOD SMTHING ABT S/W OR NOT'),
(572, '9630348501', '', '2017-10-16', '2017-10-16 03-31-26', 'Asian School Kailaras', '', '', 'inka otp galat bta rha tha to opn nhi hua ye dekh nhi paye ,inko dobara dekhne k lye bola h'),
(577, '9098256980', '', '2017-10-25', '2017-10-25 09-51-07', 'Marketing employee', '', '', ''),
(584, '9981077741', '', '2017-11-06', '2017-11-06 12-18-41', '', '', '', ''),
(585, '9981077741', '', '2017-11-06', '2017-11-06 12-25-00', '', '', '', ''),
(587, '9981077741', '', '2017-11-06', '2017-11-06 12-28-05', '', '', '', ''),
(588, '9981077741', '', '2017-11-06', '2017-11-06 12-28-17', '', '', '', ''),
(589, '9981077741', '', '2017-11-06', '2017-11-06 12-29-11', '', '', '', ''),
(591, '9552224700', '', '2017-11-06', '2017-11-06 05-44-35', 'MAMTA YADAV', 'PUNE', '', 'INSE LINK KHULA NHI'),
(593, '9425653634', '', '2017-11-07', '2017-11-07 11-10-49', 'GAURAV BATHAM', '', '', ''),
(595, '8269431959', '', '2017-11-08', '2017-11-08 03-28-22', 'UDIT', 'BIHAR', '', 'DEVELOPR SE BAAT HUI THI KUCH FEES KO LE K DOUBT THA'),
(604, '8962447710', '999899', '2017-11-13', '2017-11-13 06-14-54', 'SHREYA MHASKAR', '', '', 'YE CMPNY K S/W KI SELLING KRA RHE HN,INNE BOLA S/W UPGRADE HOGYE H KI NHI SAARE OR E-BROCHURE KA BOLA SEND KRNE KO BOLA THA WHTSAPP PE'),
(617, '9827204650', '670232', '2017-11-16', '2017-11-16 08-15-38', 'RAVI TRADERS UJJAIN', 'UJJAIN', '', 'abhi sir se baat nhi hopegi jb honge sir to btadenge/   inhone aj 25nov ko bola ki inke sir ne visit kiya hoga or vo abhi hn nhi to unse monday ko baat hopaegi 10bje se 12bje k beech me/  INHONE BOHT BAR VISIT KIYA H 4SE ZADA BAR,SB DLT KRDIYA H OR INHE CALL NHI LGTA KBHI/  NETWORK PROBLEM/  CNR'),
(613, '9039613487', '217012', '2017-11-16', '2017-11-16 12-30-09', 'Gyandeep public school', 'Guna', 'Gyandeep public school', 'call disconnected/  inse just dial se baat hui thi,inne ratess ka puchha tha.,bola ki badme btate hn'),
(643, '8787007142', '568715', '2017-12-16', '2017-12-16 05-12-04', '', '', '', ''),
(632, '9406532438', '675068', '2017-12-03', '2017-12-03 02-41-04', 'Diamand School', 'Sagar', '', ''),
(642, '7007519463', '139828', '2017-12-16', '2017-12-16 04-44-59', '', '', '', ''),
(640, '7047162922', '113200', '2017-12-14', '2017-12-14 09-24-20', 'Ranjan ', '', 'Bansal College', 'Timepas ke liye dekh rha'),
(641, '7049450982', '292806', '2017-12-16', '2017-12-16 11-59-16', 'Surbhi', '', '', ''),
(651, '9340629527', '401027', '2017-12-28', '2017-12-28 07-18-44', '', '', '', ''),
(652, '9893540319', '962240', '2017-12-29', '2017-12-29 06-59-20', '', '', '', ''),
(653, '9893540318', '124228', '2017-12-29', '2017-12-29 06-59-40', '', '', '', ''),
(654, '9893540318', '141635', '2017-12-29', '2017-12-29 07-07-28', '', '', '', ''),
(655, '9713002205', '194552', '2017-12-30', '2017-12-30 12-20-03', '', '', '', ''),
(656, '90748225429', '965745', '2017-12-30', '2017-12-30 01-59-59', '', '', '', ''),
(657, '9144555966', '928162', '2018-01-02', '2018-01-02 12-51-43', '', '', '', ''),
(658, '9584574477', '571160', '2018-01-03', '2018-01-03 12-43-21', '', '', '', ''),
(659, '9584574477', '305829', '2018-01-03', '2018-01-03 12-44-48', '', '', '', ''),
(660, '9753825932', '379522', '2018-01-03', '2018-01-03 01-33-57', '', '', '', ''),
(661, '9425489825', '928351', '2018-01-03', '2018-01-03 05-19-53', '', '', '', ''),
(662, '8871860504', '447272', '2018-01-03', '2018-01-03 06-18-02', '', '', '', ''),
(663, '9669766758', '726827', '2018-01-03', '2018-01-03 07-17-13', '', '', '', ''),
(664, '9993869967', '907079', '2018-01-04', '2018-01-04 10-43-57', '', '', '', ''),
(665, '9926854043', '381208', '2018-01-04', '2018-01-04 10-50-14', '', '', '', ''),
(666, '9993869967', '591053', '2018-01-04', '2018-01-04 11-13-55', '', '', '', ''),
(668, '9109589076', '741595', '2018-01-04', '2018-01-04 09-00-37', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_expence_info`
--
ALTER TABLE `account_expence_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `account_income_info`
--
ALTER TABLE `account_income_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `account_office_bank_account`
--
ALTER TABLE `account_office_bank_account`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `admit_card_generate`
--
ALTER TABLE `admit_card_generate`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_route_details`
--
ALTER TABLE `bus_route_details`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_staff_info`
--
ALTER TABLE `bus_staff_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_stock_purchase`
--
ALTER TABLE `bus_stock_purchase`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `bus_stop_details`
--
ALTER TABLE `bus_stop_details`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `character_certificate`
--
ALTER TABLE `character_certificate`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `class_time_table`
--
ALTER TABLE `class_time_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `complaint_staff`
--
ALTER TABLE `complaint_staff`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `complaint_student`
--
ALTER TABLE `complaint_student`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `complaint_temporary`
--
ALTER TABLE `complaint_temporary`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `employee_salary_generate`
--
ALTER TABLE `employee_salary_generate`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `enquiry_info`
--
ALTER TABLE `enquiry_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `event_certificate`
--
ALTER TABLE `event_certificate`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `event_table`
--
ALTER TABLE `event_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_`
--
ALTER TABLE `examination_`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_1st`
--
ALTER TABLE `examination_1st`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_2nd`
--
ALTER TABLE `examination_2nd`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_3rd`
--
ALTER TABLE `examination_3rd`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_4th`
--
ALTER TABLE `examination_4th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_5th`
--
ALTER TABLE `examination_5th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_6th`
--
ALTER TABLE `examination_6th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_7th`
--
ALTER TABLE `examination_7th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_8th`
--
ALTER TABLE `examination_8th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_9th`
--
ALTER TABLE `examination_9th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_10th`
--
ALTER TABLE `examination_10th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_11`
--
ALTER TABLE `examination_11`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_12th`
--
ALTER TABLE `examination_12th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_lkg`
--
ALTER TABLE `examination_lkg`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_nursery`
--
ALTER TABLE `examination_nursery`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `examination_ukg`
--
ALTER TABLE `examination_ukg`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `fees_discount_types_structure`
--
ALTER TABLE `fees_discount_types_structure`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `fees_fee_structure`
--
ALTER TABLE `fees_fee_structure`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `fees_student_fee`
--
ALTER TABLE `fees_student_fee`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `fees_student_fee_add`
--
ALTER TABLE `fees_student_fee_add`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `holiday_manage`
--
ALTER TABLE `holiday_manage`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `homework_student`
--
ALTER TABLE `homework_student`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_add_room`
--
ALTER TABLE `hostel_add_room`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_fee_details`
--
ALTER TABLE `hostel_fee_details`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_info`
--
ALTER TABLE `hostel_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_leave`
--
ALTER TABLE `hostel_leave`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_mess_daily_purchase`
--
ALTER TABLE `hostel_mess_daily_purchase`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_mess_menu`
--
ALTER TABLE `hostel_mess_menu`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_staff_info`
--
ALTER TABLE `hostel_staff_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_stock_purchase`
--
ALTER TABLE `hostel_stock_purchase`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_student_attendence`
--
ALTER TABLE `hostel_student_attendence`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hostel_student_info`
--
ALTER TABLE `hostel_student_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `participate_table`
--
ALTER TABLE `participate_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_correct_choose`
--
ALTER TABLE `question_correct_choose`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_fill_in_the_blank`
--
ALTER TABLE `question_fill_in_the_blank`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_long`
--
ALTER TABLE `question_long`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_matching`
--
ALTER TABLE `question_matching`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_objective`
--
ALTER TABLE `question_objective`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_other`
--
ALTER TABLE `question_other`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_paper_set`
--
ALTER TABLE `question_paper_set`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_short`
--
ALTER TABLE `question_short`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_true_false`
--
ALTER TABLE `question_true_false`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `question_unseen_passage`
--
ALTER TABLE `question_unseen_passage`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `result_publish`
--
ALTER TABLE `result_publish`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_class_info`
--
ALTER TABLE `school_info_class_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_class_period`
--
ALTER TABLE `school_info_class_period`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_discount_types`
--
ALTER TABLE `school_info_discount_types`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_exam_types`
--
ALTER TABLE `school_info_exam_types`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_fee_types`
--
ALTER TABLE `school_info_fee_types`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_general`
--
ALTER TABLE `school_info_general`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_rfid_card`
--
ALTER TABLE `school_info_rfid_card`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_subjects`
--
ALTER TABLE `school_info_subjects`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_info_subject_info`
--
ALTER TABLE `school_info_subject_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `school_library_book`
--
ALTER TABLE `school_library_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_info`
--
ALTER TABLE `sms_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sports_participate_table`
--
ALTER TABLE `sports_participate_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sports_table`
--
ALTER TABLE `sports_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sport_certificate`
--
ALTER TABLE `sport_certificate`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `stock_buy_table_1`
--
ALTER TABLE `stock_buy_table_1`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `stock_item_table`
--
ALTER TABLE `stock_item_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `stock_sale_table`
--
ALTER TABLE `stock_sale_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student_admission_info`
--
ALTER TABLE `student_admission_info`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student_leave_management`
--
ALTER TABLE `student_leave_management`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student_penality`
--
ALTER TABLE `student_penality`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student_tc`
--
ALTER TABLE `student_tc`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `teacher_reminder`
--
ALTER TABLE `teacher_reminder`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_`
--
ALTER TABLE `time_table_`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_1st`
--
ALTER TABLE `time_table_1st`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_2nd`
--
ALTER TABLE `time_table_2nd`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_3rd`
--
ALTER TABLE `time_table_3rd`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_4th`
--
ALTER TABLE `time_table_4th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_5th`
--
ALTER TABLE `time_table_5th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_6th`
--
ALTER TABLE `time_table_6th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_7th`
--
ALTER TABLE `time_table_7th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_8th`
--
ALTER TABLE `time_table_8th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_9th`
--
ALTER TABLE `time_table_9th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_10th`
--
ALTER TABLE `time_table_10th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_11`
--
ALTER TABLE `time_table_11`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_12th`
--
ALTER TABLE `time_table_12th`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_lkg`
--
ALTER TABLE `time_table_lkg`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_nursery`
--
ALTER TABLE `time_table_nursery`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `time_table_ukg`
--
ALTER TABLE `time_table_ukg`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_expence_info`
--
ALTER TABLE `account_expence_info`
  MODIFY `s_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `account_income_info`
--
ALTER TABLE `account_income_info`
  MODIFY `s_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `account_office_bank_account`
--
ALTER TABLE `account_office_bank_account`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `s_no` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admit_card_generate`
--
ALTER TABLE `admit_card_generate`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bus_route_details`
--
ALTER TABLE `bus_route_details`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `bus_staff_info`
--
ALTER TABLE `bus_staff_info`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bus_stock_purchase`
--
ALTER TABLE `bus_stock_purchase`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bus_stop_details`
--
ALTER TABLE `bus_stop_details`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `character_certificate`
--
ALTER TABLE `character_certificate`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `class_time_table`
--
ALTER TABLE `class_time_table`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `complaint_staff`
--
ALTER TABLE `complaint_staff`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `complaint_student`
--
ALTER TABLE `complaint_student`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `complaint_temporary`
--
ALTER TABLE `complaint_temporary`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employee_salary_generate`
--
ALTER TABLE `employee_salary_generate`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `enquiry_info`
--
ALTER TABLE `enquiry_info`
  MODIFY `s_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `event_certificate`
--
ALTER TABLE `event_certificate`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `event_table`
--
ALTER TABLE `event_table`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `examination_`
--
ALTER TABLE `examination_`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `examination_1st`
--
ALTER TABLE `examination_1st`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examination_2nd`
--
ALTER TABLE `examination_2nd`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examination_3rd`
--
ALTER TABLE `examination_3rd`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `examination_4th`
--
ALTER TABLE `examination_4th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examination_5th`
--
ALTER TABLE `examination_5th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examination_6th`
--
ALTER TABLE `examination_6th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `examination_7th`
--
ALTER TABLE `examination_7th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `examination_8th`
--
ALTER TABLE `examination_8th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examination_9th`
--
ALTER TABLE `examination_9th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examination_10th`
--
ALTER TABLE `examination_10th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `examination_11`
--
ALTER TABLE `examination_11`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `examination_12th`
--
ALTER TABLE `examination_12th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `examination_lkg`
--
ALTER TABLE `examination_lkg`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `examination_nursery`
--
ALTER TABLE `examination_nursery`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `examination_ukg`
--
ALTER TABLE `examination_ukg`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fees_discount_types_structure`
--
ALTER TABLE `fees_discount_types_structure`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `fees_fee_structure`
--
ALTER TABLE `fees_fee_structure`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `fees_student_fee`
--
ALTER TABLE `fees_student_fee`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `fees_student_fee_add`
--
ALTER TABLE `fees_student_fee_add`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `s_no` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `holiday_manage`
--
ALTER TABLE `holiday_manage`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `homework_student`
--
ALTER TABLE `homework_student`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hostel_add_room`
--
ALTER TABLE `hostel_add_room`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hostel_fee_details`
--
ALTER TABLE `hostel_fee_details`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hostel_info`
--
ALTER TABLE `hostel_info`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hostel_leave`
--
ALTER TABLE `hostel_leave`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hostel_mess_daily_purchase`
--
ALTER TABLE `hostel_mess_daily_purchase`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hostel_mess_menu`
--
ALTER TABLE `hostel_mess_menu`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hostel_staff_info`
--
ALTER TABLE `hostel_staff_info`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hostel_stock_purchase`
--
ALTER TABLE `hostel_stock_purchase`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hostel_student_attendence`
--
ALTER TABLE `hostel_student_attendence`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hostel_student_info`
--
ALTER TABLE `hostel_student_info`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `participate_table`
--
ALTER TABLE `participate_table`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `question_correct_choose`
--
ALTER TABLE `question_correct_choose`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `question_fill_in_the_blank`
--
ALTER TABLE `question_fill_in_the_blank`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `question_long`
--
ALTER TABLE `question_long`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `question_matching`
--
ALTER TABLE `question_matching`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `question_objective`
--
ALTER TABLE `question_objective`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `question_other`
--
ALTER TABLE `question_other`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `question_paper_set`
--
ALTER TABLE `question_paper_set`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `question_short`
--
ALTER TABLE `question_short`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `question_true_false`
--
ALTER TABLE `question_true_false`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `question_unseen_passage`
--
ALTER TABLE `question_unseen_passage`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `s_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `result_publish`
--
ALTER TABLE `result_publish`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school_info_class_info`
--
ALTER TABLE `school_info_class_info`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `school_info_class_period`
--
ALTER TABLE `school_info_class_period`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `school_info_discount_types`
--
ALTER TABLE `school_info_discount_types`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `school_info_exam_types`
--
ALTER TABLE `school_info_exam_types`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `school_info_fee_types`
--
ALTER TABLE `school_info_fee_types`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `school_info_general`
--
ALTER TABLE `school_info_general`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `school_info_rfid_card`
--
ALTER TABLE `school_info_rfid_card`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `school_info_subjects`
--
ALTER TABLE `school_info_subjects`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `school_info_subject_info`
--
ALTER TABLE `school_info_subject_info`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `school_library_book`
--
ALTER TABLE `school_library_book`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sms_info`
--
ALTER TABLE `sms_info`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `s_no` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sports_participate_table`
--
ALTER TABLE `sports_participate_table`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sports_table`
--
ALTER TABLE `sports_table`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sport_certificate`
--
ALTER TABLE `sport_certificate`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `stock_buy_table_1`
--
ALTER TABLE `stock_buy_table_1`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stock_item_table`
--
ALTER TABLE `stock_item_table`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stock_sale_table`
--
ALTER TABLE `stock_sale_table`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_admission_info`
--
ALTER TABLE `student_admission_info`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `student_leave_management`
--
ALTER TABLE `student_leave_management`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `student_penality`
--
ALTER TABLE `student_penality`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `student_tc`
--
ALTER TABLE `student_tc`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `teacher_reminder`
--
ALTER TABLE `teacher_reminder`
  MODIFY `s_no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `time_table_`
--
ALTER TABLE `time_table_`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_1st`
--
ALTER TABLE `time_table_1st`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_2nd`
--
ALTER TABLE `time_table_2nd`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_3rd`
--
ALTER TABLE `time_table_3rd`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_4th`
--
ALTER TABLE `time_table_4th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_5th`
--
ALTER TABLE `time_table_5th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_6th`
--
ALTER TABLE `time_table_6th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_7th`
--
ALTER TABLE `time_table_7th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_8th`
--
ALTER TABLE `time_table_8th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_9th`
--
ALTER TABLE `time_table_9th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_10th`
--
ALTER TABLE `time_table_10th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_11`
--
ALTER TABLE `time_table_11`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_12th`
--
ALTER TABLE `time_table_12th`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_lkg`
--
ALTER TABLE `time_table_lkg`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_nursery`
--
ALTER TABLE `time_table_nursery`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table_ukg`
--
ALTER TABLE `time_table_ukg`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
