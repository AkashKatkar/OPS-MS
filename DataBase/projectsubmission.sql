-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2020 at 03:51 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectsubmission`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(6) NOT NULL,
  `a_name` varchar(40) NOT NULL,
  `a_type` varchar(40) NOT NULL,
  `a_pass` varchar(40) DEFAULT NULL,
  `a_email` varchar(40) NOT NULL,
  `a_pn` varchar(30) NOT NULL,
  `a_email_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proj_starting_date` date DEFAULT NULL,
  `proj_ending_date` date DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_type`, `a_pass`, `a_email`, `a_pn`, `a_email_time`, `proj_starting_date`, `proj_ending_date`) VALUES
(208111, 'Ganesh Gaitonde', 'root', 'c6916d3c88ee8ecebd2f032ff57f3ea8', 'skykatkar6665@gmail.com', '9163452746', '2020-12-09 02:46:06', '2020-11-01', '2020-12-27'),
(12345, 'AK', 'sudo_user', 'c6916d3c88ee8ecebd2f032ff57f3ea8', 'skykatkar66662@gmail.com', '9163627480', '2020-12-07 20:49:04', NULL, NULL),
(123456, 'Sky Ka', 'deactivate sudo_user', 'efa283fdcc2efd55000c7742b387fb68', 'skykatkar66661@gmail.com', '9163452170', '2020-12-03 13:04:31', NULL, NULL),
(555666, 'Sanad Soman', 'sudo_user', 'c6916d3c88ee8ecebd2f032ff57f3ea8', 'sanadsoman@gmail.com', '9163452780', '2020-10-24 19:48:58', NULL, NULL),
(187189, 'akash', 'deactivate sudo_user', NULL, 'skykatkar66661@gmail.com', '7894236510', '2020-11-17 03:23:02', NULL, NULL),
(942850, 'akash katkar', 'sudo_user', 'c6916d3c88ee8ecebd2f032ff57f3ea8', 'skykatkar6666@gmail.com', '9075897125', '2020-12-09 03:36:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `s_id` int(10) NOT NULL,
  `proj_name` varchar(50) NOT NULL,
  `proj_description` varchar(200) NOT NULL,
  `proj_type` varchar(20) NOT NULL,
  `proj_status` varchar(20) NOT NULL,
  `proj_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proj_select` varchar(20) DEFAULT NULL,
  `stage1_file` varchar(400) DEFAULT NULL,
  `stage1_stat` varchar(30) DEFAULT NULL,
  `stage1_reje_reason` varchar(400) DEFAULT NULL,
  `stage2_file` varchar(400) DEFAULT NULL,
  `stage2_stat` varchar(30) DEFAULT NULL,
  `stage2_reje_reason` varchar(400) DEFAULT NULL,
  `stage3_file` varchar(400) DEFAULT NULL,
  `stage3_stat` varchar(30) DEFAULT NULL,
  `stage3_reje_reason` varchar(400) DEFAULT NULL,
  `stage4_file` varchar(400) DEFAULT NULL,
  `stage4_stat` varchar(30) DEFAULT NULL,
  `stage4_reje_reason` varchar(400) DEFAULT NULL,
  `stage5_file` varchar(400) DEFAULT NULL,
  `stage5_stat` varchar(30) DEFAULT NULL,
  `stage5_reje_reason` varchar(400) DEFAULT NULL,
  `stage6_file` varchar(400) DEFAULT NULL,
  `stage6_stat` varchar(30) DEFAULT NULL,
  `stage6_reje_reason` varchar(400) DEFAULT NULL,
  `stage7_file` varchar(400) DEFAULT NULL,
  `stage7_stat` varchar(30) DEFAULT NULL,
  `stage7_reje_reason` varchar(400) DEFAULT NULL,
  `stagefinal_file` varchar(400) DEFAULT NULL,
  `stagefinal_stat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `s_id`, `proj_name`, `proj_description`, `proj_type`, `proj_status`, `proj_create_time`, `proj_select`, `stage1_file`, `stage1_stat`, `stage1_reje_reason`, `stage2_file`, `stage2_stat`, `stage2_reje_reason`, `stage3_file`, `stage3_stat`, `stage3_reje_reason`, `stage4_file`, `stage4_stat`, `stage4_reje_reason`, `stage5_file`, `stage5_stat`, `stage5_reje_reason`, `stage6_file`, `stage6_stat`, `stage6_reje_reason`, `stage7_file`, `stage7_stat`, `stage7_reje_reason`, `stagefinal_file`, `stagefinal_stat`) VALUES
(1, 2, 'information technology', 'IOT Stands For Internet Of Things', 'IOT', 'Active', '2020-12-24 06:40:30', 'Selected', 'Uploads/LSA UNIT 1 CHAP3.pdf', 'Submitted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 'information technology uyt', 'IOT Stands For Internet Of Things', 'IOT', 'Completed', '2020-10-24 03:40:50', NULL, 'Uploads/LSA UNIT 1 CHAP3.pdf', 'Submitted', NULL, 'Uploads/Stage 1.docx', 'Submitted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 'new project', 'Ye project mobile mai dikhta hai\r\n', 'Android Development', 'Active', '2020-11-27 11:15:33', NULL, 'Uploads/LSA UNIT 1 CHAP3.pdf', 'Accepted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'old project', 'Ye project mobile mai dikhta hai\r\n', 'Android Development', 'Active', '2020-11-28 11:15:33', NULL, 'Uploads/LSA UNIT 1 CHAP3.pdf', 'Rejected', 'tyrukijhgbv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 3, 'new hjbdsd c project', 'Ye project mobile mai dikhta hai\r\n', 'Android Development', 'Active', '2020-11-29 18:30:00', 'Selected', 'Uploads/LSA UNIT 1 CHAP3.pdf', 'Accepted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 3, 'newhbasd jc project', 'Ye project mobile mai dikhta hai\r\n', 'Android Development', 'Completed', '2020-12-03 18:30:00', NULL, 'Uploads/LSA UNIT 1 CHAP3.pdf', 'Accepted', 'gdvsd fdsfffggdgg gg gdsgfdg', 'Uploads/LSA UNIT 1 CHAP3.pdf', 'Accepted', NULL, 'Uploads/LSA UNIT 1 CHAP3.pdf', 'Accepted', 'stage3 galat hai', NULL, 'Accepted', NULL, NULL, 'Accepted', NULL, NULL, 'Accepted', NULL, NULL, 'Accepted', NULL, 'Uploads/Black Book 13.8.2020.zip', 'Submitted'),
(15, 22, 'My New Project', 'Mi Nahi Sangnar', 'Python', 'Active', '2020-12-04 01:34:54', 'Selected', 'Uploads/SEM 5 - Dnyanasadhana College, Thane.pdf', 'Submitted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `queries_doubts`
--

DROP TABLE IF EXISTS `queries_doubts`;
CREATE TABLE IF NOT EXISTS `queries_doubts` (
  `user_id` int(10) NOT NULL,
  `user_gi_pin` int(10) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `user_email` varchar(40) NOT NULL,
  `user_doubt` varchar(800) NOT NULL,
  `message_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `message_status` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rejected_proj_table`
--

DROP TABLE IF EXISTS `rejected_proj_table`;
CREATE TABLE IF NOT EXISTS `rejected_proj_table` (
  `s_id` varchar(20) NOT NULL,
  `reject_message` varchar(400) NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rejected_proj_table`
--

INSERT INTO `rejected_proj_table` (`s_id`, `reject_message`, `message_time`) VALUES
('22', 'Your Project My New Project Has Been Accepted', '2020-12-04 01:35:34'),
('2', 'Your Project information technology g Has Been Rejected Because fghtjyg', '2020-12-08 14:30:52'),
('3', 'Your Project new project Has Been Rejected Because Nahi Sangaych', '2020-12-08 18:34:48'),
('3', 'Your Project new proacject Has Been Rejected Because hdsb djbjds fmdfsd', '2020-12-08 18:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `s_id` int(10) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `s_gr` int(10) NOT NULL,
  `s_pn` varchar(15) NOT NULL,
  `s_email` varchar(40) NOT NULL,
  `s_pass` varchar(100) DEFAULT NULL,
  `s_email_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `group_id` varchar(30) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_name`, `s_gr`, `s_pn`, `s_email`, `s_pass`, `s_email_time`, `group_id`) VALUES
(1, 'Akash Katkar', 5895, '9075897125', 'skykatkar6666@gmail.com', 'c6916d3c88ee8ecebd2f032ff57f3ea8', '2020-12-13 04:36:27', 'A'),
(2, 'priyanka aher', 11724, '7649315846', 'paher2@gmail.com', NULL, '2020-12-09 02:35:01', 'A'),
(3, 'smita ahire', 5086, '7945218634', 'skykatkar6666@gmail.com', NULL, '2020-12-13 04:36:27', 'A'),
(4, 'manjeet athavale', 11795, '9426781534', 'mathavale4@gmail.com', NULL, '2020-12-09 02:35:01', 'A'),
(5, 'priti badhe', 5635, '9486251793', 'pbadhe5@gmail.com', NULL, '2020-12-09 02:35:01', 'A'),
(6, 'sejal bamane', 11700, '6452387918', 'sbamane6@gmail.com', NULL, '2020-12-09 02:35:01', 'A'),
(7, 'aditi bandre', 5639, '6415238971', 'abandre7@gmail.com', NULL, '2020-12-09 02:35:01', 'B'),
(8, 'sanket bendre', 5002, '3031464019', 'sbendre8@gmail.com', NULL, '2020-12-09 02:35:01', 'B'),
(9, 'chirag bhanushali', 14343, '1642378950', 'skykatkar6543@gmail.com', NULL, '2020-12-09 02:35:01', 'B'),
(10, 'saurabh bhekare', 11682, '3102567984', 'cartoonlovers185@gmail.com', NULL, '2020-12-09 02:35:01', 'B'),
(11, 'prathamesh bhailare', 11596, '4862178523', 'pbhailare11@gmail.com', NULL, '2020-12-09 02:35:01', 'B'),
(12, 'saurabh bhoir', 15946, '8956231470', 'skykatkar6543@gmail.com', NULL, '2020-12-09 02:35:01', 'B'),
(13, 'vandana bhoir', 5547, '4612379805', 'skykatkar6666@gmail.com', NULL, '2020-12-13 04:36:27', 'C'),
(14, 'shweta bhojane', 4545, '4612586423', '14@gmail.com', NULL, '2020-12-09 02:35:01', 'C'),
(15, 'aachal chauhan', 4691, '7845123690', 'skykatkar6543@gmail.com', NULL, '2020-12-09 02:35:01', 'C'),
(16, 'sanket chavan', 11672, '2314698752', 'schavan16@gmail.com', NULL, '2020-12-09 02:35:01', 'C'),
(17, 'siddhesh chavan', 13505, '8946215896', 'schavan17@gmail.com', NULL, '2020-12-09 02:35:01', 'C'),
(18, 'anjani choudhary', 4814, '4569782318', 'achoudhary18@gmail.com', NULL, '2020-12-09 02:35:01', 'C'),
(19, 'sachin chourasiya', 11599, '1236054978', 'schourasiya19@gmail.com', NULL, '2020-12-09 02:35:01', 'D'),
(20, 'sejal dabade', 14738, '5502364972', 'sdabade20@gmail.com', NULL, '2020-12-09 02:35:01', 'D'),
(21, 'prachiti dalavi', 4771, '4851279340', 'pdalavi21@gmail.com', NULL, '2020-12-09 02:35:01', 'D'),
(22, 'abhishek dalvi', 5061, '7894612538', 'skykatkar6666@gmail.com', NULL, '2020-12-13 04:36:27', 'D'),
(23, 'gauri dalvi', 11779, '1579426740', 'gdalvi21@gmail.com', NULL, '2020-12-09 02:35:01', 'D'),
(24, 'sejal dant', 13040, '8446217934', 'skykatkar6666@gmail.com', NULL, '2020-12-13 04:36:27', 'D'),
(25, 'ashvini dantkale', 5215, '5988124635', 'adantkale21@gmail.com', NULL, '2020-12-09 02:35:01', 'E'),
(26, 'sonu das', 15589, '7945861237', 'sdas21@gmail.com', NULL, '2020-12-09 02:35:01', 'E'),
(27, 'doli debnath', 13463, '4896742158', 'ddebnath21@gmail.com', NULL, '2020-12-09 02:35:01', 'E'),
(28, 'jivan degwekar', 12902, '9456712893', 'jdegwekar21@gmail.com', NULL, '2020-12-09 02:35:01', 'E'),
(29, 'sneha dhadve', 12916, '5210430597', 'sdhadve21@gmail.com', NULL, '2020-12-09 02:35:01', 'E'),
(30, 'sayali dhumal', 14071, '5080769423', 'sdhumal21@gmail.com', NULL, '2020-12-09 02:35:01', 'E'),
(31, 'dinesh gaikawad', 12932, '9468712597', 'dgaikawad21@gmail.com', NULL, '2020-12-09 02:35:01', 'F'),
(32, 'manasi gaikawad', 11840, '7648913458', 'skykatkar6543@gmail.com', NULL, '2020-12-09 02:35:01', 'F'),
(33, 'harsh gawali', 11763, '9468751348', 'hgawali21@gmail.com', NULL, '2020-12-09 02:35:01', 'F'),
(34, 'sayali ghagas', 11670, '9456875219', 'sghagas21@gmail.com', NULL, '2020-12-09 02:35:01', 'F'),
(35, 'vinakshi ghevade', 11793, '1597523468', 'vghevade21@gmail.com', NULL, '2020-12-09 02:35:01', 'F'),
(36, 'jigar golambade', 11638, '7954632189', 'jgolambade21@gmail.com', NULL, '2020-12-09 02:35:01', 'F'),
(37, 'priya kalekar', 5969, '4897561275', 'pkalekar37@gmail.com', NULL, '2020-12-09 02:35:01', 'G'),
(38, 'rohan kardile', 11870, '8954137945', 'rkardile38@gmail.com', NULL, '2020-12-09 02:35:01', 'G'),
(39, 'vedang karkal', 11766, '4896571238', 'cartoonlovers185@gmail.com', NULL, '2020-12-09 02:35:01', 'G'),
(40, 'akash katkar', 5895, '4679852346', 'akatkar40@gmail.com', NULL, '2020-12-09 02:35:01', 'G'),
(41, 'pradnya khale', 11809, '1502340975', 'pkhale41@gmail.com', NULL, '2020-12-09 02:35:01', 'G'),
(42, 'mayuresh khale', 11810, '1502380975', 'mkhale42@gmail.com', NULL, '2020-12-09 02:35:01', 'G');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `t_id` int(10) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  `t_pin` int(10) NOT NULL,
  `t_pn` varchar(15) NOT NULL,
  `t_email` varchar(40) NOT NULL,
  `t_pass` varchar(100) DEFAULT NULL,
  `t_email_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `group_id` varchar(5) NOT NULL,
  `t_type` varchar(20) NOT NULL DEFAULT 'teacher',
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `t_name`, `t_pin`, `t_pn`, `t_email`, `t_pass`, `t_email_time`, `group_id`, `t_type`) VALUES
(112, 'Kavita Chaok', 123452, '1579246325', 'kavitachouk2@gmail.com', NULL, '2020-12-09 02:38:51', 'B', 'teacher'),
(113, 'Sujata Iyer', 123453, '1234895762', 'sujataIyer3@gmail.com', NULL, '2020-12-09 02:38:55', 'C', 'teacher'),
(115, 'Vaishali Jadhav', 123455, '4297549315', 'vaishalijadhav5@gmail.com', NULL, '2020-12-09 02:38:59', 'E', 'teacher'),
(116, 'Dnyaneshwar Deore', 123456, '4796513789', 'dnyaneshwardeore6@gmail.com', NULL, '2020-12-09 02:54:10', 'F', 'Teacher'),
(117, 'Trupti Kulkarni', 123457, '9476158549', 'truptikulkarni7@gmail.com', NULL, '2020-12-09 02:39:07', 'G', 'teacher'),
(111, 'Pragati Ubale', 123451, '123456789', 'skykatkar6666@gmail.com', 'c6916d3c88ee8ecebd2f032ff57f3ea8', '2020-12-13 05:16:46', 'A', 'teacher'),
(114, 'Rajmohan Yadav', 713942, '7431986520', 'ryadav4@gmail.com', NULL, '2020-12-09 02:38:55', 'D', 'Supervisor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
