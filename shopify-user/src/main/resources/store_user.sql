DROP DATABASE IF EXISTS  store_user;
CREATE DATABASE store_user;

USE store_user;


DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `userId` CHAR(50) NOT NULL,
  `userName` CHAR(40) NOT NULL,
  `PASSWORD` CHAR(40) NOT NULL,
  `userPhonenumber` CHAR(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `user_name` (`userName`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

INSERT  INTO `User`(`userId`,`userName`,`PASSWORD`,`userPhonenumber`) VALUES
                    ('65a978f9-357a-4338-afc7-8e06f5c6e9b7','admin123','123456','18514592456'),
                    ('a9efedcb-a552-4f87-95ed-1809516eff2e','admin111','8348898D532023C994920A16074C8387',NULL),
                    ('c50d64d5-309f-4739-b337-5884cc5178a2','admin222','DC483E80A7A0BD9EF71D8CF973673924',NULL),
                    ('afe4a47f-9b0c-4eab-999b-3152f98d4952','admin3322','DC483E80A7A0BD9EF71D8CF973673924',NULL),
                    ('95c5dc7b-c3d1-4488-8a24-b73ff28a4e04','admin332244','9701C3182D0AAC2E089BB6665FC430A5',NULL),
                    ('09fe274a-0d19-45cb-9ed9-e2af0d6f569f','zhao11111','8348898D532023C994920A16074C8387',NULL),
                    ('8dd27da9-aad5-4435-8158-8af8790cd738','zhaoweifeng1111','47200157CE5E1B5EFA5258250680C708',NULL),
                    ('e3c83868-dd58-48a6-b071-8812368f79bc','admin321','47200157CE5E1B5EFA5258250680C708',NULL),
                    ('2bb79e1a-8331-43fb-9a9e-a0eb8b2ca5e1','admin1111','33E8299D8A8E65A8B3D67C1E9F4C8B5',NULL),
                    ('e3d04e89-f989-46a3-84dd-ff637e2edaf3','admin321321','9701C3182D0AAC2E089BB6665FC430A5',NULL);

/*Table structure for table `address` */

DROP TABLE IF EXISTS `Address`;

CREATE TABLE `Address` (
  `id` varchar(50) NOT NULL,
  `linkman` varchar(20) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `userId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
