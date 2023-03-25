CREATE DATABASE IF NOT EXISTS store_product;

USE store_product;
DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
    `productId` VARCHAR(50) NOT NULL,
    `productName` CHAR(100) NOT NULL,
    `categoryId` varchar(50) NOT NULL,
    `productTitle` CHAR(30) NOT NULL,
    `productIntro` TEXT NOT NULL,
    `productPicture` CHAR(200) DEFAULT NULL,
    `productPrice` DOUBLE NOT NULL,
    `productSellingPrice` DOUBLE NOT NULL,
    `productNum` INT(11) NOT NULL,
    `productSales` INT(11) NOT NULL,
    PRIMARY KEY (`productId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ProductPicture`;
CREATE TABLE IF NOT EXISTS ProductPicture(
    id INT PRIMARY KEY AUTO_INCREMENT,
    productId VARCHAR(50) NOT NULL,
    productPicture CHAR (200),
    intro TEXT NULL,
    FOREIGN KEY (productId) REFERENCES Product (productId)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT  INTO `Product`(`productId`,`productName`,`categoryId`,`productTitle`,`productIntro`,`productPicture`,`productPrice`,`productSellingPrice`,`productNum`,`productSales`) VALUES
            ('9cad5e37-4261-47b0-b047-2a2592229944','Redmi K30','327d3894-7890-4b23-a939-dd606cb4c564','120Hz流速屏，全速热爱','120Hz高帧率流速屏/ 索尼6400万前后六摄 / 6.67\'小孔径全面屏 / 最高可选8GB+256GB大存储 / 高通骁龙730G处理器 / 3D四曲面玻璃机身 / 4500mAh+27W快充 / 多功能NFC','public/imgs/phone/Redmi-k30.png',2000,1599,10,1),
            ('b496e1c5-115b-402f-82a0-5f2c536ae5ad','Redmi K30 5G','327d3894-7890-4b23-a939-dd606cb4c564','双模5G,120Hz流速屏','双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC','public/imgs/phone/Redmi-k30-5G.png',2599,2599,10,0),
            ('9d62f58e-6b63-426a-99ef-f8206f67c339','小米CC9 Pro','327d3894-7890-4b23-a939-dd606cb4c564','1亿像素,五摄四闪','1亿像素主摄 / 全场景五摄像头 / 四闪光灯 / 3200万自拍 / 10 倍混合光学变焦，50倍数字变焦 / 5260mAh ⼤电量 / 标配 30W疾速快充 / ⼩米⾸款超薄屏下指纹 / 德国莱茵低蓝光认证 / 多功能NFC / 红外万能遥控 / 1216超线性扬声器','public/imgs/phone/Mi-CC9.png',2799,2599,20,0),
            ('7fb64567-a902-494d-8394-48f3d2df16ea','Redmi 8','327d3894-7890-4b23-a939-dd606cb4c564','5000mAh超长续航','5000mAh超长续航 / 高通骁龙439八核处理器 / 4GB+64GB','public/imgs/phone/Redmi-8.png',799,699,20,2),
            ('5a0de458-35a6-4c44-8207-814f8f06a003','Redmi 8A','327d3894-7890-4b23-a939-dd606cb4c564','5000mAh超长续航','5000mAh超长续航 / 高通骁龙439八核处理器 / 4GB+64GB / 1200万AI后置相机','public/imgs/phone/Redmi-8A.png',599,699,20,0),
            ('7720799d-374a-4974-9682-b296eb96c30d','Redmi Note8 Pro','327d3894-7890-4b23-a939-dd606cb4c564','6400万全场景四摄','6400万四摄小金刚拍照新旗舰超强解析力，超震撼','public/imgs/phone/Redmi-Note8-pro.png',1399,1199,20,0),
            ('09044fcc-02b5-4907-94e7-ec4b340b4bb5','Redmi Note8','327d3894-7890-4b23-a939-dd606cb4c564','千元4800万四摄','千元4800万四摄 | 高通骁龙665 | 小金刚品质保证','public/imgs/phone/Redmi-Note8.png',999,999,20,0),
            ('c4f6dc9c-abaa-44b6-9c11-3c5f40157aa0','Redmi 7A','327d3894-7890-4b23-a939-dd606cb4c564','小巧大电量 持久流畅','小巧大电量，持久又流畅骁龙8核高性能处理器 | 4000mAh超长续航 | AI人脸解锁 | 整机防泼溅','public/imgs/phone/Redmi-7A.png',599,539,20,0),
            ('ff15c47c-5094-40ba-9b3b-0cc3324a15bd','小米电视4A 32英寸','772fd793-9340-4482-84fc-4634bc49b8ef','人工智能系统，高清液晶屏','小米电视4A 32英寸 | 64位四核处理器 | 1GB+4GB大内存 | 人工智能系统','public/imgs/appliance/MiTv-4A-32.png',799,799,10,0),
            ('bc06c641-9763-4366-91a5-1f94d6358411','小米全面屏电视E55A','772fd793-9340-4482-84fc-4634bc49b8ef','全面屏设计，人工智能语音','全面屏设计 | 内置小爱同学 | 4K + HDR | 杜比DTS | PatchWall | 海量内容 | 2GB + 8GB大存储 | 64位四核处理器','public/imgs/appliance/MiTv-E55A.png',2099,1899,10,0),
            ('8386884b-300e-4bf9-bd00-9b22e2fc4200','小米全面屏电视E65A','772fd793-9340-4482-84fc-4634bc49b8ef','全面屏设计，人工智能语音','人工智能语音系统 | 海量影视内容 | 4K 超高清屏 | 杜比音效 | 64位四核处理器 | 2GB + 8GB大存储','public/imgs/appliance/MiTv-E65A.png',3999,2799,10,0),
            ('c5e17d36-33e5-46cf-b1d4-53ee0ae1cfb5','小米电视4X 43英寸','772fd793-9340-4482-84fc-4634bc49b8ef','FHD全高清屏，人工智能语音','人工智能语音系统 | FHD全高清屏 | 64位四核处理器 | 海量片源 | 1GB+8GB大内存 | 钢琴烤漆','public/imgs/appliance/MiTv-4X-43.png',1499,1299,10,0),
            ('b8eca60b-b1e8-4619-a025-23ea5d5618f0','小米电视4C 55英寸','772fd793-9340-4482-84fc-4634bc49b8ef','4K HDR，人工智能系统','人工智能 | 大内存 | 杜比音效 | 超窄边 | 4K HDR | 海量片源 | 纤薄机身| 钢琴烤漆','public/imgs/appliance/MiTv-4C-55.png',1999,1799,10,0),
            ('ea652662-bdb8-4103-baad-ac86979d2ac8','小米电视4A 65英寸','772fd793-9340-4482-84fc-4634bc49b8ef','4K HDR，人工智能系统','人工智能 | 大内存 | 杜比音效 | 超窄边 | 4K HDR | 海量片源 | 纤薄机身| 钢琴烤漆','public/imgs/appliance/MiTv-4A-65.png',2999,2799,10,0),
            ('686d81da-2538-493f-bbcc-3244eba9a7f6','小米壁画电视 65英寸','772fd793-9340-4482-84fc-4634bc49b8ef','壁画外观，全面屏，远场语音','纯平背板 | 通体13.9mm | 远场语音 | 4K+HDR | 杜比+DTS | 画框模式 | 内置小爱同学 | PatchWall | SoundBar+低音炮 | 四核处理器+大存储','public/imgs/appliance/MiTv-ArtTv-65.png',6999,6999,10,0),
            ('7f9b6ad0-c7db-4109-aefe-2c4f7f17c243','米家互联网空调C1（一级能效）','84e2addd-8225-47fe-bfa9-49b0d2fb8d35','变频节能省电，自清洁','一级能效 | 1.5匹 | 全直流变频 | 高效制冷/热 | 静音设计 | 自清洁 | 全屋互联','public/imgs/appliance/AirCondition-V1C1.png',2699,2599,20,10),
            ('369cdfd6-a924-4cfa-826b-f00302378a32','米家空调','84e2addd-8225-47fe-bfa9-49b0d2fb8d35','出众静音，快速制冷热','大1匹 | 三级能效 | 静音 | 快速制冷热 | 广角送风 | 除湿功能 | 高密度过滤网 | 典雅外观','public/imgs/appliance/AirCondition-F3W1.png',1799,1699,20,8),
            ('bc5b0b73-57ff-4d31-bbe7-d9c4f138f2cc','米家互联网洗烘一体机 Pro 10kg','9672a3a0-f8ee-4628-8c02-137102b60ee7','智能洗烘，省心省力','国标双A+级洗烘能力 / 22种洗烘模式 / 智能投放洗涤剂 / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 除菌率达99.9%+','public/imgs/appliance/Washer-Pro-10.png',2999,2999,20,7),
            ('855a7444-a9ee-4cce-97a0-c6a9c3caedb3','Redmi K20/ K20 Pro 怪力魔王保护壳','d838571a-89d5-421b-973b-27a2fe3d83ff','怪力魔王专属定制','优选PC材料，强韧张力，经久耐用 / 精选开孔，全面贴合机身 / 手感轻薄细腻，舒适无负担 / 三款颜色可选，彰显个性，与众不同','public/imgs/accessory/protectingShell-RedMi-K20&pro.png',39,39,20,10),
            ('064ee6b3-d930-4d38-bb79-3630132349bd','小米9 ARE U OK保护壳','d838571a-89d5-421b-973b-27a2fe3d83ff','一个与众不同的保护壳','彰显独特个性 / 轻薄无负担 / 优选PC材料 / 贴合机身 / 潮流五色','public/imgs/accessory/protectingShell-Mi-9.png',49,39,20,10),
            ('4783afe4-238c-406c-8b4a-c539192b079e','小米CC9&小米CC9美图定制版 标准高透贴膜','e1da50d6-6c7f-40a7-a251-3f8a5f6744f1','高清透亮，耐磨性强','耐磨性强，防护更出众 / 疏油疏水，有效抗水抗脏污 / 高清透亮，保留了原生屏幕的亮丽颜色和清晰度 / 操作灵敏，智能吸附 / 进口高端PET材质，裸机般手感','public/imgs/accessory/protectingMen-Mi-CC9.png',19,19,20,9),
            ('cd5c5c0e-f654-44ad-9248-9928aec3f02f','小米CC9e 标准高透贴膜','e1da50d6-6c7f-40a7-a251-3f8a5f6744f1','高清透亮，耐磨性强','耐磨性强，防护更出众 / 疏油疏水，有效抗水抗脏污 / 高清透亮，保留了原生屏幕的亮丽颜色和清晰度 / 操作灵敏，智能吸附 / 进口高端PET材质，裸机般手感','public/imgs/accessory/protectingMen-Mi-CC9e.png',19,19,20,9),
            ('9753675f-ee61-4d1c-8940-1750f7ed60ea','小米USB充电器30W快充版（1A1C）','f19fc5b2-782e-498e-aac7-11d0b0d0bb22','多一种接口，多一种选择','双口输出 / 30W 输出 / 可折叠插脚 / 小巧便携','public/imgs/accessory/charger-30w.png',59,59,20,8),
            ('c1c7a82d-c684-4fa3-934e-c083f7c9059b','小米USB充电器快充版（18W）','f19fc5b2-782e-498e-aac7-11d0b0d0bb22','安卓、苹果设备均可使用','支持QC3.0设备充电 / 支持iOS设备充电/ 美观耐用','public/imgs/accessory/charger-18w.png',29,29,20,8),
            ('6886f130-26cb-4fe7-97a3-cee412395182','小米USB充电器60W快充版（6口）','f19fc5b2-782e-498e-aac7-11d0b0d0bb22','6口输出，USB-C输出接口','6口输出 / USB-C输出接口 / 支持QC3.0快充协议 / 总输出功率60W','public/imgs/accessory/charger-60w.png',129,129,20,0),
            ('bc38f4ec-ac37-40d5-acdd-c4ab8430c3c1','小米USB充电器36W快充版（2口）','f19fc5b2-782e-498e-aac7-11d0b0d0bb22','6多重安全保护，小巧便携','双USB输出接口 / 支持QC3.0快充协议 / 多重安全保护 / 小巧便携','public/imgs/accessory/charger-36w.png',59,59,20,0),
            ('5026db2e-4ba6-43d4-b1dd-e489843ad48c','小米车载充电器快充版','f19fc5b2-782e-498e-aac7-11d0b0d0bb22','让爱车成为移动充电站','QC3.0 双口输出 / 智能温度控制 / 5重安全保护 / 兼容iOS&Android设备','public/imgs/accessory/charger-car.png',69,69,20,0),
            ('ca21d7c2-4822-4bbc-912f-2432daf6069f','小米车载充电器快充版(37W)','f19fc5b2-782e-498e-aac7-11d0b0d0bb22','双口快充，车载充电更安全','单口27W 快充 / 双口输出 / 多重安全保护','public/imgs/accessory/charger-car-37w.png',49,49,20,0),
            ('cc56e829-2b56-4457-a830-195c9ce0becf','小米二合一移动电源（充电器）','f19fc5b2-782e-498e-aac7-11d0b0d0bb22','一个设备多种用途','5000mAh充沛电量 / 多协议快充 / USB 口输出','public/imgs/accessory/charger-tio.png',99,99,20,0),
            ('00692ba5-65dd-4aae-94fb-56f30d64efa5','小米无线充电宝青春版10000mAh','a759c9ac-2b61-46fb-9ac6-7ca2be403a9c','能量满满，无线有线都能充','10000mAh大容量 / 支持边充边放 / 有线无线都能充 / 双向快充','public/imgs/accessory/charger-10000mAh.png',129,129,20,8),
            ('a4c60c04-a70d-4693-a377-5538d78c95ab','小米CC9 Pro/尊享版 撞色飘带保护壳','d838571a-89d5-421b-973b-27a2fe3d83ff','全面贴合，无感更舒适','优选环保PC材质，强韧张力，全面贴合，无感更舒适','public/imgs/accessory/protectingShell-Mi-CC9Pro.png',69,69,20,0),
            ('2ef9418e-4f92-41b1-8f83-b0b2ca17a0f9','Redmi K20系列 幻境之心保护壳','d838571a-89d5-421b-973b-27a2fe3d83ff','柔软坚韧,全面贴合','优质环保材质，柔软坚韧 / 全面贴合，有效抵抗灰尘 / 鲜亮三种颜色可选，为爱机随时换装','public/imgs/accessory/protectingShell-RedMi-K20.png',39,39,20,0),
            ('80d366b4-ecf8-4234-a029-f12ef781e29d','小米9 SE 街头风保护壳黑色','d838571a-89d5-421b-973b-27a2fe3d83ff','个性时尚,细节出众','个性时尚 / 细节出众 / 纤薄轻巧 / 多彩时尚','public/imgs/accessory/protectingShell-Mi-9SE.png',49,49,20,0),
            ('5fb3a8ec-47ca-445f-832d-6ec469c8539f','小米9 街头风保护壳 红色','d838571a-89d5-421b-973b-27a2fe3d83ff','个性时尚,细节出众','时尚多彩 / 细节出众 / 纤薄轻巧 / 是腕带也是支架','public/imgs/accessory/protectingShell-Mi-9-red.png',49,49,20,0),
            ('cc1237e9-52df-42a7-be54-9c42e121b558','小米MIX 3 极简保护壳蓝色','d838571a-89d5-421b-973b-27a2fe3d83ff','时尚简约设计，手感细腻顺滑','时尚简约设计，手感细腻顺滑 / 优质环保PC原材料，强韧张力，经久耐用 / 超薄 0.8MM厚度','public/imgs/accessory/protectingShell-Mix-3.png',49,12.9,20,0);

INSERT INTO `ProductPicture`(`id`,`productId`,`productPicture`,`intro`) VALUES
            (1,'9cad5e37-4261-47b0-b047-2a2592229944','public/imgs/phone/picture/Redmi-k30-1.png',NULL),
            (2,'9cad5e37-4261-47b0-b047-2a2592229944','public/imgs/phone/picture/Redmi-k30-2.png',NULL),
            (3,'9cad5e37-4261-47b0-b047-2a2592229944','public/imgs/phone/picture/Redmi-k30-3.png',NULL),
            (4,'9cad5e37-4261-47b0-b047-2a2592229944','public/imgs/phone/picture/Redmi-k30-4.png',NULL),
            (5,'9cad5e37-4261-47b0-b047-2a2592229944','public/imgs/phone/picture/Redmi-k30-5.png',NULL),
            (6,'b496e1c5-115b-402f-82a0-5f2c536ae5ad','public/imgs/phone/picture/Redmi K30 5G-1.jpg',NULL),
            (7,'b496e1c5-115b-402f-82a0-5f2c536ae5ad','public/imgs/phone/picture/Redmi K30 5G-2.jpg',NULL),
            (8,'b496e1c5-115b-402f-82a0-5f2c536ae5ad','public/imgs/phone/picture/Redmi K30 5G-3.jpg',NULL),
            (9,'b496e1c5-115b-402f-82a0-5f2c536ae5ad','public/imgs/phone/picture/Redmi K30 5G-4.jpg',NULL),
            (10,'b496e1c5-115b-402f-82a0-5f2c536ae5ad','public/imgs/phone/picture/Redmi K30 5G-5.jpg',NULL),
            (11,'9d62f58e-6b63-426a-99ef-f8206f67c339','public/imgs/phone/picture/MI CC9 Pro-1.jpg',NULL),
            (12,'9d62f58e-6b63-426a-99ef-f8206f67c339','public/imgs/phone/picture/MI CC9 Pro-2.jpg',NULL),
            (13,'9d62f58e-6b63-426a-99ef-f8206f67c339','public/imgs/phone/picture/MI CC9 Pro-3.jpg',NULL),
            (14,'9d62f58e-6b63-426a-99ef-f8206f67c339','public/imgs/phone/picture/MI CC9 Pro-4.jpg',NULL),
            (15,'9d62f58e-6b63-426a-99ef-f8206f67c339','public/imgs/phone/picture/MI CC9 Pro-5.jpg',NULL),
            (16,'9d62f58e-6b63-426a-99ef-f8206f67c339','public/imgs/phone/picture/MI CC9 Pro-6.jpg',NULL),
            (17,'7fb64567-a902-494d-8394-48f3d2df16ea','public/imgs/phone/picture/Redmi 8-1.jpg',NULL),
            (18,'7fb64567-a902-494d-8394-48f3d2df16ea','public/imgs/phone/picture/Redmi 8-2.jpg',NULL),
            (19,'7fb64567-a902-494d-8394-48f3d2df16ea','public/imgs/phone/picture/Redmi 8-3.jpg',NULL),
            (20,'7fb64567-a902-494d-8394-48f3d2df16ea','public/imgs/phone/picture/Redmi 8-4.jpg',NULL),
            (21,'7fb64567-a902-494d-8394-48f3d2df16ea','public/imgs/phone/picture/Redmi 8-5.jpg',NULL),
            (22,'5a0de458-35a6-4c44-8207-814f8f06a003','public/imgs/phone/picture/Redmi 8A-1.jpg',NULL),
            (23,'7720799d-374a-4974-9682-b296eb96c30d','public/imgs/phone/picture/Redmi Note8 Pro-1.png',NULL),
            (24,'7720799d-374a-4974-9682-b296eb96c30d','public/imgs/phone/picture/Redmi Note8 Pro-2.png',NULL),
            (25,'7720799d-374a-4974-9682-b296eb96c30d','public/imgs/phone/picture/Redmi Note8 Pro-3.png',NULL),
            (26,'7720799d-374a-4974-9682-b296eb96c30d','public/imgs/phone/picture/Redmi Note8 Pro-4.png',NULL),
            (27,'7720799d-374a-4974-9682-b296eb96c30d','public/imgs/phone/picture/Redmi Note8 Pro-5.png',NULL),
            (28,'09044fcc-02b5-4907-94e7-ec4b340b4bb5','public/imgs/phone/picture/Redmi Note8-1.jpg',NULL),
            (29,'09044fcc-02b5-4907-94e7-ec4b340b4bb5','public/imgs/phone/picture/Redmi Note8-2.jpg',NULL),
            (30,'09044fcc-02b5-4907-94e7-ec4b340b4bb5','public/imgs/phone/picture/Redmi Note8-3.jpg',NULL),
            (31,'09044fcc-02b5-4907-94e7-ec4b340b4bb5','public/imgs/phone/picture/Redmi Note8-4.jpg',NULL),
            (32,'09044fcc-02b5-4907-94e7-ec4b340b4bb5','public/imgs/phone/picture/Redmi Note8-5.jpg',NULL),
            (33,'c4f6dc9c-abaa-44b6-9c11-3c5f40157aa0','public/imgs/phone/picture/Redmi 7A-1.jpg',NULL),
            (34,'c4f6dc9c-abaa-44b6-9c11-3c5f40157aa0','public/imgs/phone/picture/Redmi 7A-2.jpg',NULL),
            (35,'c4f6dc9c-abaa-44b6-9c11-3c5f40157aa0','public/imgs/phone/picture/Redmi 7A-3.jpg',NULL),
            (36,'c4f6dc9c-abaa-44b6-9c11-3c5f40157aa0','public/imgs/phone/picture/Redmi 7A-4.jpg',NULL),
            (37,'c4f6dc9c-abaa-44b6-9c11-3c5f40157aa0','public/imgs/phone/picture/Redmi 7A-5.jpg',NULL),
            (38,'ff15c47c-5094-40ba-9b3b-0cc3324a15bd','public/imgs/phone/picture/MiTv-4A-32-1.jpg',NULL),
            (39,'ff15c47c-5094-40ba-9b3b-0cc3324a15bd','public/imgs/phone/picture/MiTv-4A-32-2.jpg',NULL),
            (40,'ff15c47c-5094-40ba-9b3b-0cc3324a15bd','public/imgs/phone/picture/MiTv-4A-32-3.jpg',NULL),
            (41,'ff15c47c-5094-40ba-9b3b-0cc3324a15bd','public/imgs/phone/picture/MiTv-4A-32-4.jpg',NULL),
            (42,'bc06c641-9763-4366-91a5-1f94d6358411','public/imgs/phone/picture/MiTv-E55A-1.jpg',NULL),
            (43,'bc06c641-9763-4366-91a5-1f94d6358411','public/imgs/phone/picture/MiTv-E55A-2.jpg',NULL),
            (44,'bc06c641-9763-4366-91a5-1f94d6358411','public/imgs/phone/picture/MiTv-E55A-3.jpg',NULL),
            (45,'bc06c641-9763-4366-91a5-1f94d6358411','public/imgs/phone/picture/MiTv-E55A-4.jpg',NULL),
            (46,'8386884b-300e-4bf9-bd00-9b22e2fc4200','public/imgs/phone/picture/MiTv-E65A-1.jpg',NULL),
            (47,'8386884b-300e-4bf9-bd00-9b22e2fc4200','public/imgs/phone/picture/MiTv-E65A-2.jpg',NULL),
            (48,'8386884b-300e-4bf9-bd00-9b22e2fc4200','public/imgs/phone/picture/MiTv-E65A-3.jpg',NULL),
            (49,'8386884b-300e-4bf9-bd00-9b22e2fc4200','public/imgs/phone/picture/MiTv-E65A-4.jpg',NULL),
            (50,'c5e17d36-33e5-46cf-b1d4-53ee0ae1cfb5','public/imgs/phone/picture/MiTv-4X 43-1.jpg',NULL),
            (51,'c5e17d36-33e5-46cf-b1d4-53ee0ae1cfb5','public/imgs/phone/picture/MiTv-4X 43-2.jpg',NULL),
            (52,'c5e17d36-33e5-46cf-b1d4-53ee0ae1cfb5','public/imgs/phone/picture/MiTv-4X 43-3.jpg',NULL),
            (53,'b8eca60b-b1e8-4619-a025-23ea5d5618f0','public/imgs/phone/picture/MiTv-4C 55-1.jpg',NULL),
            (54,'b8eca60b-b1e8-4619-a025-23ea5d5618f0','public/imgs/phone/picture/MiTv-4C 55-2.jpg',NULL),
            (55,'b8eca60b-b1e8-4619-a025-23ea5d5618f0','public/imgs/phone/picture/MiTv-4C 55-3.jpg',NULL),
            (56,'ea652662-bdb8-4103-baad-ac86979d2ac8','public/imgs/phone/picture/MiTv-4A 65-1.jpg',NULL),
            (57,'686d81da-2538-493f-bbcc-3244eba9a7f6','public/imgs/phone/picture/MiTv-ArtTv-65-1.jpg',NULL),
            (58,'7f9b6ad0-c7db-4109-aefe-2c4f7f17c243','public/imgs/phone/picture/AirCondition-V1C1-1.jpg',NULL),
            (59,'369cdfd6-a924-4cfa-826b-f00302378a32','public/imgs/phone/picture/AirCondition-F3W1-1.jpg',NULL),
            (60,'bc5b0b73-57ff-4d31-bbe7-d9c4f138f2cc','public/imgs/phone/picture/Washer-Pro-10-1.jpg',NULL),
            (61,'bc5b0b73-57ff-4d31-bbe7-d9c4f138f2cc','public/imgs/phone/picture/Washer-Pro-10-2.jpg',NULL),
            (62,'bc5b0b73-57ff-4d31-bbe7-d9c4f138f2cc','public/imgs/phone/picture/Washer-Pro-10-3.jpg',NULL),
            (63,'bc5b0b73-57ff-4d31-bbe7-d9c4f138f2cc','public/imgs/phone/picture/Washer-Pro-10-4.jpg',NULL),
            (64,'855a7444-a9ee-4cce-97a0-c6a9c3caedb3','public/imgs/phone/picture/protectingShell-RedMi-K20&pro-1.jpg',NULL),
            (65,'064ee6b3-d930-4d38-bb79-3630132349bd','public/imgs/phone/picture/protectingShell-Mi-9-1.jpg',NULL),
            (66,'064ee6b3-d930-4d38-bb79-3630132349bd','public/imgs/phone/picture/protectingShell-Mi-9-2.jpg',NULL),
            (67,'4783afe4-238c-406c-8b4a-c539192b079e','public/imgs/phone/picture/protectingMen-Mi-CC9-1.jpg',NULL),
            (68,'cd5c5c0e-f654-44ad-9248-9928aec3f02f','public/imgs/phone/picture/protectingMen-Mi-CC9e-1.jpg',NULL),
            (69,'9753675f-ee61-4d1c-8940-1750f7ed60ea','public/imgs/phone/picture/charger-30w-1.jpg',NULL),
            (70,'9753675f-ee61-4d1c-8940-1750f7ed60ea','public/imgs/phone/picture/charger-30w-2.jpg',NULL),
            (71,'9753675f-ee61-4d1c-8940-1750f7ed60ea','public/imgs/phone/picture/charger-30w-3.jpg',NULL),
            (72,'9753675f-ee61-4d1c-8940-1750f7ed60ea','public/imgs/phone/picture/charger-30w-4.jpg',NULL),
            (73,'c1c7a82d-c684-4fa3-934e-c083f7c9059b','public/imgs/phone/picture/charger-18w-1.jpg',NULL),
            (74,'c1c7a82d-c684-4fa3-934e-c083f7c9059b','public/imgs/phone/picture/charger-18w-2.jpg',NULL),
            (75,'c1c7a82d-c684-4fa3-934e-c083f7c9059b','public/imgs/phone/picture/charger-18w-3.jpg',NULL),
            (76,'6886f130-26cb-4fe7-97a3-cee412395182','public/imgs/phone/picture/charger-60w-1.jpg',NULL),
            (77,'6886f130-26cb-4fe7-97a3-cee412395182','public/imgs/phone/picture/charger-60w-2.jpg',NULL),
            (78,'6886f130-26cb-4fe7-97a3-cee412395182','public/imgs/phone/picture/charger-60w-3.jpg',NULL),
            (79,'6886f130-26cb-4fe7-97a3-cee412395182','public/imgs/phone/picture/charger-60w-4.jpg',NULL),
            (80,'bc38f4ec-ac37-40d5-acdd-c4ab8430c3c1','public/imgs/phone/picture/charger-36w-1.jpg',NULL),
            (81,'bc38f4ec-ac37-40d5-acdd-c4ab8430c3c1','public/imgs/phone/picture/charger-36w-2.jpg',NULL),
            (82,'bc38f4ec-ac37-40d5-acdd-c4ab8430c3c1','public/imgs/phone/picture/charger-36w-3.jpg',NULL),
            (83,'bc38f4ec-ac37-40d5-acdd-c4ab8430c3c1','public/imgs/phone/picture/charger-36w-4.jpg',NULL),
            (84,'bc38f4ec-ac37-40d5-acdd-c4ab8430c3c1','public/imgs/phone/picture/charger-36w-5.jpg',NULL),
            (85,'5026db2e-4ba6-43d4-b1dd-e489843ad48c','public/imgs/phone/picture/charger-car-1.jpg',NULL),
            (86,'5026db2e-4ba6-43d4-b1dd-e489843ad48c','public/imgs/phone/picture/charger-car-2.jpg',NULL),
            (87,'5026db2e-4ba6-43d4-b1dd-e489843ad48c','public/imgs/phone/picture/charger-car-3.jpg',NULL),
            (88,'5026db2e-4ba6-43d4-b1dd-e489843ad48c','public/imgs/phone/picture/charger-car-4.jpg',NULL),
            (89,'5026db2e-4ba6-43d4-b1dd-e489843ad48c','public/imgs/phone/picture/charger-car-5.jpg',NULL),
            (90,'5026db2e-4ba6-43d4-b1dd-e489843ad48c','public/imgs/phone/picture/charger-car-6.jpg',NULL),
            (91,'ca21d7c2-4822-4bbc-912f-2432daf6069f','public/imgs/phone/picture/charger-car-37w-1.jpg',NULL),
            (92,'ca21d7c2-4822-4bbc-912f-2432daf6069f','public/imgs/phone/picture/charger-car-37w-2.jpg',NULL),
            (93,'ca21d7c2-4822-4bbc-912f-2432daf6069f','public/imgs/phone/picture/charger-car-37w-3.jpg',NULL),
            (94,'ca21d7c2-4822-4bbc-912f-2432daf6069f','public/imgs/phone/picture/charger-car-37w-4.jpg',NULL),
            (95,'ca21d7c2-4822-4bbc-912f-2432daf6069f','public/imgs/phone/picture/charger-car-37w-5.jpg',NULL),
            (96,'cc56e829-2b56-4457-a830-195c9ce0becf','public/imgs/phone/picture/charger-tio-1.jpg',NULL),
            (97,'cc56e829-2b56-4457-a830-195c9ce0becf','public/imgs/phone/picture/charger-tio-2.jpg',NULL),
            (98,'cc56e829-2b56-4457-a830-195c9ce0becf','public/imgs/phone/picture/charger-tio-3.jpg',NULL),
            (99,'cc56e829-2b56-4457-a830-195c9ce0becf','public/imgs/phone/picture/charger-tio-4.jpg',NULL),
            (100,'cc56e829-2b56-4457-a830-195c9ce0becf','public/imgs/phone/picture/charger-tio-5.jpg',NULL),
            (101,'00692ba5-65dd-4aae-94fb-56f30d64efa5','public/imgs/phone/picture/charger-10000mAh-1.jpg',NULL),
            (102,'00692ba5-65dd-4aae-94fb-56f30d64efa5','public/imgs/phone/picture/charger-10000mAh-2.jpg',NULL),
            (103,'00692ba5-65dd-4aae-94fb-56f30d64efa5','public/imgs/phone/picture/charger-10000mAh-3.jpg',NULL),
            (104,'00692ba5-65dd-4aae-94fb-56f30d64efa5','public/imgs/phone/picture/charger-10000mAh-4.jpg',NULL),
            (105,'00692ba5-65dd-4aae-94fb-56f30d64efa5','public/imgs/phone/picture/charger-10000mAh-5.jpg',NULL),
            (106,'a4c60c04-a70d-4693-a377-5538d78c95ab','public/imgs/phone/picture/protectingShell-Mi-CC9Pro-1.jpg',NULL),
            (107,'2ef9418e-4f92-41b1-8f83-b0b2ca17a0f9','public/imgs/phone/picture/protectingShell-RedMi-K20-1.jpg',NULL),
            (108,'80d366b4-ecf8-4234-a029-f12ef781e29d','public/imgs/phone/picture/protectingShell-Mi-9SE-1.jpg',NULL),
            (109,'5fb3a8ec-47ca-445f-832d-6ec469c8539f','public/imgs/phone/picture/protectingShell-Mi-9-red-1.jpg',NULL),
            (110,'cc1237e9-52df-42a7-be54-9c42e121b558','public/imgs/phone/picture/protectingShell-Mix-3-1.jpg',NULL);