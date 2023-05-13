SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
CREATE TABLE `branch` (
  `branchId` int(2) NOT NULL,
  `branchName` varchar(20) NOT NULL
);
INSERT INTO `branch` (`branchId`,`branchName`) VALUES
(1,'Hessarghatta'),
(2,'Jalahalli');
CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager by cv', 1, '2023-01-15 04:30:48'),
(2, 'This is testing message to admin or manager by vandana', 2, '2017-12-15 04:35:48');
CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2023-01-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2023-01-15 04:36:27'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2023-01-15 07:14:47');
CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> OUr privacy policy is changed for account information get new prospectus from your nearest branch', '2017-12-14 13:11:46'),
(2, '2', 'Dear Customer,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> Acharya </kbd> branch for new prospectus.', '2017-12-16 06:29:23');
CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '1200345', 'SBI', 'Praveen', '40800', '2023-01-14 11:55:07'),
(2, '1200346', 'KBL', 'Rohit', '71000', '2023-01-14 11:55:07'),
(3, '1200347', 'HDFC', 'Sumanth', '71000', '2023-01-14 11:55:07');
CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'cvvishal2001@gmail.com', 'cv@123', 'vishal', '50000', '0601','9008253370', 'Banglore', 'Bagalagunte', 'Student', '12345', '1', 'Current', '2023-01-14 05:50:06'),
(2, 'vandanan@gmail.com', 'van@02', 'vandana', '1000000', '0987', '7996564749', 'Banglore', 'Laggere', 'Student', '12346', '2', 'Saving', '2023-01-14 04:50:06');
ALTER TABLE `branch`
ADD PRIMARY KEY (`branchId`);
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);
  ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);
  ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);
  ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);
  ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);
  ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
  ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
  ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
  ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
  ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
  
  