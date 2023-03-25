CREATE DATABASE IF NOT EXISTS store_category;

USE store_category;

DROP TABLE IF EXISTS `Category`;

CREATE TABLE IF NOT EXISTS `Category` (
  `categoryId` varchar(50) NOT NULL,
  `categoryName` CHAR(20) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT  INTO `Category`(`categoryId`,`categoryName`) VALUES
    ('327d3894-7890-4b23-a939-dd606cb4c564','手机'),
    ('772fd793-9340-4482-84fc-4634bc49b8ef','电视机'),
    ('84e2addd-8225-47fe-bfa9-49b0d2fb8d35','空调'),
    ('9672a3a0-f8ee-4628-8c02-137102b60ee7','洗衣机'),
    ('d838571a-89d5-421b-973b-27a2fe3d83ff','保护套'),
    ('e1da50d6-6c7f-40a7-a251-3f8a5f6744f1','保护膜'),
    ('f19fc5b2-782e-498e-aac7-11d0b0d0bb22','充电器'),
    ('a759c9ac-2b61-46fb-9ac6-7ca2be403a9c','充电宝');
