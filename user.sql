-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: feb. 15, 2023 la 10:18 AM
-- Versiune server: 10.4.11-MariaDB
-- Versiune PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `user`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admitted_medicine`
--

CREATE TABLE `admitted_medicine` (
  `patient_name` varchar(20) NOT NULL,
  `patient_contact_no` varchar(11) NOT NULL,
  `time_of_admission` varchar(11) NOT NULL,
  `patient_age` varchar(3) NOT NULL,
  `disease` varchar(40) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `quantity` varchar(3) NOT NULL,
  `days` varchar(2) NOT NULL,
  `time_of_day` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admitted_medicine_cost`
--

CREATE TABLE `admitted_medicine_cost` (
  `patient_name` varchar(20) NOT NULL,
  `patient_contact_no` varchar(11) NOT NULL,
  `time_of_admission` varchar(11) NOT NULL,
  `patient_age` varchar(3) NOT NULL,
  `disease` varchar(40) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `quantity` varchar(3) NOT NULL,
  `days` varchar(2) NOT NULL,
  `time_of_day` varchar(30) NOT NULL,
  `selling_price` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admitted_patient`
--

CREATE TABLE `admitted_patient` (
  `patient_name` varchar(20) NOT NULL,
  `patient_age` varchar(3) NOT NULL,
  `patient_contact_no` varchar(11) NOT NULL,
  `patient_blood_group` varchar(5) NOT NULL,
  `patient_address` varchar(50) NOT NULL,
  `patient_disease` varchar(20) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `doc_id` varchar(20) NOT NULL,
  `doc_dept` varchar(20) NOT NULL,
  `time_of_admission` varchar(11) NOT NULL,
  `ward_name` varchar(20) NOT NULL,
  `checked_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admitted_test`
--

CREATE TABLE `admitted_test` (
  `patient_name` varchar(20) NOT NULL,
  `patient_contact_no` varchar(11) NOT NULL,
  `time_of_admission` varchar(11) NOT NULL,
  `patient_age` varchar(3) NOT NULL,
  `test_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admitted_test_cost`
--

CREATE TABLE `admitted_test_cost` (
  `patient_name` varchar(20) NOT NULL,
  `patient_contact_no` varchar(11) NOT NULL,
  `time_of_admission` varchar(11) NOT NULL,
  `patient_age` varchar(3) NOT NULL,
  `test_name` varchar(30) NOT NULL,
  `test_cost` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `allocate_patient_bed`
--

CREATE TABLE `allocate_patient_bed` (
  `patient_name` varchar(20) NOT NULL,
  `patient_age` varchar(3) NOT NULL,
  `patient_contact_no` varchar(11) NOT NULL,
  `ward_name` varchar(20) NOT NULL,
  `bed_no` varchar(5) NOT NULL,
  `bed_type` varchar(10) NOT NULL,
  `bed_cost` varchar(3) NOT NULL,
  `bed_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `appointment`
--

CREATE TABLE `appointment` (
  `pat_name` varchar(20) NOT NULL,
  `pat_age` varchar(3) NOT NULL,
  `pat_address` varchar(50) NOT NULL,
  `pat_contact_no` varchar(15) NOT NULL,
  `doc_id` varchar(10) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `doc_dept` varchar(20) NOT NULL,
  `appointment_date` varchar(15) NOT NULL,
  `appointment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `appointment_medicine`
--

CREATE TABLE `appointment_medicine` (
  `pat_name` varchar(20) NOT NULL,
  `pat_contact_no` varchar(15) NOT NULL,
  `appointment_date` varchar(15) NOT NULL,
  `pat_age` varchar(3) NOT NULL,
  `disease` varchar(40) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `quantity` varchar(3) NOT NULL,
  `days` varchar(2) NOT NULL,
  `time_of_day` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `appointment_test`
--

CREATE TABLE `appointment_test` (
  `pat_name` varchar(20) NOT NULL,
  `pat_contact_no` varchar(15) NOT NULL,
  `appointment_date` varchar(15) NOT NULL,
  `pat_age` varchar(3) NOT NULL,
  `test_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `bed`
--

CREATE TABLE `bed` (
  `pat_contact_no` varchar(11) NOT NULL,
  `ward_id` varchar(20) NOT NULL,
  `bed_no` varchar(5) NOT NULL,
  `bed_type` varchar(10) NOT NULL,
  `bed_cost` varchar(3) NOT NULL,
  `bed_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `blood_bank`
--

CREATE TABLE `blood_bank` (
  `group_name` varchar(3) NOT NULL,
  `quantity` varchar(3) NOT NULL,
  `storage_date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `blood_group`
--

CREATE TABLE `blood_group` (
  `name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `blood_group`
--

INSERT INTO `blood_group` (`name`) VALUES
('A+'),
('A-'),
('AB+'),
('AB-'),
('B+'),
('B-'),
('O+'),
('O-');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `doctor`
--

CREATE TABLE `doctor` (
  `name` varchar(20) NOT NULL,
  `age` varchar(3) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `department` varchar(20) NOT NULL,
  `specialist_in` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `join_date` varchar(20) NOT NULL,
  `counsiling_hour` varchar(50) NOT NULL,
  `id` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `doctor`
--

INSERT INTO `doctor` (`name`, `age`, `contact_no`, `department`, `specialist_in`, `address`, `join_date`, `counsiling_hour`, `id`, `password`) VALUES
('Razvan Doctor', '34', '0766578919', 'Ortopedie', 'Chirurgie ortopedica', 'Strada D nr 6', '5/17/2022', '08:00 AM - 14:00 PM', 'razvand', 'razvand');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `medicine`
--

CREATE TABLE `medicine` (
  `pat_contact_no` varchar(15) NOT NULL,
  `appointment_date` varchar(15) NOT NULL,
  `doc_id` varchar(10) NOT NULL,
  `disease` varchar(40) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `quantity` varchar(3) NOT NULL,
  `days` varchar(2) NOT NULL,
  `time_of_day` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `medicine`
--

INSERT INTO `medicine` (`pat_contact_no`, `appointment_date`, `doc_id`, `disease`, `product_name`, `quantity`, `days`, `time_of_day`) VALUES
('0743370919', '2022-08-31', 'doc1', 'Artrita', 'Calbo-D', '2', '2', '1-1-1'),
('0743370919', '2022-08-31', 'doc1', 'Artrita', 'Napa', '3', '3', '1-1-1'),
('0743370910', '2022-08-31', 'doc1', 'Artrita', 'Calbo-D', '3', '3', '1-1-1'),
('0743370910', '2022-08-31', 'doc1', 'Artrita', 'Minocycline', '3', '3', '1-1-1'),
('0743370910', '31-Aug-22', 'doc1', 'Ortopedic', 'Calbo-D', '2', '2', '0-0-1'),
('0743370910', '31-Aug-22', 'doc1', 'Ortopedic', 'Cyclooxygenase-2 inhibitor', '2', '2', '0-0-1');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `medicine_name`
--

CREATE TABLE `medicine_name` (
  `medicine_name` varchar(40) NOT NULL,
  `disease_type` varchar(40) NOT NULL,
  `disease_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `medicine_name`
--

INSERT INTO `medicine_name` (`medicine_name`, `disease_type`, `disease_name`) VALUES
('Abetis', 'Cardiac', 'Hipertensiune'),
('Analgezic', 'Ortopedic', 'Osteoartrita'),
('Antinflamator', 'Cardiac', 'Accident cardio-vascular'),
('Aspirin', 'Cardiac', 'Accident cardio-vascular'),
('Calbo-D', 'Ortopedic', 'Artrita'),
('Cyclooxygenase-2 inhibitor', 'Ortopedic', 'Osteoartrita'),
('Excedrin', 'Cardiac', 'Hipertensiunen'),
('Gleostine', 'Neurologic', 'Accident vascular'),
('KKK', 'Neurologic', 'Tumoare creier'),
('Lomustine', 'Neurologic', 'Tumoare creier'),
('Minocycline', 'Ortopedic', 'Artrita'),
('Napa', 'Ortopedic', 'Artrita'),
('Pamprin Max ', 'Neurologic', 'Tumoare creier'),
('Vanquish', 'Neurologic', 'Accident vascular');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `product_type`
--

CREATE TABLE `product_type` (
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `product_type`
--

INSERT INTO `product_type` (`name`) VALUES
('Medicine'),
('Food Item'),
('Water');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `release_patient`
--

CREATE TABLE `release_patient` (
  `pat_name` varchar(20) NOT NULL,
  `pat_age` varchar(5) NOT NULL,
  `pat_contact_num` varchar(11) NOT NULL,
  `pat_address` varchar(20) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `doc_name` varchar(20) NOT NULL,
  `date_of_admit` varchar(11) NOT NULL,
  `date_of_release` varchar(11) NOT NULL,
  `num_of_admitted_days` varchar(2) NOT NULL,
  `medicine_cost` varchar(4) NOT NULL,
  `test_cost` varchar(4) NOT NULL,
  `bed_cost` varchar(4) NOT NULL,
  `total_cost` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `staff`
--

CREATE TABLE `staff` (
  `name` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `contact_num` varchar(11) NOT NULL,
  `post` varchar(20) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `join_date` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `staff_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `staff`
--

INSERT INTO `staff` (`name`, `age`, `contact_num`, `post`, `blood_group`, `join_date`, `address`, `staff_id`, `staff_password`) VALUES
('Andreea Bunda', 24, '0766543123', 'Receptioner', 'AB+', '5/3/2022', 'Strada H nr 5', 'andreea', 'andreea');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `supplier`
--

CREATE TABLE `supplier` (
  `company_name` varchar(20) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `purchased_date` varchar(15) NOT NULL,
  `quantity` varchar(4) NOT NULL,
  `buying_price` varchar(5) NOT NULL,
  `selling_price` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `test`
--

CREATE TABLE `test` (
  `pat_contact_no` varchar(11) NOT NULL,
  `appointment_date` varchar(15) NOT NULL,
  `doc_id` varchar(10) NOT NULL,
  `disease` varchar(30) NOT NULL,
  `test_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `test_name`
--

CREATE TABLE `test_name` (
  `test_Name` varchar(30) NOT NULL,
  `disease_type` varchar(30) NOT NULL,
  `disease_name` varchar(30) NOT NULL,
  `test_cost` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `timing`
--

CREATE TABLE `timing` (
  `timing` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `timing`
--

INSERT INTO `timing` (`timing`) VALUES
('1-0-0'),
('0-1-0'),
('0-0-1'),
('1-1-0'),
('1-0-1'),
('0-1-1'),
('1-1-1');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ward`
--

CREATE TABLE `ward` (
  `ward_name` varchar(20) NOT NULL,
  `ward_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `ward`
--

INSERT INTO `ward` (`ward_name`, `ward_id`) VALUES
('Cardiologie', '1'),
('General', '2');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ward_bed`
--

CREATE TABLE `ward_bed` (
  `ward_name` varchar(20) NOT NULL,
  `pat_contact_no` varchar(11) NOT NULL,
  `bed_no` varchar(5) NOT NULL,
  `bed_type` varchar(10) NOT NULL,
  `bed_cost` varchar(3) NOT NULL,
  `bed_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexuri pentru tabele `blood_group`
--
ALTER TABLE `blood_group`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexuri pentru tabele `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexuri pentru tabele `medicine_name`
--
ALTER TABLE `medicine_name`
  ADD UNIQUE KEY `medicine_name` (`medicine_name`);

--
-- Indexuri pentru tabele `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexuri pentru tabele `ward`
--
ALTER TABLE `ward`
  ADD UNIQUE KEY `ward_name` (`ward_name`),
  ADD UNIQUE KEY `ward_id` (`ward_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
