/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-05-16 19:49:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collections
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `collectionsID` varchar(36) NOT NULL,
  `userID` varchar(32) DEFAULT NULL,
  `movieID` varchar(32) DEFAULT NULL,
  `saveTime` date DEFAULT NULL,
  PRIMARY KEY (`collectionsID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES ('20c8f0c7-d3dc-4071-bd4d-6a5c63fdd096', '4af03721be7047fcaadb9198c0d0d149', '4989f59d5b7d11e9aaf900ff600bc04b', '2019-05-14');
INSERT INTO `collections` VALUES ('2f5769c4-efc3-44b2-9094-97ed1aedb0b6', '1', '4989fa875b7d11e9aaf900ff600bc04b', '2019-05-12');
INSERT INTO `collections` VALUES ('404f55c5-7456-4d3c-88e5-b6297d3f4d58', '1', '4989f3595b7d11e9aaf900ff600bc04b', '2019-05-11');
INSERT INTO `collections` VALUES ('41e529fa-4734-4562-88a1-672c6cf9624a', '1', '4989f9f35b7d11e9aaf900ff600bc04b', '2019-05-11');
INSERT INTO `collections` VALUES ('67436c8e-fa6d-43c6-9b41-772316e10ac7', '4af03721be7047fcaadb9198c0d0d149', '4989fb595b7d11e9aaf900ff600bc04b', '2019-05-14');
INSERT INTO `collections` VALUES ('713f55fa-a100-4682-b84a-6d6a16d6401f', '4af03721be7047fcaadb9198c0d0d149', '4989f9f35b7d11e9aaf900ff600bc04b', '2019-05-14');
INSERT INTO `collections` VALUES ('c95a033d-e9a5-4dae-ae5d-f82b2d1834dd', '1', '4989f98c5b7d11e9aaf900ff600bc04b', '2019-05-11');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `commentsID` varchar(32) NOT NULL,
  `movieID` varchar(32) DEFAULT NULL,
  `userID` varchar(32) DEFAULT NULL,
  `commentsDetails` varchar(50) DEFAULT NULL,
  `commentsTime` datetime DEFAULT NULL,
  `commentsLike` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentsID`) USING BTREE,
  KEY `movieID_idx` (`movieID`) USING BTREE,
  KEY `userID_idx` (`userID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '4989da375b7d11e9aaf900ff600bc04b', '2', '太闲了，去看看电影', '2019-04-10 23:41:57', '3');
INSERT INTO `comments` VALUES ('2', '4989da375b7d11e9aaf900ff600bc04b', '2', '我是蔡徐坤的脑残粉', '2019-04-09 12:17:11', '0');
INSERT INTO `comments` VALUES ('b31b66fac14a4123821984eb97e13fe8', '4989f9f35b7d11e9aaf900ff600bc04b', '4af03721be7047fcaadb9198c0d0d149', '看看好不好看', '2019-05-14 20:22:38', '0');

-- ----------------------------
-- Table structure for commentslike
-- ----------------------------
DROP TABLE IF EXISTS `commentslike`;
CREATE TABLE `commentslike` (
  `commentsLikeID` varchar(32) NOT NULL,
  `commentsID` varchar(32) DEFAULT NULL,
  `userID` varchar(32) DEFAULT NULL,
  `ClikeORnot` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`commentsLikeID`) USING BTREE,
  KEY `commentsID_idx` (`commentsID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of commentslike
-- ----------------------------

-- ----------------------------
-- Table structure for longcomments
-- ----------------------------
DROP TABLE IF EXISTS `longcomments`;
CREATE TABLE `longcomments` (
  `longcommentsID` varchar(32) NOT NULL,
  `movieID` varchar(32) DEFAULT NULL,
  `userID` varchar(32) DEFAULT NULL,
  `longcommentsHeading` varchar(20) DEFAULT NULL,
  `longcommentsDetails` text,
  `longcommentsTime` datetime DEFAULT NULL,
  `longcommentsLike` int(11) DEFAULT NULL,
  `movieScore` int(10) DEFAULT NULL,
  PRIMARY KEY (`longcommentsID`) USING BTREE,
  KEY `movieID_idx` (`movieID`) USING BTREE,
  KEY `userID_idx` (`userID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of longcomments
-- ----------------------------
INSERT INTO `longcomments` VALUES ('9b92bd4109274a10a6dc28ec654009b3', '4989f3f35b7d11e9aaf900ff600bc04b', '4af03721be7047fcaadb9198c0d0d149', '测试', '手打打<br/>发达<br/>邓伟达asd<br/><br/>服务大厦的asd啊我的  吊袜带萨达 ，阿迪王大的', '2019-05-14 18:16:41', '1', '4');
INSERT INTO `longcomments` VALUES ('e7c8d5edc56b4fa69ed77e7b4e21b638', '4989f9f35b7d11e9aaf900ff600bc04b', '4af03721be7047fcaadb9198c0d0d149', '来吧', '见证奇迹的时刻到了<br/><br/>就是这样！', '2019-05-14 20:39:21', '1', '4');

-- ----------------------------
-- Table structure for longcommentslike
-- ----------------------------
DROP TABLE IF EXISTS `longcommentslike`;
CREATE TABLE `longcommentslike` (
  `longcommentsLikeID` varchar(32) NOT NULL,
  `longcommentsID` varchar(32) DEFAULT NULL,
  `userID` varchar(32) DEFAULT NULL,
  `LClikeORnot` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`longcommentsLikeID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of longcommentslike
-- ----------------------------
INSERT INTO `longcommentslike` VALUES ('4c6cf91beaa74a3f9e1576bc12d81fc6', '9b92bd4109274a10a6dc28ec654009b3', '4af03721be7047fcaadb9198c0d0d149', '1');
INSERT INTO `longcommentslike` VALUES ('dac6c1c136e54517b96c4011acff918f', 'e7c8d5edc56b4fa69ed77e7b4e21b638', '4af03721be7047fcaadb9198c0d0d149', '1');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `movieID` varchar(32) NOT NULL,
  `userID` varchar(32) NOT NULL,
  `movieName` varchar(32) NOT NULL,
  `movieIntroduction` varchar(400) NOT NULL,
  `movieType` varchar(32) NOT NULL,
  `movieLike` int(11) NOT NULL,
  `movieScore` double NOT NULL,
  `movieWatch` int(11) NOT NULL,
  `movieUpdateDate` varchar(32) NOT NULL,
  PRIMARY KEY (`movieID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('4989da375b7d11e9aaf900ff600bc04b', '1', '雷霆沙赞', '《雷霆沙赞！》是由大卫·F·桑德伯格执导，扎克瑞·莱维、马克·斯特朗、亚瑟·安其、杰克·迪伦·格雷泽、格蕾丝·富尔顿等主演的一部奇幻动作冒险喜剧片。该片于2019年4月5日在中国、美国同步上映.', '动作类', '32', '7.2', '265', '2019-3-18');
INSERT INTO `movie` VALUES ('4989f2875b7d11e9aaf900ff600bc04b', '1', '地狱男爵：血皇后崛起', '《地狱男爵：血皇后崛起》由美剧《西部世界》导演尼尔·马歇尔执导，除了曾出演《怪奇物语》的男星大卫·哈伯之外，伊恩·麦柯肖恩饰演超自然学家布卢姆教授、而米拉·乔沃维奇将出演邪恶角色血皇后。', '动作类', '3156', '8.3', '586', '2019-3-9');
INSERT INTO `movie` VALUES ('4989f3595b7d11e9aaf900ff600bc04b', '1', '复仇者联盟4：终局之战', '《复仇者联盟4：终局之战》（Avengers: Endgame）是安东尼·罗素和乔·罗素执导的美国科幻电影，改编自美国漫威漫画，漫威电影宇宙（Marvel Cinematic Universe，缩写为MCU）第22部影片，由小罗伯特·唐尼、克里斯·埃文斯、克里斯·海姆斯沃斯、马克·鲁法洛、斯嘉丽·约翰逊、杰瑞米·雷纳、保罗·路德、布丽·拉尔森、唐·钱德尔、凯伦·吉兰、乔什·布洛林等主演。是《复仇者联盟》系列的最终章，与《复仇者联盟3：无限战争》、《蚁人2：黄蜂女现身》以及《惊奇队长》承接。', '科幻类', '86', '9.1', '856', '2019-3-8');
INSERT INTO `movie` VALUES ('4989f3f35b7d11e9aaf900ff600bc04b', '1', 'X战警：黑凤凰', '《X战警：黑凤凰》是二十世纪福克斯公司出品的科幻动作电影，改编自漫威漫画。由西蒙·金伯格编剧并执导，詹姆斯·麦卡沃伊、詹妮弗·劳伦斯、迈克尔·法斯宾德、索菲·特纳、尼古拉斯·霍尔特、杰西卡·查斯坦等主演，该片的背景设置在20世纪八九十年代，故事将聚焦凤凰女琴·葛蕾的内在人格被释放后黑化为暗黑凤凰，并与X战警开战的故事。', '冒险类', '58', '8', '523', '2019-1-26');
INSERT INTO `movie` VALUES ('4989f4705b7d11e9aaf900ff600bc04b', '1', '风中有朵雨做的云', '《风中有朵雨做的云》是由娄烨执导，梅峰、邱玉洁、马英力编剧，张家鲁担任监制的悬疑犯罪电影，由井柏然、宋佳、马思纯、秦昊、陈妍希、张颂文主演，于2019年4月4日在全国公映。', '悬疑类', '76', '6.5', '582', '2019-2-14');
INSERT INTO `movie` VALUES ('4989f4d15b7d11e9aaf900ff600bc04b', '1', '哥斯拉2：怪兽之王', '《哥斯拉2》是由迈克尔·道赫蒂执导，凯尔·钱德勒、米莉·博比·布朗、布莱德利·惠特福德、维拉·法梅加、渡边谦、莎莉·霍金斯、章子怡等人主演的一部科幻片。是电影《哥斯拉》的续集。将于2019年5月31日在北美上映。', '科幻类', '139', '8.4', '571', '2019-2-3');
INSERT INTO `movie` VALUES ('4989f53d5b7d11e9aaf900ff600bc04b', '1', '转型团伙', '影片讲述一段过气影帝与当红童星因一场拍摄意外而陷入黑帮纷争的奇妙故事。', '喜剧类', '15', '5.2', '0', '2019-4-19');
INSERT INTO `movie` VALUES ('4989f59d5b7d11e9aaf900ff600bc04b', '1', '惊奇队长', '《惊奇队长》根据漫威漫画改编，故事背景设置在20世纪90年代，讲述了空军飞行员卡罗尔·丹弗斯成为了精英星际军队成员后，在特工尼克·弗瑞的帮助下，卡罗尔·丹弗斯开始揭开她过去的真相的故事。', '动作类', '186', '9.2', '5265', '2019-2-24');
INSERT INTO `movie` VALUES ('4989f5fe5b7d11e9aaf900ff600bc04b', '1', '人间·喜剧', '《人间·喜剧》是由万达影视传媒有限公司出品，孙周执导，艾伦、王智、鲁诺，任达华，金士杰主演的喜剧片。讲述了又怂又没出息的电台主播濮通，交不起房租讨不回薪水，媳妇都要闹离婚。莫名被卷进一场阴谋漩涡，怂人濮通一夜逆袭，拳打黑帮大佬，绑架首富独子。', '喜剧类', '38', '6.7', '135', '2019-3-29');
INSERT INTO `movie` VALUES ('4989f98c5b7d11e9aaf900ff600bc04b', '1', '怪奇物语 第三季', '《怪奇物语》系列台前幕后原班人马已全体回归第三季，故事依旧发生在霍金斯小镇，时间线又往前推进了一年。预告呈现的1985年跨年夜再次出现世界反转的效果，预示着未来一年中超能少女小11与单车少年团将继续对抗来自逆世界的更大威胁。', '悬疑类', '154', '9.3', '597', '2019-3-15');
INSERT INTO `movie` VALUES ('4989f9f35b7d11e9aaf900ff600bc04b', '1', '夏目友人帐', '动画电影《夏目友人帐 ～缘结空蝉～》改编自绿川幸原作的漫画作品《夏目友人帐》。电影由朱夏负责制作，于2018年9月29日在日本上映', '动画类', '356', '8', '5197', '2019-3-12');
INSERT INTO `movie` VALUES ('4989fa875b7d11e9aaf900ff600bc04b', '1', '蜘蛛侠：平行宇宙', '蜘蛛侠：平行宇宙》是美国索尼哥伦比亚影业与漫威联合出品的动画电影，由鲍勃·佩尔西凯蒂、彼得·拉姆齐、罗德尼·罗斯曼联合执导，沙梅克·摩尔、列维·施瑞博尔等主演。该片讲述了\"小黑蛛\"迈尔斯·莫拉莱斯踏上全新宇宙冒险之旅的故事，于2018年12月14日在美国上映，同年12月21日在中国内地上映', '动作类', '1356', '9.5', '5537', '2019-2-8');
INSERT INTO `movie` VALUES ('4989faf35b7d11e9aaf900ff600bc04b', '1', '绿皮书', '《绿皮书》是由彼得·法拉利执导，维果·莫特森、马赫沙拉·阿里主演的剧情片，于2018年9月11日在多伦多国际电影节首映；2019年3月1日在中国内地上映。该片改编自真人真事，讲述了意裔美国人保镖托尼，他被聘用为世界上优秀的爵士钢琴家唐开车。钢琴家将从纽约开始举办巡回演奏，俩人之间一段跨越种族、阶级的友谊的故事。', '剧情类', '156', '6.5', '371', '2019-3-18');
INSERT INTO `movie` VALUES ('4989fb595b7d11e9aaf900ff600bc04b', '1', '阿丽塔：战斗天使', '《阿丽塔：战斗天使》是由二十世纪福斯电影公司出品的科幻动作片，由罗伯特·罗德里格兹执导，罗莎·萨拉扎尔、克里斯托弗·瓦尔兹、马赫沙拉·阿里、詹妮弗·康纳利联合主演。该片于2019年2月14日在美国上映，于2019年2月22日在中国内地上映。', '科幻类', '756', '8.1', '611', '2019-3-26');
INSERT INTO `movie` VALUES ('4989fbba5b7d11e9aaf900ff600bc04b', '1', '驯龙高手3', '《驯龙高手3》是由梦工厂动画制作、环球影业发行的动画电影，改编自英国女作家克瑞西达·科威尔所著的同名儿童书籍', '动画类', '456', '8.8', '546', '2019-3-7');

-- ----------------------------
-- Table structure for movielike
-- ----------------------------
DROP TABLE IF EXISTS `movielike`;
CREATE TABLE `movielike` (
  `movieLikeID` varchar(32) NOT NULL,
  `userID` varchar(32) NOT NULL,
  `movieID` varchar(32) NOT NULL,
  `ifMovieLike` tinyint(1) NOT NULL,
  PRIMARY KEY (`movieLikeID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of movielike
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userID` varchar(32) NOT NULL,
  `userName` varchar(18) NOT NULL,
  `userPassword` varchar(32) NOT NULL,
  `userDate` varchar(32) NOT NULL,
  `userInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123', '2019-4-8', null);
INSERT INTO `users` VALUES ('2', '猡志豪', '222', '2019-6-9', null);
INSERT INTO `users` VALUES ('4af03721be7047fcaadb9198c0d0d149', 'herfrain', '123', '2019-05-14', 'i love you lalala\nhhh\n\nzzzz');

-- ----------------------------
-- Table structure for watch
-- ----------------------------
DROP TABLE IF EXISTS `watch`;
CREATE TABLE `watch` (
  `watchID` varchar(32) NOT NULL,
  `userID` varchar(32) NOT NULL,
  `movieID` varchar(32) NOT NULL,
  `ifWatch` tinyint(1) NOT NULL,
  PRIMARY KEY (`watchID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of watch
-- ----------------------------

-- ----------------------------
-- View structure for movie_collections
-- ----------------------------
DROP VIEW IF EXISTS `movie_collections`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movie_collections` AS select `collections`.`collectionsID` AS `collectionsID`,`collections`.`movieID` AS `movieID`,`collections`.`userID` AS `userID`,`movie`.`movieName` AS `movieName`,`movie`.`movieIntroduction` AS `movieIntroduction`,`movie`.`movieType` AS `movieType`,`movie`.`movieLike` AS `movieLike`,`movie`.`movieScore` AS `movieScore`,`movie`.`movieWatch` AS `movieWatch`,`collections`.`saveTime` AS `saveTime` from (`movie` join `collections`) where (`collections`.`movieID` = `movie`.`movieID`) ;

-- ----------------------------
-- View structure for user_comments
-- ----------------------------
DROP VIEW IF EXISTS `user_comments`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_comments` AS select `users`.`userID` AS `userID`,`users`.`userName` AS `userName`,`comments`.`commentsDetails` AS `commentsDetails`,`comments`.`commentsTime` AS `commentsTime`,`comments`.`commentsLike` AS `commentsLike`,`comments`.`movieID` AS `movieID` from (`users` join `comments`) where (`users`.`userID` = `comments`.`userID`) ;

-- ----------------------------
-- View structure for user_longcomments
-- ----------------------------
DROP VIEW IF EXISTS `user_longcomments`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_longcomments` AS select `users`.`userID` AS `userID`,`users`.`userName` AS `userName`,`longcomments`.`longcommentsID` AS `longcommentsID`,`longcomments`.`longcommentsTime` AS `longcommentsTime`,`longcomments`.`longcommentsHeading` AS `longcommentsHeading`,`longcomments`.`longcommentsLike` AS `longcommentsLike`,`longcomments`.`movieID` AS `movieID`,`longcomments`.`longcommentsDetails` AS `longcommentsDetails`,`longcomments`.`movieScore` AS `movieScore` from (`users` join `longcomments`) where (`users`.`userID` = `longcomments`.`userID`) ;

-- ----------------------------
-- View structure for user_movie
-- ----------------------------
DROP VIEW IF EXISTS `user_movie`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_movie` AS select `users`.`userID` AS `userID`,`users`.`userName` AS `userName`,`movie`.`movieID` AS `movieID`,`movie`.`movieName` AS `movieName`,`movie`.`movieScore` AS `movieScore`,`movie`.`movieWatch` AS `movieWatch`,`movie`.`movieUpdateDate` AS `movieUpdateDate`,`movie`.`movieLike` AS `movieLike`,`movie`.`movieType` AS `movieType`,`movie`.`movieIntroduction` AS `movieIntroduction` from (`users` join `movie`) where (`users`.`userID` = `movie`.`userID`) ;
