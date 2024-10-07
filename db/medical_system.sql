/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : medical_system

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2024-10-07 20:57:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('730@ikun.com', '123456');
INSERT INTO `administrators` VALUES ('admin', '111');
INSERT INTO `administrators` VALUES ('admin1@example.com', 'password123');
INSERT INTO `administrators` VALUES ('admin2@example.com', 'test456');
INSERT INTO `administrators` VALUES ('admin3@example.com', 'passw0rd!');

-- ----------------------------
-- Table structure for bodydata
-- ----------------------------
DROP TABLE IF EXISTS `bodydata`;
CREATE TABLE `bodydata` (
  `heart` int DEFAULT NULL,
  `largeIntestine` int DEFAULT NULL,
  `smailIntestine` int DEFAULT NULL,
  `spleen` int DEFAULT NULL,
  `kidney` int DEFAULT NULL,
  `lung` int DEFAULT NULL,
  `liver` int DEFAULT NULL,
  `sickId` int DEFAULT NULL,
  KEY `sickId` (`sickId`),
  CONSTRAINT `sickId` FOREIGN KEY (`sickId`) REFERENCES `patients` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bodydata
-- ----------------------------
INSERT INTO `bodydata` VALUES ('121', '321', '141', '52', '198', '289', '139', '1');

-- ----------------------------
-- Table structure for doctors
-- ----------------------------
DROP TABLE IF EXISTS `doctors`;
CREATE TABLE `doctors` (
  `id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `workStartTime` time DEFAULT NULL,
  `workEndTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of doctors
-- ----------------------------
INSERT INTO `doctors` VALUES ('1', '王宝若', '23', '女', '18096310829', '12345695', '09:00:00', '09:00:00');
INSERT INTO `doctors` VALUES ('2', 'zhangsan', '23', '男', '123545580', '1235', '09:25:00', '09:45:00');
INSERT INTO `doctors` VALUES ('26', '李四', '28', '女', '18208216573', '12345695', '09:00:00', '09:00:00');
INSERT INTO `doctors` VALUES ('69', '王宝若', '23', '女', '15391072854', '12345695', '09:00:00', '09:00:00');
INSERT INTO `doctors` VALUES ('55', '王宝', '33', '男', '17790319724', '12345695', '09:00:00', '09:00:00');

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug` (
  `id` int NOT NULL AUTO_INCREMENT,
  `y_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `drugPrice` decimal(10,0) NOT NULL,
  `u_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `d_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `drugPhoneDoc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `drugTime` datetime DEFAULT NULL COMMENT '开药时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES ('6', '999感冒灵', '15', '王宝强', '蔡徐坤', '158946554545', '2023-06-16 13:16:00');

-- ----------------------------
-- Table structure for hospitals
-- ----------------------------
DROP TABLE IF EXISTS `hospitals`;
CREATE TABLE `hospitals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(100) DEFAULT NULL,
  `hospital_address` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of hospitals
-- ----------------------------
INSERT INTO `hospitals` VALUES ('1', '医院A', '北京市朝阳区', '123-456-7890', 'info@hospitala.com', 'www.hospitala.com');
INSERT INTO `hospitals` VALUES ('2', '医院B', '上海市黄浦区', '123-456-7891', 'info@hospitalb.com', 'www.hospitalb.com');
INSERT INTO `hospitals` VALUES ('3', '医院C', '广元市利州区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('4', '医院D', '广州市天河区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('5', '医院E', '广州市天河区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('6', '医院F', '广州市天河区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('7', '医院G', '广州市天河区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('8', '医院H', '广州市天河区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('9', '医院I', '广州市天河区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('10', '医院J', '广州市天河区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('11', '医院K', '广州市天河区', '123-456-7892', 'info@hospitalc.com', 'www.hospitalc.com');
INSERT INTO `hospitals` VALUES ('12', '医院T', '成都市锦江区', '123-456-7919', 'info@hospitalt.com', 'www.hospitalt.com');

-- ----------------------------
-- Table structure for patients
-- ----------------------------
DROP TABLE IF EXISTS `patients`;
CREATE TABLE `patients` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `room` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `registrationStartTime` datetime DEFAULT NULL,
  `registrationEndTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of patients
-- ----------------------------
INSERT INTO `patients` VALUES ('1', '徐新新', '35', 'M', '18256251226', 'A101', '2023-05-16 10:00:00', '2023-05-16 10:30:00');
INSERT INTO `patients` VALUES ('2', '李新', '45', 'F', '13956251258', 'B202', '2023-05-16 11:00:00', '2023-05-16 11:30:00');
INSERT INTO `patients` VALUES ('5', 'zhangsan', '23', '男', '1589654', '45656', '2022-05-08 08:09:05', '2022-05-08 08:09:05');
INSERT INTO `patients` VALUES ('6', '王宝强', '23', '男', '15391072854', '12345695', '2023-06-14 13:31:00', '2023-06-14 13:32:00');
INSERT INTO `patients` VALUES ('8', '王宝若', '28', '女', '17790319724', '12345695', '2023-07-01 02:21:00', '2023-06-15 22:25:00');
INSERT INTO `patients` VALUES ('9', '王宝强', '23', '男', '18208216573', '12345695', '2023-06-14 09:16:00', '2023-06-14 09:16:00');
INSERT INTO `patients` VALUES ('26', '王宝若', '23', '女', '17790319724', '12345695', '2023-06-18 13:32:00', '2023-06-14 13:30:00');
INSERT INTO `patients` VALUES ('45', '皮小伟', '20', '男', '17790319724', '泌尿科250号', '2023-06-19 23:03:00', '2023-06-19 19:09:00');

-- ----------------------------
-- Table structure for registration_info
-- ----------------------------
DROP TABLE IF EXISTS `registration_info`;
CREATE TABLE `registration_info` (
  `id` int NOT NULL,
  `sickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sickPhone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `doctorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sickness` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '病情',
  `registrationStartTime` datetime DEFAULT NULL,
  `registrationEndTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of registration_info
-- ----------------------------
INSERT INTO `registration_info` VALUES ('1', '张三', '123456789', '李医生', '耳鼻喉科xxx房', '过敏性鼻炎', '2023-05-16 09:00:00', '2023-05-16 10:00:00');
INSERT INTO `registration_info` VALUES ('2', '李四', '987654321', '王医生', '内科xxx房', '肾脏功能缺失', '2023-05-16 10:30:00', '2023-05-16 11:30:00');
INSERT INTO `registration_info` VALUES ('5', '猪猪侠', '1121313123', '超人强', '耳鼻喉科', '猪鼻子有两个小洞', '2023-06-19 19:16:33', '2023-06-19 19:16:37');
INSERT INTO `registration_info` VALUES ('9', '张三', '15894885556', '赵六', '外壳', '轻微感冒', '2023-06-17 00:00:00', '2023-06-23 00:00:00');

-- ----------------------------
-- Table structure for sickhistory
-- ----------------------------
DROP TABLE IF EXISTS `sickhistory`;
CREATE TABLE `sickhistory` (
  `id` int DEFAULT NULL,
  `sickName` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sickHistory1` varchar(255) DEFAULT NULL,
  `sickHistory2` varchar(255) DEFAULT NULL,
  `sickHistory3` varchar(255) DEFAULT NULL,
  `sickStatus` varchar(255) DEFAULT NULL,
  `historyRecord` varchar(5000) DEFAULT NULL,
  `checkResult` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `judge` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `plan` varchar(1000) DEFAULT NULL,
  `afterVisit` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sickhistory
-- ----------------------------
INSERT INTO `sickhistory` VALUES ('1', '张三', '男', '35', '123-456-789', '四川省广元市利州区XXX街道XXX号', '高血压、糖尿病', '无', '无明显遗传疾病', '患者主诉头痛和恶心，已持续三天', '患者就诊于XX医院，接受了以下治疗：\r\n\r\n药物治疗：阿司匹林每天一次\r\n休息和饮食调整\r\n患者症状在治疗后有所缓解。', '以下是患者的一些检查结果：\r\n\r\n血压：140/90 mmHg\r\n血糖：6.5 mmol/L', '偏头痛', '继续药物治疗，观察病情变化。', '患者将在两周后进行复诊');
