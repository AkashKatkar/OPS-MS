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
-- Database: `college_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
CREATE TABLE IF NOT EXISTS `admin_details` (
  `aid` int(10) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `apw` varchar(20) DEFAULT NULL,
  `aemail` varchar(50) NOT NULL,
  `apn` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`aid`, `aname`, `apw`, `aemail`, `apn`) VALUES
(35, 'Akash', 'sky', 'skykatkar6666@gmail.com', '9075897125'),
(40, 'Akash', 'Akash@1234', 'skykatkar6666@gmail.com', '9075897125'),
(19, 'ak', 'sky', 'asfdvfas', '15632'),
(18, 'gd', 'asd', 'asd', '545'),
(16, 'gd', 'asd', 'asd', '545'),
(15, 'gd', 'asd', 'asd', '545'),
(12, 'jgh', '', 'skykatkar6666@gmail.com', '1234567890'),
(123, 'Akash', 'Akash@1234', 'skykatkar6666@gmail.com', '9075897125'),
(808601, 'Sanad', 'Sanad5432@', 'skykatkar6666@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `stud_table`
--

DROP TABLE IF EXISTS `stud_table`;
CREATE TABLE IF NOT EXISTS `stud_table` (
  `s_id` int(10) NOT NULL,
  `s_gr` int(10) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `s_pn` varchar(15) NOT NULL,
  `s_email` varchar(40) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_table`
--

INSERT INTO `stud_table` (`s_id`, `s_gr`, `s_name`, `s_pn`, `s_email`) VALUES
(1, 5895, 'Akash Katkar', '9075897125', 'skykatkar6666@gmail.com'),
(2, 11724, 'priyanka aher', '7649315846', 'paher2@gmail.com'),
(3, 5086, 'smita ahire', '7945218634', 'skykatkar6666@gmail.com'),
(4, 11795, 'manjeet athavale', '9426781534', 'mathavale4@gmail.com'),
(5, 5635, 'priti badhe', '9486251793', 'pbadhe5@gmail.com'),
(6, 11700, 'sejal bamane', '6452387918', 'sbamane6@gmail.com'),
(7, 5639, 'aditi bandre', '6415238971', 'abandre7@gmail.com'),
(8, 5002, 'sanket bendre', '3031464019', 'sbendre8@gmail.com'),
(9, 14343, 'chirag bhanushali', '1642378950', 'skykatkar6543@gmail.com'),
(10, 11682, 'saurabh bhekare', '3102567984', 'cartoonlovers185@gmail.com'),
(14, 4545, 'shweta bhojane', '4612586423', '14@gmail.com'),
(13, 5547, 'vandana bhoir', '4612379805', 'skykatkar6666@gmail.com'),
(12, 15946, 'saurabh bhoir', '8956231470', 'skykatkar6543@gmail.com'),
(11, 11596, 'prathamesh bhailare', '4862178523', 'pbhailare11@gmail.com'),
(15, 4691, 'aachal chauhan', '7845123690', 'skykatkar6543@gmail.com'),
(16, 11672, 'sanket chavan', '2314698752', 'schavan16@gmail.com'),
(17, 13505, 'siddhesh chavan', '8946215896', 'schavan17@gmail.com'),
(18, 4814, 'anjani choudhary', '4569782318', 'achoudhary18@gmail.com'),
(19, 11599, 'sachin chourasiya', '1236054978', 'schourasiya19@gmail.com'),
(20, 14738, 'sejal dabade', '5502364972', 'sdabade20@gmail.com'),
(21, 4771, 'prachiti dalavi', '4851279340', 'pdalavi21@gmail.com'),
(22, 5061, 'abhishek dalvi', '7894612538', 'skykatkar6666@gmail.com'),
(23, 11779, 'gauri dalvi', '1579426740', 'gdalvi21@gmail.com'),
(24, 13040, 'sejal dant', '8446217934', 'skykatkar6666@gmail.com'),
(25, 5215, 'ashvini dantkale', '5988124635', 'adantkale21@gmail.com'),
(26, 15589, 'sonu das', '7945861237', 'sdas21@gmail.com'),
(27, 13463, 'doli debnath', '4896742158', 'ddebnath21@gmail.com'),
(28, 12902, 'jivan degwekar', '9456712893', 'jdegwekar21@gmail.com'),
(29, 12916, 'sneha dhadve', '5210430597', 'sdhadve21@gmail.com'),
(30, 14071, 'sayali dhumal', '5080769423', 'sdhumal21@gmail.com'),
(31, 12932, 'dinesh gaikawad', '9468712597', 'dgaikawad21@gmail.com'),
(32, 11840, 'manasi gaikawad', '7648913458', 'skykatkar6543@gmail.com'),
(33, 11763, 'harsh gawali', '9468751348', 'hgawali21@gmail.com'),
(34, 11670, 'sayali ghagas', '9456875219', 'sghagas21@gmail.com'),
(35, 11793, 'vinakshi ghevade', '1597523468', 'vghevade21@gmail.com'),
(36, 11638, 'jigar golambade', '7954632189', 'jgolambade21@gmail.com'),
(37, 5969, 'priya kalekar', '4897561275', 'pkalekar37@gmail.com'),
(38, 11870, 'rohan kardile', '8954137945', 'rkardile38@gmail.com'),
(39, 11766, 'vedang karkal', '4896571238', 'cartoonlovers185@gmail.com'),
(40, 5895, 'akash katkar', '4679852346', 'akatkar40@gmail.com'),
(41, 11809, 'pradnya khale', '1502340975', 'pkhale41@gmail.com'),
(42, 11810, 'mayuresh khale', '1502380975', 'mkhale42@gmail.com');

