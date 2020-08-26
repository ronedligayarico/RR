/*
 Navicat Premium Data Transfer

 Source Server         : ron
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : rsws

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 29/01/2020 21:49:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appliances_brand
-- ----------------------------
DROP TABLE IF EXISTS `appliances_brand`;
CREATE TABLE `appliances_brand`  (
  `appliances_brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `appliances_type_id` int(11) NULL DEFAULT NULL,
  `appliances_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `appliances_brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`appliances_brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appliances_brand
-- ----------------------------
INSERT INTO `appliances_brand` VALUES (1, 1, 'A56', 'LG', 0, '2020-01-23 22:54:05');
INSERT INTO `appliances_brand` VALUES (2, 1, 'A96', 'Samsung', 0, '2020-01-23 22:54:12');
INSERT INTO `appliances_brand` VALUES (3, 1, 'A66', 'Condura', 0, '2020-01-23 22:54:16');
INSERT INTO `appliances_brand` VALUES (4, 2, 'B44', 'LG', 0, '2020-01-23 23:10:28');
INSERT INTO `appliances_brand` VALUES (5, 2, 'B11', 'Samsung', 0, '2020-01-23 23:10:32');
INSERT INTO `appliances_brand` VALUES (6, 2, 'B25', 'Condura', 0, '2020-01-23 23:10:35');
INSERT INTO `appliances_brand` VALUES (7, 3, 'C66', 'LG', 0, '2020-01-23 23:10:39');
INSERT INTO `appliances_brand` VALUES (8, 3, 'C88', 'Samsung', 0, '2020-01-23 23:10:43');
INSERT INTO `appliances_brand` VALUES (9, 3, 'C10', 'Condura', 0, '2020-01-23 23:10:47');
INSERT INTO `appliances_brand` VALUES (10, 4, 'D25', 'LG', 0, '2020-01-23 23:10:49');
INSERT INTO `appliances_brand` VALUES (11, 4, 'D65', 'Samsung', 0, '2020-01-23 23:10:52');
INSERT INTO `appliances_brand` VALUES (12, 4, 'D99', 'Condura', 0, '2020-01-23 23:10:56');
INSERT INTO `appliances_brand` VALUES (13, 5, 'E55', 'LG', 0, '2020-01-23 23:10:59');
INSERT INTO `appliances_brand` VALUES (14, 5, 'E11', 'Samsung', 0, '2020-01-23 23:11:04');
INSERT INTO `appliances_brand` VALUES (15, 5, 'E44', 'Condura', 0, '2020-01-23 23:11:12');
INSERT INTO `appliances_brand` VALUES (16, 6, 'F55', 'LG', 0, '2020-01-23 23:11:36');
INSERT INTO `appliances_brand` VALUES (17, 6, 'F48', 'Samsung', 0, '2020-01-23 23:11:40');
INSERT INTO `appliances_brand` VALUES (18, 6, 'F46', 'Condura', 0, '2020-01-23 23:11:48');
INSERT INTO `appliances_brand` VALUES (19, 7, 'G54', 'LG', 0, '2020-01-23 23:11:54');
INSERT INTO `appliances_brand` VALUES (20, 7, 'G41', 'Samsung', 0, '2020-01-23 23:11:56');
INSERT INTO `appliances_brand` VALUES (21, 7, 'G21', 'Condura', 0, '2020-01-23 23:11:56');
INSERT INTO `appliances_brand` VALUES (22, 8, 'H54', 'LG', 0, '2020-01-23 23:11:58');
INSERT INTO `appliances_brand` VALUES (23, 8, 'H51', 'Samsung', 0, '2020-01-23 23:11:59');
INSERT INTO `appliances_brand` VALUES (24, 8, 'H12', 'Condura', 0, '2020-01-23 23:12:00');
INSERT INTO `appliances_brand` VALUES (25, 1, 'A69', 'LG', 0, '2020-01-23 23:46:18');
INSERT INTO `appliances_brand` VALUES (26, 1, 'A68', 'LG', 0, '2020-01-23 23:46:24');
INSERT INTO `appliances_brand` VALUES (27, 1, 'B9', 'Samsung', 0, '2020-01-23 23:46:33');

-- ----------------------------
-- Table structure for appliances_type
-- ----------------------------
DROP TABLE IF EXISTS `appliances_type`;
CREATE TABLE `appliances_type`  (
  `appliances_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `appliances_type_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `item_warranty_id` int(11) NULL DEFAULT NULL,
  `markasdeleted` int(11) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `entered_by` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`appliances_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appliances_type
-- ----------------------------
INSERT INTO `appliances_type` VALUES (1, 'Washing Machine', 3, 0, '2019-09-16 22:07:59', 1);
INSERT INTO `appliances_type` VALUES (2, 'Electric Fan', 1, 0, '2019-09-16 22:08:13', 1);
INSERT INTO `appliances_type` VALUES (3, 'Refrigerator', 4, 0, '2019-09-16 22:08:18', 1);
INSERT INTO `appliances_type` VALUES (4, 'Aircon', 3, 0, '2019-09-16 22:08:21', 1);

-- ----------------------------
-- Table structure for branch
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch`  (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `branch_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `markasdeleted` int(110) NULL DEFAULT 0,
  `date_entered` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entered_by` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`branch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of branch
-- ----------------------------
INSERT INTO `branch` VALUES (1, 'Santa Rosa', 'SRL', 0, '2019-09-16 22:07:38', 0);
INSERT INTO `branch` VALUES (2, 'Calamba', 'CAL', 0, '2019-09-16 22:07:43', 0);

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `appliances_type_id` int(11) NULL DEFAULT NULL,
  `brand_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, 1, 'Condura', 0);
INSERT INTO `brand` VALUES (2, 1, 'Samsung', 0);
INSERT INTO `brand` VALUES (3, 1, 'Eureka', 0);
INSERT INTO `brand` VALUES (4, 1, 'LG', 0);
INSERT INTO `brand` VALUES (5, 1, 'Hyundai', 0);
INSERT INTO `brand` VALUES (6, 2, 'Mistubishi', 0);
INSERT INTO `brand` VALUES (7, 2, 'Hp', 0);
INSERT INTO `brand` VALUES (8, 2, 'Condura', 0);
INSERT INTO `brand` VALUES (9, 2, 'Samsung', 0);
INSERT INTO `brand` VALUES (10, 3, 'Condura', 0);
INSERT INTO `brand` VALUES (11, 3, 'Samsung', 0);
INSERT INTO `brand` VALUES (12, 3, 'Uratex', 0);
INSERT INTO `brand` VALUES (13, 4, 'Condura', 0);
INSERT INTO `brand` VALUES (14, 4, 'Samsung', 0);
INSERT INTO `brand` VALUES (15, 4, 'LG', 0);

-- ----------------------------
-- Table structure for brgy
-- ----------------------------
DROP TABLE IF EXISTS `brgy`;
CREATE TABLE `brgy`  (
  `brgy_id` int(11) NOT NULL AUTO_INCREMENT,
  `brgy_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`brgy_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brgy
-- ----------------------------
INSERT INTO `brgy` VALUES (1, 'Pook', 1, 0);
INSERT INTO `brgy` VALUES (2, 'Balibago', 1, 0);
INSERT INTO `brgy` VALUES (3, 'Tagapo', 1, 0);
INSERT INTO `brgy` VALUES (4, 'Macabling', 1, 0);
INSERT INTO `brgy` VALUES (5, 'Labas', 1, 0);
INSERT INTO `brgy` VALUES (6, 'Ibaba', 1, 0);
INSERT INTO `brgy` VALUES (7, 'Caingin', 1, 0);
INSERT INTO `brgy` VALUES (8, 'Aplaya', 1, 0);
INSERT INTO `brgy` VALUES (9, 'San Antonio', 2, 0);
INSERT INTO `brgy` VALUES (10, 'San Vicente', 2, 0);
INSERT INTO `brgy` VALUES (11, 'Soro-Soro', 2, 0);
INSERT INTO `brgy` VALUES (12, 'Dela Paz', 2, 0);
INSERT INTO `brgy` VALUES (13, 'Marinig', 3, 0);
INSERT INTO `brgy` VALUES (14, 'Bagong Silang', 4, 0);
INSERT INTO `brgy` VALUES (15, 'Tanaw', 4, 0);
INSERT INTO `brgy` VALUES (16, 'Banyaga', 5, 0);
INSERT INTO `brgy` VALUES (17, 'Ahon', 5, 0);
INSERT INTO `brgy` VALUES (18, 'Maliliw', 6, 0);
INSERT INTO `brgy` VALUES (19, 'Bahuy', 6, 0);
INSERT INTO `brgy` VALUES (20, 'Malipon', 7, 0);
INSERT INTO `brgy` VALUES (21, 'Maria', 7, 0);

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NULL DEFAULT NULL,
  `city_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, 1, 'Santa Rosa', 0);
INSERT INTO `city` VALUES (2, 1, 'Binan', 0);
INSERT INTO `city` VALUES (3, 1, 'Cabuyao', 0);
INSERT INTO `city` VALUES (4, 2, 'Lipa', 0);
INSERT INTO `city` VALUES (5, 2, 'Tanuan', 0);
INSERT INTO `city` VALUES (6, 2, 'Sto.Tomas', 0);
INSERT INTO `city` VALUES (7, 3, 'Halang', 0);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_id` int(11) NULL DEFAULT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `custom_contactNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `brgy_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  `entered_by` int(255) NULL DEFAULT NULL,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 1, 'McDave', 'L', 'Digno', '09231215516', 'Ph7 Blk1 L2', '1', '1', '1', 0, 1, '2020-01-28 21:18:55');
INSERT INTO `customer` VALUES (2, 2, 'Vonn ', 'P', 'Moreno', '09532432423', 'P1 L2 Blk21 ', '2', '6', '19', 0, 1, '2020-01-28 21:22:05');
INSERT INTO `customer` VALUES (3, 3, 'ivan', 'b', 'baldonado', '09231111111', '2213', '3', '7', '21', 0, 1, '2020-01-29 12:36:57');
INSERT INTO `customer` VALUES (4, 4, 'Jenny', 'A', 'Test', '09213213213', 'Ph1 Golden', '1', '2', '10', 0, 1, '2020-01-29 12:46:18');
INSERT INTO `customer` VALUES (5, 5, 'vonn', 'b', 'Moreno', '09123213213', '09 P1', '2', '5', '17', 0, 1, '2020-01-29 12:49:34');
INSERT INTO `customer` VALUES (6, 6, 'Joshua', 'X', 'Manibo', '09213213213', 'Brgy Pook', '2', '5', '16', 0, 1, '2020-01-29 21:48:16');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `markasdeleted` int(255) NULL DEFAULT 0,
  `markasread` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`feedback_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (1, 'wqewqewq', 'a', 'eher', '4444', '11212', 'wqeqweqweqwasd', '2019-11-04 22:41:46', 0, 0);
INSERT INTO `feedback` VALUES (2, 'qwe', 'a', 'we', '444', '11212', 'wqeqweqweqwasd', '2019-11-04 22:41:49', 0, 1);
INSERT INTO `feedback` VALUES (3, 'qweq', 'a', 'qwe', '41234123', '1121', 'wqeqweqweqwasd', '2019-11-04 22:41:53', 0, 1);
INSERT INTO `feedback` VALUES (4, 'qwe', 'a', 'qwe', '42424', '21321312', 'wqeqweqweqwasd', '2019-11-04 22:41:59', 0, 1);
INSERT INTO `feedback` VALUES (5, 'WQEWQ', 'a', 'qwe', '8796785', '675467', '43534532', '2019-11-05 20:11:16', 0, 1);
INSERT INTO `feedback` VALUES (6, 'Rodge', 'a', 'qwe', '09128177017', 'sintworon19@yahoo.com', 'Hello this is me . can i ask about your product , i want to know the details about the washing machine.', '2019-11-05 21:26:14', 0, 0);
INSERT INTO `feedback` VALUES (20, 'qwe113', 'a', 'ehe', 'qwe', '', 'qwewqeq', '2019-11-05 22:51:19', 0, 1);
INSERT INTO `feedback` VALUES (21, 'aiii ai', 'a', 'hehe', '0123', 'wqew@gmail.com', 'wqewqeqweq12', '2019-11-06 12:09:59', 0, 0);
INSERT INTO `feedback` VALUES (22, 'admin', 'a', 'hehe', '0123', '0123', 'qoweq01', '2019-11-06 12:41:08', 1, 0);
INSERT INTO `feedback` VALUES (23, 'bhozxc', 'a', 'hehe', '123123123', '123213', 'wqeqwe123', '2019-11-09 21:59:13', 1, 1);
INSERT INTO `feedback` VALUES (24, 'ako budoy', 'a', 'Nga', '091222222222', 'sintworon19@yahoo.com', 'Ano po pala yung tinatanong ko sa inyo galingan nyo po pag gagawa ako po ay tinatamad na .!!', '2020-01-07 18:51:04', 0, 1);
INSERT INTO `feedback` VALUES (25, 'Vonn', 'M', 'Portillo', '09111111111', 'sintworon19@yahoo.com', 'Eto nga palaaaa...', '2020-01-20 21:54:48', 0, 1);
INSERT INTO `feedback` VALUES (26, '', '', '', '09999999999', '', '', '2020-01-20 23:06:49', 0, 0);
INSERT INTO `feedback` VALUES (27, 'wqe', 'q', 'qw', '09870899999', 'sintworon19@yahoo.com', 'Ayyy anooo', '2020-01-20 23:15:27', 0, 0);
INSERT INTO `feedback` VALUES (28, 'qwe', 'f', 'qwe', '09233333333', '', 'qwewqeqw', '2020-01-21 11:02:32', 0, 0);

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_id` int(255) NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`invoice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES (1, 1, 0, '2020-01-29 21:14:28');
INSERT INTO `invoice` VALUES (2, 2, 0, '2020-01-29 21:14:28');
INSERT INTO `invoice` VALUES (3, 3, 0, '2020-01-29 21:14:28');
INSERT INTO `invoice` VALUES (4, 4, 0, '2020-01-29 21:14:28');
INSERT INTO `invoice` VALUES (5, 5, 0, '2020-01-29 21:14:28');
INSERT INTO `invoice` VALUES (6, 6, 0, '2020-01-29 21:48:16');

-- ----------------------------
-- Table structure for item_sold
-- ----------------------------
DROP TABLE IF EXISTS `item_sold`;
CREATE TABLE `item_sold`  (
  `item_sold_id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_id` int(11) NULL DEFAULT NULL,
  `appliances_type_id` int(11) NULL DEFAULT NULL,
  `brand_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `model_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_purchase` date NULL DEFAULT NULL,
  `warranty_duration` date NULL DEFAULT NULL,
  `markasused` int(11) NULL DEFAULT 0,
  `markasdeleted` int(11) NULL DEFAULT 0,
  `entered_by` tinyint(11) NULL DEFAULT NULL,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_sold_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_sold
-- ----------------------------
INSERT INTO `item_sold` VALUES (1, 1, 2, '3', '2', '2020-01-06', '2020-01-13', 2, 0, 1, '2020-01-28 21:18:55');
INSERT INTO `item_sold` VALUES (2, 1, 6, '6', '4', '2020-01-06', '2020-01-13', 2, 0, 1, '2020-01-28 21:18:55');
INSERT INTO `item_sold` VALUES (3, 2, 3, '5', '2', '2020-01-13', '2021-01-13', 1, 0, 1, '2020-01-28 21:22:05');
INSERT INTO `item_sold` VALUES (4, 2, 2, '1', '3', '2020-01-13', '2020-01-20', 2, 0, 1, '2020-01-28 21:22:05');
INSERT INTO `item_sold` VALUES (5, 3, 2, '7', '7', '2020-01-07', '2020-01-14', 2, 0, 1, '2020-01-29 12:36:57');
INSERT INTO `item_sold` VALUES (6, 3, 1, '3', '3', '2020-01-07', '2020-07-07', 0, 0, 1, '2020-01-29 12:36:57');
INSERT INTO `item_sold` VALUES (7, 4, 3, '10', '9', '2020-01-13', '2021-01-13', 0, 0, 1, '2020-01-29 12:46:18');
INSERT INTO `item_sold` VALUES (8, 4, 4, '14', '14', '2020-01-13', '2020-07-13', 0, 0, 1, '2020-01-29 12:46:18');
INSERT INTO `item_sold` VALUES (9, 4, 4, '13', '15', '2020-01-13', '2020-07-13', 0, 0, 1, '2020-01-29 12:46:18');
INSERT INTO `item_sold` VALUES (10, 4, 3, '10', '10', '2020-01-13', '2021-01-13', 0, 0, 1, '2020-01-29 12:46:18');
INSERT INTO `item_sold` VALUES (11, 5, 3, '10', '10', '2020-01-20', '2021-01-20', 0, 0, 1, '2020-01-29 12:49:34');
INSERT INTO `item_sold` VALUES (12, 5, 2, '7', '5', '2020-01-20', '2020-01-27', 2, 0, 1, '2020-01-29 12:49:34');
INSERT INTO `item_sold` VALUES (13, 6, 4, '14', '35', '2020-01-07', '2020-07-07', 0, 0, 1, '2020-01-29 21:48:16');
INSERT INTO `item_sold` VALUES (14, 6, 3, '12', '31', '2020-01-07', '2021-01-07', 0, 0, 1, '2020-01-29 21:48:16');
INSERT INTO `item_sold` VALUES (15, 6, 4, '15', '37', '2020-01-07', '2020-07-07', 0, 0, 1, '2020-01-29 21:48:16');
INSERT INTO `item_sold` VALUES (16, 6, 3, '11', '29', '2020-01-07', '2021-01-07', 0, 0, 1, '2020-01-29 21:48:16');
INSERT INTO `item_sold` VALUES (17, 6, 2, '6', '18', '2020-01-07', '2020-01-14', 2, 0, 1, '2020-01-29 21:48:16');

-- ----------------------------
-- Table structure for item_warranty
-- ----------------------------
DROP TABLE IF EXISTS `item_warranty`;
CREATE TABLE `item_warranty`  (
  `item_warranty_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_warranty_duration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `markasdeleted` tinyint(11) NULL DEFAULT 0,
  `entered_by` int(11) NULL DEFAULT NULL,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_warranty_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_warranty
-- ----------------------------
INSERT INTO `item_warranty` VALUES (1, '1Week', 0, 1, '2019-09-20 23:40:30');
INSERT INTO `item_warranty` VALUES (2, '1Months', 0, 1, '2019-09-20 23:39:53');
INSERT INTO `item_warranty` VALUES (3, '6Months', 0, 1, '2019-09-18 18:45:16');
INSERT INTO `item_warranty` VALUES (4, '1Year', 0, 1, '2019-09-18 18:45:04');

-- ----------------------------
-- Table structure for model
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model`  (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(55) NULL DEFAULT NULL,
  `model_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`model_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES (1, 1, 'A100', 0);
INSERT INTO `model` VALUES (2, 1, 'ALL25', 0);
INSERT INTO `model` VALUES (3, 1, 'Zen5', 0);
INSERT INTO `model` VALUES (4, 1, 'Smash10', 0);
INSERT INTO `model` VALUES (5, 2, 'Hotzen15', 0);
INSERT INTO `model` VALUES (6, 2, 'Line30', 0);
INSERT INTO `model` VALUES (7, 2, 'S512', 0);
INSERT INTO `model` VALUES (8, 2, 'SuperAll', 0);
INSERT INTO `model` VALUES (9, 3, 'A12', 0);
INSERT INTO `model` VALUES (10, 3, 'A13', 0);
INSERT INTO `model` VALUES (11, 3, 'A14', 0);
INSERT INTO `model` VALUES (12, 3, 'A15', 0);
INSERT INTO `model` VALUES (13, 4, 'B1', 0);
INSERT INTO `model` VALUES (14, 4, 'B2', 0);
INSERT INTO `model` VALUES (15, 4, 'B3', 0);
INSERT INTO `model` VALUES (16, 5, 'AZ1', 0);
INSERT INTO `model` VALUES (17, 5, 'LO', 0);
INSERT INTO `model` VALUES (18, 6, 'P10', 0);
INSERT INTO `model` VALUES (19, 6, '10PQ', 0);
INSERT INTO `model` VALUES (20, 7, 'AL12', 0);
INSERT INTO `model` VALUES (21, 7, 'LQ1', 0);
INSERT INTO `model` VALUES (22, 8, 'AL12', 0);
INSERT INTO `model` VALUES (23, 8, 'U8', 0);
INSERT INTO `model` VALUES (24, 9, 'O12', 0);
INSERT INTO `model` VALUES (25, 9, 'QWER12', 0);
INSERT INTO `model` VALUES (26, 10, 'QCLO', 0);
INSERT INTO `model` VALUES (27, 10, 'ABC', 0);
INSERT INTO `model` VALUES (28, 11, 'LOE', 0);
INSERT INTO `model` VALUES (29, 11, '213PC', 0);
INSERT INTO `model` VALUES (30, 12, 'HI10', 0);
INSERT INTO `model` VALUES (31, 12, 'LOW10', 0);
INSERT INTO `model` VALUES (32, 13, 'LOUD122', 0);
INSERT INTO `model` VALUES (33, 13, 'B123', 0);
INSERT INTO `model` VALUES (34, 14, 'PQWC12', 0);
INSERT INTO `model` VALUES (35, 14, 'WE34', 0);
INSERT INTO `model` VALUES (36, 15, '15LOQ', 0);
INSERT INTO `model` VALUES (37, 15, 'QWLEC1237', 0);

-- ----------------------------
-- Table structure for original_item
-- ----------------------------
DROP TABLE IF EXISTS `original_item`;
CREATE TABLE `original_item`  (
  `original_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `original_item_pic` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `original_item_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `quantity` int(50) NULL DEFAULT 0,
  `appliances_type_id` int(11) NULL DEFAULT NULL,
  `branch_id` int(11) NULL DEFAULT NULL,
  `markasdeleted` tinyint(11) NULL DEFAULT 0,
  `entered_by` int(11) NULL DEFAULT NULL,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`original_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of original_item
-- ----------------------------
INSERT INTO `original_item` VALUES (1, 'al-hiter(ref).jpg', '1', 0, 1, 0, 0, 1, '2019-10-12 22:41:43');
INSERT INTO `original_item` VALUES (2, 'al-hiter(ref).jpg', '123', 4, 2, 1, 0, 1, '2019-10-12 22:41:55');
INSERT INTO `original_item` VALUES (3, 'al-hiter(ref).jpg', '23', 385, 2, 2, 0, 1, '2019-10-12 22:42:03');
INSERT INTO `original_item` VALUES (4, 'al-hiter(ref).jpg', '23', 0, 2, 2, 0, 1, '2019-10-12 22:42:04');
INSERT INTO `original_item` VALUES (5, 'doorswitch(ref).jpg', '123', 0, 3, 2, 0, 1, '2019-10-12 22:42:17');
INSERT INTO `original_item` VALUES (6, 'bulb holder(ref).jpg', '44', 0, 1, 1, 0, 1, '2019-10-12 22:42:27');
INSERT INTO `original_item` VALUES (7, 'doorswitch(ref).jpg', '5', 0, 1, 1, 0, 1, '2019-10-12 22:42:39');
INSERT INTO `original_item` VALUES (8, 'bi-meter(ref).jpg', 'tt1', 0, 2, 2, 0, 1, '2019-10-12 22:42:49');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`province_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, 'Laguna', 0);
INSERT INTO `province` VALUES (2, 'Batangas', 0);
INSERT INTO `province` VALUES (3, 'Calamba', 0);

-- ----------------------------
-- Table structure for receipt
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt`  (
  `receipt_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `markasdeleted` tinyint(11) NULL DEFAULT 0,
  `entered_by` int(255) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`receipt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of receipt
-- ----------------------------
INSERT INTO `receipt` VALUES (1, 1, 3, 0, 1, 1, '2020-01-28 21:18:55');
INSERT INTO `receipt` VALUES (2, 1, 3, 0, 1, 1, '2020-01-28 21:22:04');
INSERT INTO `receipt` VALUES (3, 1, 3, 0, 1, 0, '2020-01-29 12:36:57');
INSERT INTO `receipt` VALUES (4, 2, 3, 0, 1, 0, '2020-01-29 12:46:18');
INSERT INTO `receipt` VALUES (5, 1, 2, 0, 1, 0, '2020-01-29 12:49:34');
INSERT INTO `receipt` VALUES (6, 2, 2, 0, 1, 0, '2020-01-29 21:48:15');

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type`  (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `markasdeleted` tinyint(11) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `entered_by` tinyint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES (1, 'Admin', 0, '2019-09-18 18:12:35', 1);
INSERT INTO `user_type` VALUES (2, 'Owner', 0, '2019-09-18 18:12:46', 1);
INSERT INTO `user_type` VALUES (3, 'Staff', 0, '2019-09-18 18:12:39', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_pic` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `user_type_id` int(11) NULL DEFAULT NULL,
  `markasdeleted` int(11) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `entered_by` int(255) NULL DEFAULT 1,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'My', 'Admin', '1.jpg', 1, 0, '2019-10-05 11:26:17', 1);
INSERT INTO `users` VALUES (2, 'ivan', '5f4dcc3b5aa765d61d8327deb882cf99', 'ivan', 'baldonado', 'default.jpg', 3, 0, '2019-10-07 17:56:14', 1);
INSERT INTO `users` VALUES (3, 'jenny', '5f4dcc3b5aa765d61d8327deb882cf99', 'jenny', 'flores', 'default.jpg', 3, 0, '2019-10-10 21:13:34', 1);
INSERT INTO `users` VALUES (4, 'shei', '5f4dcc3b5aa765d61d8327deb882cf99', 'shei', 'rubin', 'default.jpg', 2, 0, '2019-10-10 21:13:51', 1);

-- ----------------------------
-- Table structure for warranty_concern
-- ----------------------------
DROP TABLE IF EXISTS `warranty_concern`;
CREATE TABLE `warranty_concern`  (
  `warranty_tbl_id` int(11) NOT NULL AUTO_INCREMENT,
  `warranty_customer_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_customer_mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_customer_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_serial_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warranty_prod_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  `markasread` int(255) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warranty_tbl_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warranty_concern
-- ----------------------------
INSERT INTO `warranty_concern` VALUES (1, 'Marky', 'A', 'Alibudbud', '09782188555', 'mark23@gmail.com.ph', '2020-230-SRL', 'di nga gumagana e!', 'Electric Fan(Eureka)', 0, 1, '2020-01-21 21:01:08');
INSERT INTO `warranty_concern` VALUES (2, 'Ivan', 'B', 'Baldonado', '09122135552', 'ivan@yahoo.com', '2020-10-SRL', 'Why dinagana??', 'Samsung TV \"21\"', 0, 0, '2020-01-21 21:13:18');

-- ----------------------------
-- Table structure for warranty_picture
-- ----------------------------
DROP TABLE IF EXISTS `warranty_picture`;
CREATE TABLE `warranty_picture`  (
  `warranty_pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `warranty_tbl_id` int(255) NULL DEFAULT NULL,
  `warranty_pic_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warranty_pic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warranty_picture
-- ----------------------------
INSERT INTO `warranty_picture` VALUES (1, 1, 'marc.jpg', 0, '2020-01-21 21:01:08');
INSERT INTO `warranty_picture` VALUES (2, 1, 'marc.jpg', 0, '2020-01-21 21:01:08');
INSERT INTO `warranty_picture` VALUES (3, 2, 'avatar.jpg', 0, '2020-01-21 21:13:18');
INSERT INTO `warranty_picture` VALUES (4, 2, 'camp.jpg', 0, '2020-01-21 21:13:18');

-- ----------------------------
-- Table structure for warranty_receipt
-- ----------------------------
DROP TABLE IF EXISTS `warranty_receipt`;
CREATE TABLE `warranty_receipt`  (
  `warranty_receipt_id` int(11) NOT NULL AUTO_INCREMENT,
  `warranty_tbl_id` int(11) NULL DEFAULT NULL,
  `warranty_receipt_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `markasdeleted` int(255) NULL DEFAULT 0,
  `date_entered` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`warranty_receipt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warranty_receipt
-- ----------------------------
INSERT INTO `warranty_receipt` VALUES (1, 1, 'marc.jpg', 0, '2020-01-21 21:01:08');
INSERT INTO `warranty_receipt` VALUES (2, 2, 'card-profile6-square.jpg', 0, '2020-01-21 21:13:18');

SET FOREIGN_KEY_CHECKS = 1;
