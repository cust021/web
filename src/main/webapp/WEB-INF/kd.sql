-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        11.0.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- kd 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `kd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `kd`;

-- 테이블 kd.board_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_info` (
  `BI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `BI_TITLE` varchar(100) NOT NULL,
  `BI_CONTENT` text NOT NULL,
  `BI_WRITER` varchar(30) NOT NULL,
  `BI_CREDAT` timestamp NOT NULL,
  `BI_CNT` int(11) NOT NULL,
  PRIMARY KEY (`BI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.board_info:~13 rows (대략적) 내보내기
INSERT INTO `board_info` (`BI_NUM`, `BI_TITLE`, `BI_CONTENT`, `BI_WRITER`, `BI_CREDAT`, `BI_CNT`) VALUES
	(1, '첫번째 게시물', '냉무', '글쓴이', '2023-07-10 06:09:58', 2),
	(2, '첫번째 게시물', '냉무', '글쓴이', '2023-07-10 06:09:59', 1),
	(3, '두 번째 게시물', '			냉무2\r\n			ㅇ', '김병만', '2023-07-10 07:15:23', 2),
	(4, '첫번째 게시물', '냉무', '글쓴이', '2023-07-10 07:46:10', 0),
	(5, '첫번째 게시물', '냉무', '글쓴이', '2023-07-10 07:46:12', 0),
	(6, '안녕', '안녕하세요.\r\n			', '안녕2', '2023-07-14 00:12:33', 23),
	(7, '수정', '내용\r\n			', '수정이', '2023-07-14 00:12:41', 2332),
	(8, '수저2', '											수정해ㄸ\r\n\r\n			\r\n			', '수정22', '2023-07-14 00:13:21', 23322),
	(9, '첫번째 게시물', '냉무', '글쓴이', '2023-07-14 00:15:03', 0),
	(10, '안녕하세요', '안녕안녕', '나', '2023-07-14 03:10:06', 0),
	(11, '너도수정', '집 보냐줘\r\n\r\n			', '또 수정', '2023-07-14 03:10:14', 0),
	(12, '안녕하세요', '			안녕 안녕\r\n			', '?', '2023-07-14 03:10:50', 0),
	(13, '하이', '잘가', '올챙이', '2023-07-14 03:18:53', 0);

-- 테이블 kd.class_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `class_info` (
  `CI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `CI_NAME` varchar(100) NOT NULL,
  `CI_DESC` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CI_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.class_info:~44 rows (대략적) 내보내기
INSERT INTO `class_info` (`CI_NUM`, `CI_NAME`, `CI_DESC`) VALUES
	(1, '안녕', 'HI'),
	(2, '안녕', 'HELLO'),
	(3, '잘가', 'BYE'),
	(4, '안녕', 'HI'),
	(5, '안녕', 'HELLO'),
	(6, '잘가', 'BYE'),
	(7, '123', ')123'),
	(8, '안녕', 'HI'),
	(9, '안녕', 'HELLO'),
	(10, '잘가', 'BYE'),
	(11, '안녕', 'HI'),
	(12, '안녕', 'HELLO'),
	(13, '잘가', 'BYE'),
	(14, '안녕', 'HI'),
	(15, '안녕', 'HELLO'),
	(16, '잘가', 'BYE'),
	(17, '안녕', 'HI'),
	(18, '안녕', 'HELLO'),
	(19, '잘가', 'BYE'),
	(20, '안녕', 'HI'),
	(21, '안녕', 'HELLO'),
	(22, '잘가', 'BYE'),
	(23, '안녕', 'HI'),
	(24, '안녕', 'HELLO'),
	(25, '잘가', 'BYE'),
	(26, '안녕', 'HI'),
	(27, '안녕', 'HELLO'),
	(28, '잘가', 'BYE'),
	(29, '안녕', 'HI'),
	(30, '안녕', 'HELLO'),
	(31, '잘가', 'BYE'),
	(32, '안녕', 'HI'),
	(33, '안녕', 'HELLO'),
	(34, '잘가', 'BYE'),
	(35, '안녕', 'HI'),
	(36, '안녕', 'HELLO'),
	(37, '잘가', 'BYE'),
	(38, '안녕', 'HI'),
	(39, '안녕', 'HELLO'),
	(40, '잘가', 'BYE'),
	(41, '안녕', 'HI'),
	(42, '안녕', 'HELLO'),
	(43, '잘가', 'BYE'),
	(44, '안녕', '잘가 ');

-- 테이블 kd.user_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_info` (
  `UI_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `UI_ID` varchar(30) NOT NULL,
  `UI_PWD` varchar(30) NOT NULL,
  `UI_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`UI_NUM`),
  UNIQUE KEY `UI_ID` (`UI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 kd.user_info:~13 rows (대략적) 내보내기
INSERT INTO `user_info` (`UI_NUM`, `UI_ID`, `UI_PWD`, `UI_NAME`) VALUES
	(9, 'TEST3', 'TEST1', '둥둥이'),
	(17, 'TEST0', 'TEST0', '연습0'),
	(72, 'TE', 'T', '안녕'),
	(74, 'TE12', 'T12', '안녕12'),
	(75, 'TEST1', 'TEST1', '연습1'),
	(78, '123', ')321', '안녕'),
	(85, 'ㅇㅇ', ')22', '33'),
	(88, '안녕', ')wkfrk', '하이'),
	(89, 'cust02', 'cust02', '민슈슈슉'),
	(90, '22', '22', '33'),
	(95, '11', '11', '11'),
	(100, '12', '12', '123'),
	(105, '하하', '호호', '히히');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