--
-- Triggers `stud_table`
--
DROP TRIGGER IF EXISTS `student_delete_trigger`;
DELIMITER $$
CREATE TRIGGER `student_delete_trigger` AFTER DELETE ON `stud_table` FOR EACH ROW BEGIN
DELETE FROM projectsubmission.project WHERE s_id NOT IN (SELECT s_id FROM stud_table);
DELETE FROM projectsubmission.rejected_proj_table WHERE s_id NOT IN (SELECT s_id FROM stud_table);
DELETE FROM projectsubmission.student WHERE s_id NOT IN (SELECT s_id FROM stud_table);
DELETE FROM projectsubmission.queries_doubts WHERE user_id NOT IN (SELECT s_id FROM stud_table);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `student_update_trigger`;
DELIMITER $$
CREATE TRIGGER `student_update_trigger` AFTER UPDATE ON `stud_table` FOR EACH ROW BEGIN
IF NEW.s_name <> OLD.s_name THEN
UPDATE projectsubmission.student set s_name=NEW.s_name where s_id=OLD.s_id;
END IF;
IF NEW.s_pn <> OLD.s_pn THEN
UPDATE projectsubmission.student set s_pn=NEW.s_pn where s_id=OLD.s_id;
END IF;
IF NEW.s_email <> OLD.s_email THEN
UPDATE projectsubmission.student set s_email=NEW.s_email where s_id=OLD.s_id;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `teac_table`
--

DROP TABLE IF EXISTS `teac_table`;
CREATE TABLE IF NOT EXISTS `teac_table` (
  `t_id` int(10) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  `t_pin` int(10) NOT NULL,
  `t_mob` varchar(15) NOT NULL,
  `t_email` varchar(40) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teac_table`
--

INSERT INTO `teac_table` (`t_id`, `t_name`, `t_pin`, `t_mob`, `t_email`) VALUES
(111, 'Pragati Ubale', 123451, '123456789', 'skykatkar6666@gmail.com'),
(112, 'Kavita Chaok', 123452, '1579246325', 'kavitachouk2@gmail.com'),
(113, 'Sujata Iyer', 123453, '1234895762', 'sujataIyer3@gmail.com'),
(114, 'Rajmohan Yadav', 713942, '7431986520', 'ryadav4@gmail.com'),
(115, 'Vaishali Jadhav', 123455, '4297549315', 'vaishalijadhav5@gmail.com'),
(116, 'Dnyaneshwar Deore', 123456, '4796513789', 'dnyaneshwardeore6@gmail.com'),
(117, 'Trupti Kulkarni', 123457, '9476158549', 'truptikulkarni7@gmail.com');

--
-- Triggers `teac_table`
--
DROP TRIGGER IF EXISTS `teacher_delete_trigger`;
DELIMITER $$
CREATE TRIGGER `teacher_delete_trigger` AFTER DELETE ON `teac_table` FOR EACH ROW BEGIN
DELETE FROM projectsubmission.teacher WHERE t_id NOT IN (SELECT t_id FROM teac_table);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `teacher_update_trigger`;
DELIMITER $$
CREATE TRIGGER `teacher_update_trigger` AFTER UPDATE ON `teac_table` FOR EACH ROW BEGIN
IF NEW.t_name <> OLD.t_name THEN
UPDATE projectsubmission.teacher set t_name=NEW.t_name where t_id=OLD.t_id;
END IF;
IF NEW.t_mob <> OLD.t_mob THEN
UPDATE projectsubmission.teacher set t_pn=NEW.t_mob where t_id=OLD.t_id;
END IF;
IF NEW.t_email <> OLD.t_email THEN
UPDATE projectsubmission.teacher set t_email=NEW.t_email where t_id=OLD.t_id;
END IF;
END
$$
DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
