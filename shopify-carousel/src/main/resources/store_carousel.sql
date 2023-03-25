CREATE DATABASE IF NOT EXISTS store_carousel;

USE store_carousel;

DROP TABLE IF EXISTS `Carousel`;


CREATE TABLE `Carousel` (
  `carouselId` varchar(50) NOT NULL,
  `imgPath` CHAR(50) NOT NULL,
  `describes` CHAR(50) NOT NULL,
  `productId` varchar(50) DEFAULT NULL,
  `priority` INT DEFAULT 10,
  PRIMARY KEY (`carouselId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `carousel` */


/*Data for the table `carousel` */

INSERT  INTO `Carousel`(`carouselId`,`imgPath`,`describes`,`productId`) VALUES
        ('c365bbc6-62da-4d68-a391-32e7ee0c55a5','public/imgs/cms_1.jpg','123456','9cad5e37-4261-47b0-b047-2a2592229944'),
        ('89ecfc47-26fc-4577-8467-cee0b7db724a','public/imgs/cms_2.jpg','123456','b496e1c5-115b-402f-82a0-5f2c536ae5ad'),
        ('63b88f34-3079-465b-bb7b-6e6190917213','public/imgs/cms_3.jpg','123456','9d62f58e-6b63-426a-99ef-f8206f67c339'),
        ('2ca80b13-c17d-413d-b956-59ec223624d8','public/imgs/cms_4.jpg','123456','7fb64567-a902-494d-8394-48f3d2df16ea');
