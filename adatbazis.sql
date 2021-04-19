/*
 Navicat MySQL Data Transfer

 Source Server         : Réka
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : 87.229.115.62:3306
 Source Schema         : rekabeauty

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 19/04/2021 11:34:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (5, 'admin', '$2a$10$ralWkHzTTKET5aPWq1mQEO.kW18y7lpoiVTycmYMb9TIYh3hWnHGG');
INSERT INTO `admins` VALUES (6, 'reka.teglas', '$2a$10$/3RecSCm6LHGfejxumY6FuINVbAo.ZLgZsaeFMPmLaKHWh1nxmgYG');
INSERT INTO `admins` VALUES (7, 'asd', '$2a$10$wM3lfzog4mtBuBb1Qoy2V.3G84s6iOfqUSAzL7Qrq9DjNjLSDduPC');
INSERT INTO `admins` VALUES (8, 'qwe', '$2a$10$OpIJVmIH/dWTK6nmgWyEdOb0PaMokyODoNAQ3nsc4FmsYJcYKQUGu');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (2, 'john', '$2b$10$78ua3oOo3z2OBb/RGidoJ.bi/mtrt4.Q0esk3FlLsLpjsXYLJFyKy');
INSERT INTO `customers` VALUES (3, 'athulya', '$2a$10$WtfOkNJmJyVKiuVzcJ1Lt.kM8r6YUHpqfISEfFaIniSFEMP/3GBzK');
INSERT INTO `customers` VALUES (4, 'vikidekingi', '$2a$10$/g.XpKkImBgZ0vt9w6RDn.OuSXp327AU40RqpX1MDl3xs4gEdijuu');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pid` int NOT NULL,
  `uid` int NOT NULL,
  `qty` int NOT NULL,
  `status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'ordered',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (2, '2018-11-20 11:19:46', 1, 2, 4, 'delivered');
INSERT INTO `orders` VALUES (3, '2018-11-20 11:26:46', 2, 2, 2, 'delivered');
INSERT INTO `orders` VALUES (4, '2018-11-20 13:41:08', 2, 2, 20, 'ordered');
INSERT INTO `orders` VALUES (5, '2018-11-20 13:47:07', 2, 2, 12, 'delivered');
INSERT INTO `orders` VALUES (6, '2018-11-20 13:52:18', 1, 2, 3, 'ordered');
INSERT INTO `orders` VALUES (7, '2018-11-20 14:03:51', 2, 3, 4, 'ordered');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descr` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `picture` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Teljesen természetes anyagokból készült szappan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam rhoncus et tortor quis mattis. Quisque dictum ligula eu dictum dapibus. Phasellus molestie ante et viverra ultricies. Sed sapien nulla, mollis convallis pellentesque ac, cursus id est. Vestibulum dictum, ipsum eget bibendum laoreet, ex metus tempus arcu, vitae gravida lectus arcu ac elit. Nulla vitae finibus nulla, eu condimentum nisl. Maecenas porta arcu odio. Ut vel ipsum felis. ', 2500, 34, 'afc7eae2c9b20daad05728da662f3c65.jpg');
INSERT INTO `products` VALUES (2, 'Organikus hintopor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam rhoncus et tortor quis mattis. Quisque dictum ligula eu dictum dapibus. Phasellus molestie ante et viverra ultricies. Sed sapien nulla, mollis convallis pellentesque ac, cursus id est. Vestibulum dictum, ipsum eget bibendum laoreet, ex metus tempus arcu, vitae gravida lectus arcu ac elit. Nulla vitae finibus nulla, eu condimentum nisl. Maecenas porta arcu odio. Ut vel ipsum felis. ', 3000, 10, 'organic_natural_baby_skin_care_products-16.jpg');
INSERT INTO `products` VALUES (4, 'Ajak balzsam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam rhoncus et tortor quis mattis. Quisque dictum ligula eu dictum dapibus. Phasellus molestie ante et viverra ultricies. Sed sapien nulla, mollis convallis pellentesque ac, cursus id est. Vestibulum dictum, ipsum eget bibendum laoreet, ex metus tempus arcu, vitae gravida lectus arcu ac elit. Nulla vitae finibus nulla, eu condimentum nisl. Maecenas porta arcu odio. Ut vel ipsum felis. ', 1280, 45, 'c335c6e65ac8c9327bf5bd023e38a3b1.jpg');
INSERT INTO `products` VALUES (5, 'Kókuszos dezodor hölgyeknek', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam rhoncus et tortor quis mattis. Quisque dictum ligula eu dictum dapibus. Phasellus molestie ante et viverra ultricies. Sed sapien nulla, mollis convallis pellentesque ac, cursus id est. Vestibulum dictum, ipsum eget bibendum laoreet, ex metus tempus arcu, vitae gravida lectus arcu ac elit. Nulla vitae finibus nulla, eu condimentum nisl. Maecenas porta arcu odio. Ut vel ipsum felis. ', 1100, 23, '40e14cf92b6d21976908d25fa136ccbf.jpg');

SET FOREIGN_KEY_CHECKS = 1;
