CREATE DATABASE IF NOT EXISTS store_category;

USE store_category;

DROP TABLE IF EXISTS `Category`;

CREATE TABLE IF NOT EXISTS `Category` (
  `categoryId` varchar(50) NOT NULL,
  `categoryName` CHAR(50) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT  INTO `Category`(`categoryId`,`categoryName`) VALUES
    ('327d3894-7890-4b23-a939-dd606cb4c564','Phone'),
    ('772fd793-9340-4482-84fc-4634bc49b8ef','Television'),
    ('84e2addd-8225-47fe-bfa9-49b0d2fb8d35','Air_Conditioning'),
    ('9672a3a0-f8ee-4628-8c02-137102b60ee7','Washing_Machine'),
    ('d838571a-89d5-421b-973b-27a2fe3d83ff','Phone_Protective_Cover'),
    ('e1da50d6-6c7f-40a7-a251-3f8a5f6744f1','Mobile_Phone_Protective_Film'),
    ('f19fc5b2-782e-498e-aac7-11d0b0d0bb22','Mobile_Phone_Charger'),
    ('a759c9ac-2b61-46fb-9ac6-7ca2be403a9c','Mobile_Phone_Rechargeable_Battery');
