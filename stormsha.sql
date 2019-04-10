/*
Navicat MySQL Data Transfer

Source Server         : DjangoWeb
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : stormsha

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-06-08 18:56:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 邮箱验证码', '8', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 邮箱验证码', '8', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 邮箱验证码', '8', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 轮播图', '9', 'add_banner');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 轮播图', '9', 'change_banner');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 轮播图', '9', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 课程', '10', 'add_course');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 课程', '10', 'change_course');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 课程', '10', 'delete_course');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 章节', '11', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 章节', '11', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 章节', '11', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 视频', '12', 'add_video');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 视频', '12', 'change_video');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 视频', '12', 'delete_video');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 课程资源', '13', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 课程资源', '13', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 课程资源', '13', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 城市', '14', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 城市', '14', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 城市', '14', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 课程机构', '15', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 课程机构', '15', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 课程机构', '15', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 教师', '16', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 教师', '16', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 教师', '16', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户咨询', '17', 'add_userask');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户咨询', '17', 'change_userask');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户咨询', '17', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 课程评论', '18', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 课程评论', '18', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 课程评论', '18', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 用户收藏', '19', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 用户收藏', '19', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 用户收藏', '19', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 用户消息', '20', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 用户消息', '20', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 用户消息', '20', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 用户课程', '21', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 用户课程', '21', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 用户课程', '21', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('64', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('65', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('66', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('67', 'Can view 用户信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('68', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('69', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('70', 'Can view 邮箱验证码', '8', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 轮播图', '9', 'view_banner');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 课程', '10', 'view_course');
INSERT INTO `auth_permission` VALUES ('73', 'Can view 章节', '11', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('74', 'Can view 视频', '12', 'view_video');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 课程资源', '13', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 城市', '14', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('77', 'Can view 课程机构', '15', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('78', 'Can view 教师', '16', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('79', 'Can view 用户咨询', '17', 'view_userask');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 课程评论', '18', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('81', 'Can view 用户收藏', '19', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('82', 'Can view 用户消息', '20', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('83', 'Can view 用户课程', '21', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('84', 'Can add Bookmark', '22', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('85', 'Can change Bookmark', '22', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('86', 'Can delete Bookmark', '22', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('87', 'Can add User Setting', '23', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('88', 'Can change User Setting', '23', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('89', 'Can delete User Setting', '23', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('90', 'Can add User Widget', '24', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('91', 'Can change User Widget', '24', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('92', 'Can delete User Widget', '24', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('93', 'Can view Bookmark', '22', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('94', 'Can view User Setting', '23', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('95', 'Can view User Widget', '24', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('96', 'Can add log entry', '25', 'add_log');
INSERT INTO `auth_permission` VALUES ('97', 'Can change log entry', '25', 'change_log');
INSERT INTO `auth_permission` VALUES ('98', 'Can delete log entry', '25', 'delete_log');
INSERT INTO `auth_permission` VALUES ('99', 'Can view log entry', '25', 'view_log');
INSERT INTO `auth_permission` VALUES ('100', 'Can add captcha store', '26', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('101', 'Can change captcha store', '26', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('102', 'Can delete captcha store', '26', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('103', 'Can view captcha store', '26', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('104', 'Can add revision', '27', 'add_revision');
INSERT INTO `auth_permission` VALUES ('105', 'Can change revision', '27', 'change_revision');
INSERT INTO `auth_permission` VALUES ('106', 'Can delete revision', '27', 'delete_revision');
INSERT INTO `auth_permission` VALUES ('107', 'Can add version', '28', 'add_version');
INSERT INTO `auth_permission` VALUES ('108', 'Can change version', '28', 'change_version');
INSERT INTO `auth_permission` VALUES ('109', 'Can delete version', '28', 'delete_version');
INSERT INTO `auth_permission` VALUES ('110', 'Can view revision', '27', 'view_revision');
INSERT INTO `auth_permission` VALUES ('111', 'Can view version', '28', 'view_version');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('130', 'QQMS', 'qqms', 'c9a3d1c4ca0901568cb1a4698bd369b24104ddd9', '2018-06-02 00:04:01');
INSERT INTO `captcha_captchastore` VALUES ('127', 'DQPB', 'dqpb', 'a557ec5d7a641b9222f6328396c724bb614a2816', '2018-06-02 00:03:18');
INSERT INTO `captcha_captchastore` VALUES ('126', 'KIVL', 'kivl', '87473696deccea937e301e9231197ea6c3fa6bca', '2018-06-02 00:02:42');
INSERT INTO `captcha_captchastore` VALUES ('131', 'TRLF', 'trlf', 'fda3c398614a5a12cbecd72b4176bb0791d93eb7', '2018-06-02 00:04:23');
INSERT INTO `captcha_captchastore` VALUES ('132', 'IGGD', 'iggd', '3c63251e0bac3b5357cf980f55c6aed5da507dfe', '2018-06-02 00:04:25');
INSERT INTO `captcha_captchastore` VALUES ('133', 'IOFS', 'iofs', '0b68d63f7daf310aecc99d87c6f836bf5b9b3862', '2018-06-02 00:04:26');
INSERT INTO `captcha_captchastore` VALUES ('136', 'FUER', 'fuer', '648f69532d5c9499fb19fb57523e70a87ae6d44f', '2018-06-02 00:06:40');
INSERT INTO `captcha_captchastore` VALUES ('137', 'QJZI', 'qjzi', 'd5a4e64acda3ee0101990bc7304e757bb51f59dd', '2018-06-02 00:06:52');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_org_id` int(11),
  `category` varchar(50) NOT NULL,
  `tag` varchar(20) NOT NULL,
  `teacher_id` int(11),
  `teacher_tell` varchar(300) NOT NULL,
  `you_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  KEY `courses_course_d9614d40` (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('1', 'Photoshop', 'Adobe Photoshop，简称“Ps”，是一个由Adobe开发和发行的图像处理软件。', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>Adobe Photoshop</strong>，简称“<strong>Ps</strong>”，是一个由<a href=\"https://zh.wikipedia.org/wiki/Adobe_Systems\" title=\"Adobe Systems\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background: none;\">Adobe</a>开发和发行的<a href=\"https://zh.wikipedia.org/wiki/%E5%9B%BE%E5%83%8F%E5%A4%84%E7%90%86\" title=\"图像处理\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background: none;\">图像处理</a><a href=\"https://zh.wikipedia.org/wiki/%E8%BD%AF%E4%BB%B6\" title=\"软件\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background: none;\">软件</a>。</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);\">2003年，Adobe的<a href=\"https://zh.wikipedia.org/wiki/Creative_Suite\" class=\"mw-redirect\" title=\"Creative Suite\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background: none;\">Creative Suite</a>套装将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，Adobe Photoshop CS6是Adobe Photoshop中的第13个主要版本。对CS更名也导致Adobe众多的软件包降价。</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);\">2013年，Adobe宣布停止Creative Suite的开发，将全面转移到<a href=\"https://zh.wikipedia.org/wiki/Adobe_Creative_Cloud\" title=\"Adobe Creative Cloud\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background: none;\">Adobe Creative Cloud</a>提供服务。而所有程序的下一版都将改名为CC版本。目前此版本已于2013年6月17日公开下载。</p><p><br/> </p>', 'zj', '12', '14', '0', 'courses/2018/06/ps.jpg', '10', '2018-03-12 18:20:00', '8', 'python', 'acm', '1', '可以很好的学习django开发', '需要了解python的基础知识', '0');
INSERT INTO `courses_course` VALUES ('2', 'web开发', '十点十分丰富', '<p>&nbsp; &nbsp; 人物v跟个废物</p>', 'cj', '54', '0', '0', 'courses/2018/06/573web.jpg', '3', '2018-03-12 20:36:00', '5', 'python', 'django', '2', '可以很好的学习django开发', '需要了解python的基础知识', '0');
INSERT INTO `courses_course` VALUES ('3', '水下屏气17分钟', '大卫·布莱恩：我如何做到水下屏气17分钟', '<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">这是在TEDMED里一个非常个人化的演讲，作为魔术师及特技替身演员，大卫 布莱恩讲述了他是如何做到在水下屏气17分钟---一个世界纪录（仅仅比他这个的演讲短一分钟！）---以及这个蔑视死亡的举动对他有怎样的意义。 警告：不要在家里尝试！ (翻译 Xindong Fan, 审译 Peilu Chen)</span></p>', 'cj', '54', '0', '0', 'courses/2018/06/image_2.jpg', '1', '2018-03-12 20:37:00', '2', '知识', '知识', null, '大卫·布莱恩', '大卫·布莱恩', '0');
INSERT INTO `courses_course` VALUES ('4', '大数据', 'admin', 'admin', 'cj', '54', '3', '0', 'courses/2018/05/下载_2_DFgzaRn.png', '27', '2018-03-12 20:38:00', '1', 'python', 'admin', '1', '可以很好的学习django开发', '需要了解python的基础知识', '1');
INSERT INTO `courses_course` VALUES ('5', '史蒂文·斯皮尔伯格演讲', '美国著名导演史蒂文·斯皮尔伯格在历经37年后才完成了大学梦。 本次受邀哈佛大学作为2016年毕业典礼嘉宾讲述自己对大学和学习的看法。编辑整理：网易公开课。', '<p>美国著名导演史蒂文·斯皮尔伯格在历经37年后才完成了大学梦。 本次受邀哈佛大学作为2016年毕业典礼嘉宾讲述自己对大学和学习的看法。编辑整理：网易公开课。</p>', 'gj', '10', '102', '10000', 'courses/2018/06/image_1.jpg', '168', '2018-03-20 20:31:00', '4', '知识', '知识', null, '可以很好的学习django开发', '需要了解python的基础知识', '0');
INSERT INTO `courses_course` VALUES ('6', '零基础学习django', '零基础学习django基础（预告）', '本视频是我下一套视频的一个预告片，下一套视频将会是零基础入门Django系列，该系列第一套课程将会是零基础学习Django博客，通过django框架，教大家如何建立一个自己的博客系统，看好哦，是自己写代码，写出来一个自己的博客哦！', 'cj', '1', '102', '0', 'courses/2018/05/django1.1.jpg', '60', '2018-05-11 12:03:00', '1', 'django', 'django', '1', '可以很好的学习django开发', '需要了解python的基础知识', '0');
INSERT INTO `courses_course` VALUES ('7', 'python', 'python入门', 'Python [1]  （英国发音：/ˈpaɪθən/ 美国发音：/ˈpaɪθɑːn/）, 是一种面向对象的解释型计算机程序设计语言，由荷兰人Guido van Rossum于1989年发明，第一个公开发行版发行于1991年。\r\nPython是纯粹的自由软件， 源代码和解释器CPython遵循 GPL(GNU General Public License)协议。Python语法简洁清晰，特色之一是强制用空白符(white space)作为语句缩进。', 'cj', '50', '3', '0', 'courses/2018/05/下载_2_0lfnb0b.png', '2', '2018-05-12 00:35:00', '1', 'python', 'python', '1', '可以很好的学习django开发', '需要了解python的基础知识', '1');
INSERT INTO `courses_course` VALUES ('8', 'python', 'python入门', 'Python [1]  （英国发音：/ˈpaɪθən/ 美国发音：/ˈpaɪθɑːn/）, 是一种面向对象的解释型计算机程序设计语言，由荷兰人Guido van Rossum于1989年发明，第一个公开发行版发行于1991年。\r\nPython是纯粹的自由软件， 源代码和解释器CPython遵循 GPL(GNU General Public License)协议。Python语法简洁清晰，特色之一是强制用空白符(white space)作为语句缩进。', 'cj', '50', '0', '0', 'courses/2018/05/下载_2_yv0O51G.png', '1', '2018-05-12 00:37:00', '2', 'python', 'python', '1', '可以很好的学习django开发', '需要了解python的基础知识', '1');
INSERT INTO `courses_course` VALUES ('9', 'Python数据分析', 'Python数据分析-90%分析岗位必备', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 32px; text-align: justify; line-height: 27px;\"><span style=\"font-family: 微软雅黑;\">编程语言P</span><span style=\"font-family: 微软雅黑;\">ython</span><span style=\"font-family: 微软雅黑;\">越来越火，</span><span style=\"font-family: 微软雅黑;\">Python在现在计算机快速发展的背景下变得越来越重要，是未来人机交互更加流畅的基础。在2017年Github年度开发者报告里，Python超越Java成为最受开发者欢迎，最常用的编程语言。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 32px; text-align: justify; line-height: 27px;\"><span style=\"font-family: 微软雅黑;\">进可造AI，做开发；退可玩爬虫，理数据；Python是一门神奇胶水网红红红红语言，对它超感兴趣跃跃欲试的小白们，该如何入门学习呢？</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 32px; text-align: justify; line-height: 27px;\"><span style=\"font-family: 微软雅黑;\">学院的Python训练营，设定上更加基础，主要落点是<strong>数据分析相关</strong>的知识点，共有6节课，超全知识点带领大家全面学习<strong>用Python做数据分析</strong>。</span></p><p><br/> </p>', 'cj', '20', '8', '0', 'courses/2018/06/python2.jpg', '6', '2018-05-12 00:44:00', '1', 'django', 'django', '1', '可以很好的学习django开发', '需要了解python的基础知识', '0');
INSERT INTO `courses_course` VALUES ('10', 'java课程', 'java基础', '<p>主要讲解java基础知识</p>', 'cj', '10', '100', '0', 'courses/2018/06/image.jpg', '2', '2018-06-02 00:48:00', '1', 'java', 'java', '1', 'java', 'java', '0');

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_ea134da7` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES ('1', '前端', 'course/resource/2018/04/500.html', '2018-04-30 14:51:00', '4');
INSERT INTO `courses_courseresource` VALUES ('2', '课程源码', 'course/resource/2018/05/时尚中黑简体.ttf', '2018-05-21 23:42:00', '6');
INSERT INTO `courses_courseresource` VALUES ('3', '课程视频', 'course/resource/2018/05/时尚中黑简体_fMT6N5c.ttf', '2018-05-21 23:43:00', '6');

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_ea134da7` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '12', '2018-03-12 18:57:00', '1');
INSERT INTO `courses_lesson` VALUES ('2', '第一章     基础知识', '2018-04-30 14:24:00', '4');
INSERT INTO `courses_lesson` VALUES ('3', '第二章    进阶', '2018-04-30 14:26:00', '4');
INSERT INTO `courses_lesson` VALUES ('6', '2-django的基本结构', '2018-05-21 22:50:00', '6');
INSERT INTO `courses_lesson` VALUES ('5', '1-零基础学习django（预告）', '2018-05-11 19:09:00', '6');
INSERT INTO `courses_lesson` VALUES ('7', '3-个人博客建设项目设计', '2018-05-21 23:35:00', '6');
INSERT INTO `courses_lesson` VALUES ('8', '4-django后台管理系统', '2018-05-21 23:38:00', '6');
INSERT INTO `courses_lesson` VALUES ('9', '5-安全处理', '2018-05-21 23:45:00', '6');

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_55174b7b` (`lesson_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('1', '王健：不破不立的互联网营销', '2018-04-30 14:31:00', '2', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('2', '攻略一：对称化构造', '2018-04-30 14:36:00', '3', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('6', '2.2-urls配置', '2018-05-21 23:33:00', '6', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('4', '1.1-零基础学习django（预告）', '2018-05-11 19:09:00', '5', 'http://7xrpqi.com1.z0.glb.clouddn.com/Sky%20Ferreira%20-%20Easy%20%28Music%20From%20The%20Motion%20Picture%20Baby%20Driver%29.mp4', '1');
INSERT INTO `courses_video` VALUES ('5', '2.1-django项目目录结构', '2018-05-21 23:31:00', '6', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('7', '2.3-运行第一个django项目', '2018-05-21 23:34:00', '6', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('8', '3.1-数据库设计', '2018-05-21 23:36:00', '7', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('9', '3.2-用户中心设计', '2018-05-21 23:36:00', '7', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('10', '3.3-主页设计', '2018-05-21 23:37:00', '7', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('11', '4.1-admin简单了解', '2018-05-21 23:39:00', '8', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('12', '4.2-xadmin的学习使用', '2018-05-21 23:39:00', '8', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('13', '5.1-xss攻击防范', '2018-05-21 23:46:00', '9', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');
INSERT INTO `courses_video` VALUES ('14', '5.2-csrf-token', '2018-05-21 23:46:00', '9', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '0');
INSERT INTO `courses_video` VALUES ('15', '5.3-绕过前台获取数据库数据', '2018-05-21 23:47:00', '9', 'http://7xrpqi.com1.z0.glb.clouddn.com/%E6%9D%8E%E5%AD%9D%E5%88%A9%20-%20Seoul.mp4', '4');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-03-12 13:26:35', '2', 'sxc7', '1', 'Added.', '7', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('9', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('12', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('13', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('14', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('15', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('16', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('17', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('18', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('19', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('20', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('21', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES ('25', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('26', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('27', 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES ('28', 'reversion', 'version');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-03-11 14:23:28');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-03-11 14:23:29');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-03-11 14:23:29');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2018-03-11 14:23:30');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2018-03-11 14:27:31');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0002_emailverifyrecord', '2018-03-11 14:54:24');
INSERT INTO `django_migrations` VALUES ('15', 'users', '0003_auto_20180311_2254', '2018-03-11 14:54:24');
INSERT INTO `django_migrations` VALUES ('16', 'courses', '0001_initial', '2018-03-11 15:37:17');
INSERT INTO `django_migrations` VALUES ('17', 'organization', '0001_initial', '2018-03-12 01:47:25');
INSERT INTO `django_migrations` VALUES ('18', 'organization', '0002_auto_20180312_1007', '2018-03-12 02:07:17');
INSERT INTO `django_migrations` VALUES ('19', 'operation', '0001_initial', '2018-03-12 02:20:34');
INSERT INTO `django_migrations` VALUES ('20', 'users', '0004_auto_20180312_1322', '2018-03-12 13:23:07');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0001_initial', '2018-03-12 14:55:13');
INSERT INTO `django_migrations` VALUES ('22', 'users', '0005_auto_20180312_1611', '2018-03-12 16:12:03');
INSERT INTO `django_migrations` VALUES ('23', 'xadmin', '0002_log', '2018-03-12 16:12:04');
INSERT INTO `django_migrations` VALUES ('24', 'xadmin', '0003_auto_20160715_0100', '2018-03-12 16:12:04');
INSERT INTO `django_migrations` VALUES ('25', 'users', '0006_auto_20180312_1633', '2018-03-12 16:33:32');
INSERT INTO `django_migrations` VALUES ('26', 'users', '0007_auto_20180312_1645', '2018-03-12 16:46:06');
INSERT INTO `django_migrations` VALUES ('27', 'captcha', '0001_initial', '2018-03-14 14:14:33');
INSERT INTO `django_migrations` VALUES ('28', 'courses', '0002_auto_20180314_1414', '2018-03-14 14:14:33');
INSERT INTO `django_migrations` VALUES ('29', 'organization', '0003_auto_20180319_2226', '2018-03-19 22:27:37');
INSERT INTO `django_migrations` VALUES ('30', 'organization', '0004_auto_20180319_2228', '2018-03-19 22:28:51');
INSERT INTO `django_migrations` VALUES ('31', 'organization', '0005_remove_courseorg_category', '2018-03-19 22:30:15');
INSERT INTO `django_migrations` VALUES ('32', 'organization', '0006_courseorg_category', '2018-03-19 22:31:09');
INSERT INTO `django_migrations` VALUES ('33', 'courses', '0003_course_course_org', '2018-03-20 13:30:44');
INSERT INTO `django_migrations` VALUES ('34', 'courses', '0004_course_category', '2018-03-20 19:45:53');
INSERT INTO `django_migrations` VALUES ('35', 'organization', '0007_courseorg_course_nums', '2018-03-20 20:15:57');
INSERT INTO `django_migrations` VALUES ('36', 'courses', '0005_course_tag', '2018-03-20 20:22:58');
INSERT INTO `django_migrations` VALUES ('37', 'organization', '0008_courseorg_students', '2018-03-25 14:57:42');
INSERT INTO `django_migrations` VALUES ('38', 'organization', '0009_teacher_image', '2018-04-19 14:01:31');
INSERT INTO `django_migrations` VALUES ('39', 'courses', '0006_video_url', '2018-04-30 14:30:52');
INSERT INTO `django_migrations` VALUES ('40', 'courses', '0007_video_learn_times', '2018-04-30 14:46:47');
INSERT INTO `django_migrations` VALUES ('41', 'courses', '0008_course_teacher', '2018-04-30 15:04:58');
INSERT INTO `django_migrations` VALUES ('42', 'courses', '0009_auto_20180430_1517', '2018-04-30 15:18:08');
INSERT INTO `django_migrations` VALUES ('43', 'courses', '0010_auto_20180430_1519', '2018-04-30 15:20:03');
INSERT INTO `django_migrations` VALUES ('44', 'organization', '0010_teacher_age', '2018-05-02 18:02:02');
INSERT INTO `django_migrations` VALUES ('45', 'users', '0008_auto_20180506_1444', '2018-05-06 14:44:57');
INSERT INTO `django_migrations` VALUES ('46', 'courses', '0011_course_is_banner', '2018-05-11 13:04:37');
INSERT INTO `django_migrations` VALUES ('47', 'organization', '0011_courseorg_tag', '2018-05-12 00:50:03');
INSERT INTO `django_migrations` VALUES ('48', 'operation', '0002_auto_20180513_1132', '2018-05-13 11:33:09');
INSERT INTO `django_migrations` VALUES ('49', 'operation', '0003_auto_20180513_1617', '2018-05-13 16:18:04');
INSERT INTO `django_migrations` VALUES ('50', 'users', '0009_auto_20180516_1338', '2018-05-16 13:38:42');
INSERT INTO `django_migrations` VALUES ('51', 'courses', '0012_auto_20180516_1710', '2018-05-16 17:10:29');
INSERT INTO `django_migrations` VALUES ('52', 'users', '0010_auto_20180516_2036', '2018-05-16 20:36:26');
INSERT INTO `django_migrations` VALUES ('53', 'operation', '0004_coursecomments_parent_id', '2018-05-16 20:51:32');
INSERT INTO `django_migrations` VALUES ('54', 'operation', '0005_auto_20180516_2055', '2018-05-16 20:55:30');
INSERT INTO `django_migrations` VALUES ('55', 'operation', '0006_auto_20180516_2106', '2018-05-16 21:06:14');
INSERT INTO `django_migrations` VALUES ('56', 'operation', '0007_auto_20180516_2210', '2018-05-16 22:11:15');
INSERT INTO `django_migrations` VALUES ('57', 'operation', '0008_auto_20180516_2226', '2018-05-16 22:27:15');
INSERT INTO `django_migrations` VALUES ('58', 'operation', '0009_auto_20180516_2228', '2018-05-16 22:29:07');
INSERT INTO `django_migrations` VALUES ('59', 'operation', '0010_auto_20180516_2233', '2018-05-16 22:33:42');
INSERT INTO `django_migrations` VALUES ('60', 'operation', '0011_auto_20180516_2234', '2018-05-16 22:34:41');
INSERT INTO `django_migrations` VALUES ('61', 'operation', '0012_remove_coursecomments_reply_to', '2018-05-17 13:25:17');
INSERT INTO `django_migrations` VALUES ('62', 'operation', '0013_coursecomments_reply_to', '2018-05-17 13:32:56');
INSERT INTO `django_migrations` VALUES ('63', 'operation', '0014_auto_20180517_1409', '2018-05-17 14:09:52');
INSERT INTO `django_migrations` VALUES ('64', 'users', '0011_auto_20180521_1459', '2018-05-21 14:59:13');
INSERT INTO `django_migrations` VALUES ('65', 'users', '0012_auto_20180521_1755', '2018-05-21 17:55:18');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('wj782u8rdcb5m2xyl7xk6om438wdx3c2', 'NzFmNDY0NDBhYTZhMTQyNDA0MDUwYTgwNWQ3MzJhMjgwNmIzMjY4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiODAwOTIxOWI5MjE5MzNmMjc3YzJlYWU5YzljNjUyOTJmZDE2MmRlNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-03-30 13:50:32');
INSERT INTO `django_session` VALUES ('ujwf0xmah2vf5uj3xxuf6chy0rq4jyer', 'MDUwMTVlY2Q2MGZiZjM1MzE2ODIzODE0YWUzMmYyMzlmNmE2MTdmYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCJfcF9jb3Vyc2Vfb3JnX19pZF9fZXhhY3Q9MSJdLCJfYXV0aF91c2VyX2hhc2giOiI4MDA5MjE5YjkyMTkzM2YyNzdjMmVhZTljOWM2NTI5MmZkMTYyZGU3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2018-04-11 22:10:38');
INSERT INTO `django_session` VALUES ('t2pzkxnls8pmt7qv8fecml41fcxuuk9m', 'NzA5YTIzN2EyZDNhZjliZjdjYjZlNzIyNDE0ZTBmOTkzODllOGE2NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImxlc3NvbiJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiODAwOTIxOWI5MjE5MzNmMjc3YzJlYWU5YzljNjUyOTJmZDE2MmRlNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-03-26 18:01:32');
INSERT INTO `django_session` VALUES ('zuuq6qz95p6wv6jtw54jr5lcfufflu38', 'NTJhNjAzNmZmYjcxY2YwZDIwOGFkYTczMjc0NGVmN2EyODQ2NzI2NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgwMDkyMTliOTIxOTMzZjI3N2MyZWFlOWM5YzY1MjkyZmQxNjJkZTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-03-28 18:57:16');
INSERT INTO `django_session` VALUES ('u405bu6j1ycyr2oglk6hh2hfjcjwnvsf', 'ZmZlZWVjNjljYWE3OGNjYWY4YTBlMTBmOTc2NDkzYzlhNmM5Mjk5Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJiZDg4YWU3NTZiMjYyOTFlMWU0ZDMxZWYzYjgyYjVmZjE1ZjY1OTU1IiwiX2F1dGhfdXNlcl9pZCI6IjEwIn0=', '2018-05-30 18:18:20');
INSERT INTO `django_session` VALUES ('jaobdyzmqrnuoiznswisw5mfcsmn3ajy', 'YTQ2NTcyNGI1NzhhMzAwMWQxMzgxZjdjN2IwZWU4ZjZlNTBiYzMwNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlOTkxNDRjMzg0YTU3Mjg4Zjg0MjcxYWNmYWViY2NhMjZiZTI4NjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwIn0=', '2018-06-04 14:27:21');
INSERT INTO `django_session` VALUES ('3p8iifzclsk52yddyiddya20h76t7ba8', 'YTQ2NTcyNGI1NzhhMzAwMWQxMzgxZjdjN2IwZWU4ZjZlNTBiYzMwNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlOTkxNDRjMzg0YTU3Mjg4Zjg0MjcxYWNmYWViY2NhMjZiZTI4NjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwIn0=', '2018-06-04 15:29:15');
INSERT INTO `django_session` VALUES ('5cwdrxmks6pqyzc1gq7n7zzz0rkpgrhi', 'YTA1Yzc3MTkxNjUwMTYwNmFhMTc2NmM5MjgxZjQxODhkODM5YzllMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIkxJU1RfUVVFUlkiOltbInVzZXJzIiwiYmFubmVyIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI4ZTk5MTQ0YzM4NGE1NzI4OGY4NDI3MWFjZmFlYmNjYTI2YmUyODYwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2018-06-20 15:36:06');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11),
  `object_id` int(10) unsigned,
  `parent_id` int(11),
  `reply_to_id` int(11),
  `root_id` int(11),
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_e8701ad4` (`user_id`),
  KEY `operation_coursecomments_417f1b1c` (`content_type_id`),
  KEY `operation_coursecomments_6be37982` (`parent_id`),
  KEY `operation_coursecomments_6ec85d95` (`reply_to_id`),
  KEY `operation_coursecomments_493b3ba4` (`root_id`)
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES ('256', '<p>很好</p>', '2018-05-21 23:54:52', '10', '10', '6', null, null, null);
INSERT INTO `operation_coursecomments` VALUES ('260', '<p>老师讲的真好i<img alt=\"yes\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:22px; width:22px\" title=\"yes\" /><img alt=\"yes\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:22px; width:22px\" title=\"yes\" /><img alt=\"heart\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" style=\"height:22px; width:22px\" title=\"heart\" /></p>', '2018-06-02 00:29:33', '10', '10', '6', null, null, null);
INSERT INTO `operation_coursecomments` VALUES ('261', '<p>老师我问题需要解决</p>', '2018-06-02 00:33:42', '10', '10', '6', '256', '10', '256');
INSERT INTO `operation_coursecomments` VALUES ('262', '<p>什么问题啊？<img alt=\"sad\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/sad_smile.png\" style=\"height:22px; width:22px\" title=\"sad\" /></p>', '2018-06-02 00:34:39', '10', '10', '6', '261', '10', '256');

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES ('1', 'stormsha', '13298393221', 'django', '2018-03-28 20:09:45');
INSERT INTO `operation_userask` VALUES ('2', 'stormsha', '13298393221', 'django', '2018-03-28 20:09:45');
INSERT INTO `operation_userask` VALUES ('3', 'stormsha', '13298393221', 'django', '2018-03-28 20:11:13');
INSERT INTO `operation_userask` VALUES ('4', 'stormsha', '13298393221', 'django', '2018-03-28 20:11:13');
INSERT INTO `operation_userask` VALUES ('5', 'stormsha', '13298393221', 'mysql', '2018-03-28 20:13:40');
INSERT INTO `operation_userask` VALUES ('6', 'stormsha', '13298393221', 'mysql', '2018-03-28 20:13:40');
INSERT INTO `operation_userask` VALUES ('7', 'stormsha', '13298393221', 'xadmin', '2018-03-28 20:16:26');
INSERT INTO `operation_userask` VALUES ('8', 'stormsha', '13298393221', 'xadmin', '2018-03-28 20:16:26');
INSERT INTO `operation_userask` VALUES ('9', 'stormsha', '13298393221', 'django', '2018-03-28 20:29:30');
INSERT INTO `operation_userask` VALUES ('10', 'stormsha', '13298393221', 'django', '2018-03-28 20:29:47');
INSERT INTO `operation_userask` VALUES ('11', 'stormsha', '13298393221', 'django', '2018-04-30 12:07:29');
INSERT INTO `operation_userask` VALUES ('12', 'stormsha', '13298393221', 'django', '2018-04-30 12:07:29');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_ea134da7` (`course_id`),
  KEY `operation_usercourse_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES ('1', '2018-03-20 19:56:00', '1', '1');
INSERT INTO `operation_usercourse` VALUES ('2', '2018-03-20 19:59:00', '2', '1');
INSERT INTO `operation_usercourse` VALUES ('3', '2018-03-20 20:00:00', '2', '1');
INSERT INTO `operation_usercourse` VALUES ('4', '2018-04-30 16:25:32', '4', '10');
INSERT INTO `operation_usercourse` VALUES ('5', '2018-04-30 16:57:51', '5', '10');
INSERT INTO `operation_usercourse` VALUES ('6', '2018-05-11 12:12:06', '6', '10');
INSERT INTO `operation_usercourse` VALUES ('7', '2018-05-12 23:09:30', '9', '10');
INSERT INTO `operation_usercourse` VALUES ('8', '2018-06-02 01:09:24', '7', '10');

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES ('60', '2', '2', '2018-06-02 00:23:31', '10');
INSERT INTO `operation_userfavorite` VALUES ('61', '1', '2', '2018-06-07 11:42:14', '10');
INSERT INTO `operation_userfavorite` VALUES ('52', '4', '2', '2018-04-30 13:51:52', '10');
INSERT INTO `operation_userfavorite` VALUES ('51', '5', '1', '2018-04-30 13:51:45', '10');
INSERT INTO `operation_userfavorite` VALUES ('59', '6', '1', '2018-05-29 00:46:37', '10');

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES ('1', '10', '欢迎注册', '1', '2018-05-08 21:04:00');
INSERT INTO `operation_usermessage` VALUES ('2', '10', '是对方是个商人Greg和', '1', '2018-05-08 21:06:00');
INSERT INTO `operation_usermessage` VALUES ('3', '10', '是对方是个商人Greg和', '1', '2018-05-08 21:06:00');
INSERT INTO `operation_usermessage` VALUES ('4', '10', '欢迎注册', '1', '2018-05-08 21:09:00');
INSERT INTO `operation_usermessage` VALUES ('5', '11', '欢迎注册', '0', '2018-06-01 23:58:32');
INSERT INTO `operation_usermessage` VALUES ('6', '12', '欢迎注册', '0', '2018-06-01 23:59:36');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '北京市', '北京市', '2018-03-19 19:43:00');
INSERT INTO `organization_citydict` VALUES ('2', '天津市', '天津市', '2018-03-19 19:43:00');
INSERT INTO `organization_citydict` VALUES ('3', '郑州市', '郑州市', '2018-03-19 19:43:00');
INSERT INTO `organization_citydict` VALUES ('4', '平顶山市', '平顶山市', '2018-03-19 19:44:00');
INSERT INTO `organization_citydict` VALUES ('5', '焦作市', '焦作市', '2018-03-19 19:44:00');
INSERT INTO `organization_citydict` VALUES ('6', '上海市', '上海市', '2018-03-19 19:44:00');
INSERT INTO `organization_citydict` VALUES ('7', '深圳市', '深圳市', '2018-03-19 19:44:00');
INSERT INTO `organization_citydict` VALUES ('8', '杭州', '杭州', '2018-03-19 19:45:00');
INSERT INTO `organization_citydict` VALUES ('9', '洛阳', '洛阳', '2018-03-19 19:47:00');
INSERT INTO `organization_citydict` VALUES ('10', '开封市', '古都', '2018-03-19 22:02:00');
INSERT INTO `organization_citydict` VALUES ('11', '西安', '西安是中华文明和中华民族重要发祥地。', '2018-05-11 16:30:00');
INSERT INTO `organization_citydict` VALUES ('12', '成都', '成都，简称蓉，别称蓉城、锦城，是四川省省会，西南地区唯一一个副省级市，特大城市', '2018-05-11 17:03:00');
INSERT INTO `organization_citydict` VALUES ('13', '美国马萨诸塞州', '哈佛大学（Harvard University），简称哈佛，坐落于美国马萨诸塞州波士顿都市区剑桥市', '2018-05-11 17:12:00');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseorg_c7141997` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('1', '河南理工大学', '河南理工大学（Henan Polytechnic University）位于河南省焦作市，是中国第一所矿业高等学府、河南省建立最早的高等学校，为河南省与国家安全生产监督管理总局共建高校、河南省属重点大学。入选国家“中西部高校基础能力建设工程” 、“卓越工程师教育培养计划”，教育部本科教学工作水平评估优秀学校。\r\n学校前身是1909年由英国福公司兴办的焦作路矿学堂，历经河南福中矿务学校、福中矿务专门学校、福中矿务大学、私立焦作工学院、西北工学院、国立焦作工学院、焦作矿业学院等历史时期，1995年恢复焦作工学院校名，2004年更名为河南理工大学。2002年后相继获得博士学位授予权、入选省重点建设骨干高校。\r\n截至2017年6月，学校占地面积4100余亩，建筑面积140余万平方米，教学科研仪器设备总值近5.25亿元；开设22个教学学院和1所独立学院，设有75个本科专业，5个博士后科研流动站、4个一级学科博士点、32个二级学科（方向）博士点、18个一级学科硕士点、119个二级学科（方向）硕士点、4个硕士专业学位点，在17个工程领域招收培养工程硕士；现有教职工2676人，有全日制在校生约36000人，其中研究生4000多人。', '100', '9999', 'org/2018/05/images_1.jpg', '河南省焦作市', '2018-03-19 19:55:00', '5', 'gx', '5', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('2', '郑州大学', '郑州大学（Zhengzhou University），简称“郑大”，是中华人民共和国教育部与河南省人民政府共建全国重点大学，首批国家“双一流”世界一流大学、“211工程”、中西部“一省一校”重点建设高校、“海外高层次人才引进计划”、“中西部高校综合实力提升工程”，“卓越工程师教育培养计划”、“卓越法律人才教育培养计划”、“卓越医生教育培养计划”、“国家建设高水平大学公派研究生项目”、“国家大学生创新性实验计划”入选高校，拥有国家大学科技园，具有自主招生资格。\r\n郑州大学医科教育源于1928年的国立第五中山大学，1952年河南医学院独立建院，开启了河南医学高等教育的先河，1984年，定名为河南医科大学；原郑州大学创建于1956年，是新中国创办的第一所综合性大学，1961年，郑州师范学院并入，1991年，黄河大学并入，1992年，河南体育专科学校并入；郑州工业大学成立于1963年，是原化工部直属的重点院校，1973年，河南农业大学粮油工业系并入;2000年7月，原郑州大学、郑州工业大学和河南医科大学三校合并组建新郑州大学。\r\n截至2017年9月，郑州大学占地面积5700余亩，校本部包括主校区、南校区、北校区、东校区4个校区；有全日制本科生5.5万余人、各类研究生1.5万余人，留学生1800余人；有教职工5700余人，其中两院院士、学部委员10人、海外院士3人、长江学者7人；设有47个院（系），9个附属医院，113个本科专业；拥有55个一级学科硕士点，21个一级学科博士点，24个博士后科研流动站。', '0', '0', 'org/2018/05/timg.jpg', '河南省郑州市', '2018-03-19 20:00:00', '3', 'pxjg', '2', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('3', '上海交大', '上海交通大学（Shanghai Jiao Tong University），简称“上海交大”，位于中国直辖市上海，是中华人民共和国教育部直属并与上海市共建的全国重点大学，位列“985工程”、“211工程”、“世界一流大学建设高校”，入选“珠峰计划”、“111计划”、“2011计划”、“卓越医生教育培养计划”、“卓越法律人才教育培养计划”、“卓越工程师教育培养计划”、“卓越农林人才教育培养计划”，为九校联盟、中国大学校长联谊会、Universitas 21、21世纪学术联盟的重要成员。\r\n学校创建于1896年，原名南洋公学，是中国高等教育的多个源头之一；1911年更名为“南洋大学堂”，1929年更名为“国立交通大学”，1949年更名为“交通大学”；1955年，学校迁往西安，分为交通大学上海部分和西安部分；1959年两部分独立建制，上海部分启用“上海交通大学”校名；1999年，原上海农学院并入学校；2005年，学校与原上海第二医科大学合并为新的上海交通大学。 [1-2]', '0', '0', 'org/2018/05/timg_6.jpg', '上海', '2018-03-19 20:50:00', '6', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('4', '北京大学', '北京大学，简称“北大”，诞生于1898年，初名京师大学堂，是中国近代第一所国立大学，也是最早以“大学”之名创办的学校，其成立标志着中国近代高等教育的开端。北大是中国近代以来唯一以国家最高学府身份创立的学校，最初也是国家最高教育行政机关，行使教育部职能，统管全国教育。北大催生了中国最早的现代学制，开创了中国最早的文科、理科、社科、农科、医科等大学学科，是近代以来中国高等教育的奠基者。[1] \r\n1912年5月3日，京师大学堂改称北京大学校，严复为首任校长。[2]  1916年，蔡元培出任校长，“循思想自由原则、取兼容并包之义”，把北大办成全国学术和思想中心，使北大成为新文化运动中心、五四运动策源地。1937年抗日战争爆发，北大与清华大学、南开大学南迁长沙，组成国立长沙临时大学。不久迁往昆明，改称国立西南联合大学。1946年10月在北平复学。[1]  1952年院系调整，校园从内城沙滩红楼迁至西北郊燕园。[3-4] \r\n北大由教育部直属，中央直管副部级建制，是国家双一流[5]  、211工程[1]  、985工程[1]  、2011计划重点建设的全国重点大学；是九校联盟（C9）[6]  及中国大学校长联谊会、亚洲大学联盟[7]  、东亚研究型大学协会、国际研究型大学联盟、环太平洋大学联盟、东亚四大学论坛、国际公立大学论坛、中俄综合性大学联盟[8]  重要成员。[9-11] \r\n北大始终与国家民族的命运紧密相连，聚集了许多学者专家，培养了众多优秀人才，创造了大批重大科学成果，影响和推动了中国近现代思想理论、科学技术、文化教育和社会发展的进程。', '100', '100', 'org/2018/05/timg_5.jpg', '北京', '2018-03-19 22:03:00', '1', 'pxjg', '1', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('5', '南开大学', '南开大学（Nankai University, NKU），简称“南开”[1]  ，肇始于1904年，正式成立于1919年，是由严修、张伯苓秉承教育救国理念创办的综合性大学。1937年校园遭侵华日军炸毁，学校南迁，与北京大学、清华大学在湖南长沙合组国立长沙临时大学，1938年迁往云南昆明，长沙临时大学更名为国立西南联合大学 [2]  ，为中华民族振兴和国家富强作出了不可磨灭的重要贡献。[3]  1946年回天津复校并改为国立。新中国成立后，经历高等学校院系调整，成为文理并重的全国重点大学。\r\n南开大学由中华人民共和国教育部直属，位列国家“双一流”、“211工程”和“985工程”，入选首批“2011计划”、“111计划”、“珠峰计划”、“卓越法律人才教育培养计划”、“教育部来华留学示范基地”，被誉为“学府北辰”。\r\n“渤海之滨，白河之津；汲汲骎骎，月异日新”，南开大学秉承“允公允能、日新月异”之校训，弘扬“爱国敬业、创新乐群”的光荣传统和“文以治国、理以强国、商以富国”的理念，正在向建成世界一流大学的宏伟目标阔步前进。', '1000', '100', 'org/2018/05/timg_7.jpg', '天津', '2018-03-19 22:04:00', '2', 'gx', '1', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('6', '天津大学', '天津大学（TianjinUniversity），简称“天大”，坐落于历史文化名城、中国北方经济中心天津，其前身为北洋大学，始建于1895年10月2日，是中国第一所现代大学，开中国现代高等教育之先河，素以“实事求是”的校训、“严谨治学”的校风和“爱国奉献”的传统享誉海内外。1951年,北洋大学与河北工学院合并定名为“天津大学”，沿用至今。\r\n天津大学是1959年中共中央首批确定的16所国家重点大学之一，国家教育部、天津市、国家海洋局共建高校，位列国家“双一流”、“211工程”、“985工程”、“2011计划”、“111计划” 、“卓越工程师教育培养计划”首批重点建设大学，“卓越大学联盟”成员高校，“中欧工程教育平台”、“中俄工科大学联盟”合作高校，中国著名的“建筑老八校”之一。 [1-2]', '100', '140', 'org/2018/05/timg_3.jpg', '天津市', '2018-03-19 22:06:00', '2', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('7', '北京邮电大学', '北京邮电大学（Beijing University of Posts and Telecommunications），简称北邮，是中华人民共和国教育部直属，工业和信息化部共建的一所以信息科技为特色，工学门类为主体，管理学、文学、理学等多个学科门类协调发展的全国重点大学，是北京高科大学联盟成员高校 [1]  、国家首批“双一流”世界一流学科建设高校 [2]  。系国家“211工程”、“985工程优势学科创新平台”项目重点建设，列入首批“卓越工程师教育培养计划”、“111计划”。被誉为“中国信息科技人才的摇篮”。 [3]', '41', '41', 'org/2018/05/timg_2.jpg', '河南洛阳', '2018-03-19 22:07:00', '1', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('9', '西安电子科技大学', '西安电子科技大学（Xidian University），简称“西电”或“西军电”，是中华人民共和国教育部直属的全国重点大学，由教育部与工信部、国防科技工业局、中国电子科技集团公司、陕西省、西安市共建 [1-4]  。是1959年首批20所全国重点大学、世界一流学科建设高校、北京高科大学联盟成员高校之一 [5]  ，入选国家首批“211工程”、“985工程优势学科创新平台”、“2011计划”、“111计划”、“卓越工程师教育培养计划”，是中国电子信息领域科学研究和人才培养的核心基地，中国雷达、信息论、密码学、电子对抗、微波天线等学科的发源地。\r\n学校前身是1931年诞生于江西瑞金的中央军委无线电学校，先后经历中央军委无线电通信学校、华北军区电讯工程专科学校、中国人民革命军事委员会工程学校、中国人民解放军通信工程学院等办学时期，1958年迁址西安，1966年转为地方建制，更名为西北电讯工程学院；1988年更名为西安电子科技大学。2017年9月，入围“双一流”一流学科建设高校名单。 [6-7]', '10', '0', 'org/2018/05/timg_4.jpg', '陕西西安', '2018-05-11 16:24:00', '11', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('8', '复旦大学', '复旦大学（Fudan University），简称“复旦”，位于中国上海，由中华人民共和国教育部直属，中央直管副部级建制，位列985工程、211工程、双一流A类，入选“珠峰计划”、“111计划”、“2011计划”、“卓越医生教育培养计划”，为“九校联盟”（C9）、中国大学校长联谊会、东亚研究型大学协会、环太平洋大学协会的重要成员，是一所世界知名、国内顶尖的全国重点大学。 [1-2]', '0', '0', 'org/2018/05/下载.png', '上海', '2018-03-19 22:09:00', '6', 'gx', '1', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('10', '慕课网', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。 [1]', '0', '0', 'org/2018/05/timg_8.jpg', '北京', '2018-05-11 16:42:00', '1', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('11', '网易公开课', '网易正式推出“全球名校视频公开课项目” ，首批1200集课程上线，其中有200多集配有中文字幕。用户可以在线免费观看来自于哈佛大学等世界级名校的公开课课程，可汗学院，TED等教育性组织的精彩视频，内容涵盖人文、社会、艺术、科学、金融等领域。 网易公开课，力求为爱学习的网友创造一个公开的免费课程平台，借此向外界公开招聘兼职字幕翻译。网易公开课翻译平台目的是秉承互联网精神：开放、平等、协作、分享，让知识无国界！', '0', '0', 'org/2018/05/timg_9.jpg', '北京', '2018-05-11 16:47:00', '1', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('12', 'stormsha', '多年从事python项目开发', '0', '0', 'org/2018/05/timg_10.jpg', '上海', '2018-05-11 16:53:00', '6', 'gr', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('13', '电子科技大学', '电子科技大学（University of Electronic Science and Technology of China）简称“电子科大”，坐落于有“天府之国”之称的成都市，由中华人民共和国教育部直属，为教育部 、工信部 、四川省人民政府重点共建，位列“世界一流大学建设高校”、“211工程”、“985工程”，入选国家“2011计划”、“111计划”、“卓越工程师教育培养计划”，两电一邮成员，设有研究生院，是一所以电子信息科学技术为核心、以工为主，理工渗透，理、工、管、文协调发展的多科性研究型全国重点大学，被誉为“中国电子类院校的排头兵”。 [1-2] \r\n电子科技大学原名成都电讯工程学院，是1956年在周恩来总理的亲自部署下，由交通大学（现上海交通大学、西安交通大学）、南京工学院（现东南大学）、华南工学院（现华南理工大学）的电讯工程有关专业合并创建而成。1960年，被中共中央列为全国重点高等学校；1961年，被中共中央确定为七所国防工业院校之一。1988年，更名为电子科技大学。1997年，被确定为国家首批“211工程”建设的重点大学。2000年，由原信息产业部主管划转为教育部主管。2001年，进入国家“985工程”重点建设大学行列。', '0', '0', 'org/2018/05/timg_11.jpg', '北京', '2018-05-11 17:02:00', '1', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('14', '浙江大学', '浙江大学（Zhejiang University），简称“浙大”，坐落于“人间天堂”杭州。前身是1897年创建的求是书院，是中国人自己最早创办的新式高等学校之一。1928年定名为浙江大学。国民党执政时期，浙江大学在竺可桢老校长的带领下，崛起为中华民国最高学府之一，被英国科学史家李约瑟誉为“东方剑桥”，迎来了浙大百年校史中最辉煌的时期。竺可桢老校长因其历史贡献，成为了浙大校史中最伟大的人，并为浙大确立了“求是”校训和文言文《浙江大学校歌》。\r\n浙江大学由教育部直属、中央直管（副部级建制），是中国著名顶级学府之一，中国“学科最齐全”、“学生创业率最高”的大学，位列国家首批“211工程”、“985工程”、“双一流”A类重点建设的高校，是首批20所学位自主审核高校之一，为九校联盟（C9）、环太平洋大学联盟、世界大学联盟、中国大学校长联谊会成员，是入选“珠峰计划”、“2011计划”、“111计划”、“卓越法律人才教育培养计划”、“卓越工程师教育培养计划”、“卓越医生教育培养计划”、“卓越农林人才教育培养计划”全国重点大学。', '0', '0', 'org/2018/05/timg_12.jpg', '浙江省', '2018-05-11 17:06:00', '8', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('15', '哈弗大学', '哈佛大学（Harvard University），简称哈佛，坐落于美国马萨诸塞州波士顿都市区剑桥市，是一所享誉世界的私立研究型大学，是著名的常春藤盟校成员。截止2018年3月，这里走出了8位美利坚合众国总统，157位诺贝尔奖得主（世界第一） [1-2]  、18位菲尔兹奖得主（世界第一） [3-4]  、14位图灵奖得主（世界第四） [5-6]  曾在此工作或学习，其在文学、医学、法学、商学等多个领域拥有崇高的学术地位及广泛的影响力，被公认为是当今世界最顶尖的高等教育机构之一 [7]  。\r\n哈佛同时也是美国本土历史最悠久的高等学府，其诞生于1636年，最早由马萨诸塞州殖民地立法机关创建，初名新市民学院，是为了纪念在成立初期给予学院慷慨支持的约翰·哈佛牧师。学校于1639年3月更名为哈佛学院。1780年，哈佛学院正式改称哈佛大学。截止2017年，学校有本科生6700余人，硕士及博士研究生15250余人 [7]  。', '0', '0', 'org/2018/05/timg_14.jpg', '美国', '2018-05-11 17:13:00', '13', 'gx', '0', '0', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('16', '河南理工大学万方学院', '万方学院是河南理工大学老校区也称作北校区', '100', '100', 'org/2018/06/8435e5dde71190efa035138fce1b9d16fcfa6090.jpg', '焦作', '2018-06-02 00:56:00', '5', 'gx', '10', '100', '全国知名');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_9cf869aa` (`org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES ('1', 'stormsha', '5', '河南理工大学', '讲师', '风趣', '113', '100', '2018-03-28 20:32:00', '1', 'teacher/2018/04/haust.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('2', '孙颖超', '1', '学生', 'xxx', 'xxx', '1', '0', '2018-03-28 20:34:00', '1', 'teacher/2018/04/QQ图片20180308222124.gif', '18');
INSERT INTO `organization_teacher` VALUES ('3', 'stormsha', '0', '讲师', '讲师', '幽默', '0', '0', '2018-04-26 11:55:00', '2', 'teacher/2018/04/haust_RN0t2QC.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('4', 'stormsha', '0', '讲师', '讲师', '风趣', '0', '0', '2018-04-26 11:55:00', '3', 'teacher/2018/04/hncj.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('5', 'stormsha', '0', '讲师', '讲师', '幽默', '0', '0', '2018-04-26 11:56:00', '4', 'teacher/2018/04/zzu.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('6', 'stormsha', '0', '讲师', '讲师', '风趣', '0', '0', '2018-04-26 11:56:00', '5', 'teacher/2018/04/hdu.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('7', 'stormsha', '0', '讲师', '讲师', '风趣', '0', '0', '2018-04-26 11:56:00', '6', 'teacher/2018/04/1.png', '18');
INSERT INTO `organization_teacher` VALUES ('8', 'stormsha', '0', '讲师', '讲师', '风趣', '0', '0', '2018-04-26 11:57:00', '7', 'teacher/2018/04/hpu.jpg', '18');
INSERT INTO `organization_teacher` VALUES ('9', 'stormsha', '0', '讲师', '讲师', '风趣', '0', '0', '2018-04-26 11:57:00', '8', 'teacher/2018/04/hdu_hZSPqgR.jpg', '18');

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reversion_revision
-- ----------------------------

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reversion_version
-- ----------------------------

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '第一个', 'banner/2018/05/D8G54712N2E0.png', 'https://open.163.com/', '1', '2018-05-11 14:34:00');
INSERT INTO `users_banner` VALUES ('2', '第二个', 'banner/2018/06/9e602cc615b4404a92f2031afb9c141420180404094638.jpeg', 'https://open.163.com/', '2', '2018-05-11 14:40:00');
INSERT INTO `users_banner` VALUES ('3', '第三个', 'banner/2018/05/D8G54712N2E0_oJBKoM2.png', 'https://open.163.com/', '3', '2018-05-11 14:40:00');
INSERT INTO `users_banner` VALUES ('4', '第四个', 'banner/2018/06/2d6346f4d86540339bea489f5291ec6720180416092743.jpeg', 'https://open.163.com/', '4', '2018-05-11 14:41:00');
INSERT INTO `users_banner` VALUES ('5', '第五个', 'banner/2018/05/D8G54712N2E0_LQgiekQ.png', 'https://open.163.com/', '5', '2018-05-11 14:41:00');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(20) NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('2', 'admin', '13246@qq.com', 'register', '2018-03-12 16:54:00');
INSERT INTO `users_emailverifyrecord` VALUES ('3', '123', '1235@qq.com', 'register', '2018-03-12 17:08:00');
INSERT INTO `users_emailverifyrecord` VALUES ('4', 'CVmN08T6edVtOVnD', 'stormsha@sina.com', 'register', '2018-03-14 16:49:24');
INSERT INTO `users_emailverifyrecord` VALUES ('5', 'TPa5YQ5h8ESUILAt', 'stormsha@sina.com', 'register', '2018-03-14 19:31:09');
INSERT INTO `users_emailverifyrecord` VALUES ('6', 'a22LFSlXGpomYDHn', 'stormsha@sina.com', 'forget', '2018-03-15 11:19:09');
INSERT INTO `users_emailverifyrecord` VALUES ('7', '1k71GWkG9XoGpLv5', 'sxc@qq.com', 'register', '2018-03-15 15:20:15');
INSERT INTO `users_emailverifyrecord` VALUES ('8', 'Z2kKVQ3b2RlOdnyO', '1414749109@qq.com', 'forget', '2018-03-16 15:01:48');
INSERT INTO `users_emailverifyrecord` VALUES ('9', 'vUcnjoIc1yPc6Lok', '1414749109@qq.com', 'register', '2018-04-16 12:48:40');
INSERT INTO `users_emailverifyrecord` VALUES ('10', 'Jw0a8VkFx9oBBdLw', '1414749109@qq.com', 'register', '2018-04-16 12:52:23');
INSERT INTO `users_emailverifyrecord` VALUES ('11', 'P0Kbsq92edsV8kig', '14147491@qq.com', 'register', '2018-04-16 12:58:05');
INSERT INTO `users_emailverifyrecord` VALUES ('12', 'Zy8d', 'stormsha@sina.com', 'update_ema', '2018-05-21 15:46:13');
INSERT INTO `users_emailverifyrecord` VALUES ('13', 'szBk', 'stormsha@sina.com', 'update_ema', '2018-05-21 15:46:30');
INSERT INTO `users_emailverifyrecord` VALUES ('14', 'iRdQ', 'stormsha@sina.com', 'update_ema', '2018-05-21 15:48:09');
INSERT INTO `users_emailverifyrecord` VALUES ('15', 'ntvi', 'stormsha@sina.com', 'update_ema', '2018-05-21 15:48:32');
INSERT INTO `users_emailverifyrecord` VALUES ('16', 'kISg', 'stormsha@sina.com', 'update_ema', '2018-05-21 15:48:33');
INSERT INTO `users_emailverifyrecord` VALUES ('17', 'nvwP', 'stormsha@sina.com', 'update_ema', '2018-05-21 15:48:34');
INSERT INTO `users_emailverifyrecord` VALUES ('18', 'CsqD', 'stormsha@sina.com', 'update_ema', '2018-05-21 15:48:35');
INSERT INTO `users_emailverifyrecord` VALUES ('19', 'tLlJ', 'stormsha@sina.com', 'update_ema', '2018-05-21 16:42:34');
INSERT INTO `users_emailverifyrecord` VALUES ('20', 'N9Q7', 'stormsha@sina.com', 'update_ema', '2018-05-21 16:45:16');
INSERT INTO `users_emailverifyrecord` VALUES ('21', 'WlLZ', 'stormsha@sina.com', 'update_ema', '2018-05-21 16:47:06');
INSERT INTO `users_emailverifyrecord` VALUES ('22', '14uG', 'stormsha@sina.com', 'update_ema', '2018-05-21 16:48:33');
INSERT INTO `users_emailverifyrecord` VALUES ('23', 'XLGP', 'stormsha@sina.com', 'update_ema', '2018-05-21 16:49:48');
INSERT INTO `users_emailverifyrecord` VALUES ('24', 'vD4H', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:01:03');
INSERT INTO `users_emailverifyrecord` VALUES ('25', 'OXya', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:03:47');
INSERT INTO `users_emailverifyrecord` VALUES ('26', 'M4nd', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:04:43');
INSERT INTO `users_emailverifyrecord` VALUES ('27', 'twOf', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:31:03');
INSERT INTO `users_emailverifyrecord` VALUES ('28', 'Ls92', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:31:08');
INSERT INTO `users_emailverifyrecord` VALUES ('29', 'U4Rm', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:31:09');
INSERT INTO `users_emailverifyrecord` VALUES ('30', '8cyQ', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:31:11');
INSERT INTO `users_emailverifyrecord` VALUES ('31', 'fvBq', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:31:12');
INSERT INTO `users_emailverifyrecord` VALUES ('32', '3SQn', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:32:03');
INSERT INTO `users_emailverifyrecord` VALUES ('33', '5dxZ', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:32:06');
INSERT INTO `users_emailverifyrecord` VALUES ('34', '29yG', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:34:38');
INSERT INTO `users_emailverifyrecord` VALUES ('35', 'PXIH', '13298393221@163.com', 'update_ema', '2018-05-21 17:43:15');
INSERT INTO `users_emailverifyrecord` VALUES ('36', 'eMJb', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:45:19');
INSERT INTO `users_emailverifyrecord` VALUES ('37', 'tiw3', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:45:20');
INSERT INTO `users_emailverifyrecord` VALUES ('38', 'vTWO', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:46:14');
INSERT INTO `users_emailverifyrecord` VALUES ('39', 'H5AK', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:46:40');
INSERT INTO `users_emailverifyrecord` VALUES ('40', '5p5H', 'stormsha@sina.com', 'update_ema', '2018-05-21 17:47:12');
INSERT INTO `users_emailverifyrecord` VALUES ('41', 'akF4', 'stormsha@sina.com', 'update_email', '2018-05-21 17:55:42');
INSERT INTO `users_emailverifyrecord` VALUES ('42', 'wZ3k', 'stormsha@sina.com', 'update_email', '2018-05-21 17:57:56');
INSERT INTO `users_emailverifyrecord` VALUES ('43', '0Bar', 'stormsha@sina.com', 'update_email', '2018-05-21 18:00:42');
INSERT INTO `users_emailverifyrecord` VALUES ('44', 'UKxtqbPEJPCE6xqp', '14749109@qq.com', 'register', '2018-06-01 23:58:32');
INSERT INTO `users_emailverifyrecord` VALUES ('45', 'b4UExVHnJycRd9el', '1414749109@sina.com', 'register', '2018-06-01 23:59:36');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('9', 'pbkdf2_sha256$24000$FNjv3tDDTAuw$EuIUMSfr2jTkLPuIrwrE1IKKczpotYR0KTLxQn4YVrc=', null, '0', '14147491@qq.com', '', '', '14147491@qq.com', '0', '0', '2018-04-16 12:58:05', '', null, 'female', '', null, 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('2', 'admin', '2018-03-12 13:17:00', '0', 'sxc7', 'sxc7', '', '', '0', '1', '2018-03-12 13:16:00', 'sxc7', '2018-03-12', 'female', '郑州', '', 'image/2018/05/mayun.png');
INSERT INTO `users_userprofile` VALUES ('5', 'pbkdf2_sha256$24000$7uvpWJcKy3M9$pwEmAEV1SQaWEFWxfrBWEGi0Su1X8LhL/y89olzLav4=', '2018-04-16 13:14:11', '0', 'stormsha@sina.com', '', '', 'stormsha@sina1.com', '0', '1', '2018-03-14 19:31:09', '', null, 'female', '', null, 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('6', 'pbkdf2_sha256$24000$UHup4pvxzUfb$/llB6DCbJ8D8g+b872BvKcg7xpWp9fD37Eofv64G+YA=', null, '0', 'sxc@qq.com', '', '', 'sxc@qq.com', '0', '0', '2018-03-15 15:20:15', '', null, 'female', '', null, 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('8', 'pbkdf2_sha256$24000$8q5qMxhcaEP0$Xcb8J5EdXM7IrWU859uGDv0hZ6vD20AFFbZyqyYrYh0=', null, '0', '1414749109@qq.com', '', '', '1414749109@qq.com', '0', '0', '2018-04-16 12:52:23', '', null, 'female', '', null, 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('10', 'pbkdf2_sha256$24000$Bxhn9Kg05jWe$cOJ9I+9piS0vKJASeMaXeEi5yhvk61K+DFIjFngbhhc=', '2018-06-04 16:53:27', '1', 'stormsha', '', '', '1414749109@qq.com', '1', '1', '2018-04-16 17:49:01', 'stormsha', '2018-05-23', 'male', '焦作', '13298393221', 'image/2018/05/18813743462949033.jpg');
INSERT INTO `users_userprofile` VALUES ('11', 'pbkdf2_sha256$24000$j8g4mO542ne8$Jn8aUevZp6xkkBnU4D3rhOZyDed0A51qzi6eQMzB4H8=', null, '0', '14749109@qq.com', '', '', '14749109@qq.com', '0', '0', '2018-06-01 23:58:32', '', null, 'female', '', null, 'media/image/upload.png');
INSERT INTO `users_userprofile` VALUES ('12', 'pbkdf2_sha256$24000$iB9wNMdSOvfp$aJDrgSylMHSWcw9AGi7EigpwYeETdVVeZlK4E2eaUV0=', null, '0', '1414749109@sina.com', '', '', '1414749109@sina.com', '0', '0', '2018-06-01 23:59:36', '', null, 'female', '', null, 'media/image/upload.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_9c2a73e9` (`userprofile_id`),
  KEY `users_userprofile_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_user_permissions_9c2a73e9` (`userprofile_id`),
  KEY `users_userprofile_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_417f1b1c` (`content_type_id`),
  KEY `xadmin_bookmark_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------
INSERT INTO `xadmin_bookmark` VALUES ('1', '验证码', 'xadmin:users_emailverifyrecord_changelist', '_q_=admin', '0', '8', '1');

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_417f1b1c` (`content_type_id`),
  KEY `xadmin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-03-12 16:18:08', '127.0.0.1', '3', '412', 'create', '已添加', '7', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2018-03-12 16:46:37', '127.0.0.1', '1', 'EmailVerifyRecord object', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2018-03-12 16:51:04', '127.0.0.1', null, '', 'delete', '批量删除 1 个 邮箱验证码', null, '1');
INSERT INTO `xadmin_log` VALUES ('4', '2018-03-12 16:54:51', '127.0.0.1', '2', 'admin13246@qq.com', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2018-03-12 17:08:45', '127.0.0.1', '3', '123(1235@qq.com)', 'create', '已添加', '8', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2018-03-12 18:21:32', '127.0.0.1', '1', 'Course object', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2018-03-12 18:57:21', '127.0.0.1', '1', 'Lesson object', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2018-03-12 18:57:29', '127.0.0.1', '1', 'Lesson object', 'change', '没有字段被修改。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2018-03-12 20:37:44', '127.0.0.1', '2', 'course', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2018-03-12 20:38:03', '127.0.0.1', '3', 'course', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2018-03-12 20:38:25', '127.0.0.1', '4', 'course', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2018-03-19 19:43:32', '127.0.0.1', '1', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2018-03-19 19:43:51', '127.0.0.1', '2', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2018-03-19 19:44:13', '127.0.0.1', '3', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2018-03-19 19:44:24', '127.0.0.1', '4', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2018-03-19 19:44:36', '127.0.0.1', '5', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2018-03-19 19:44:46', '127.0.0.1', '6', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2018-03-19 19:44:59', '127.0.0.1', '7', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2018-03-19 19:45:17', '127.0.0.1', '8', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2018-03-19 19:47:30', '127.0.0.1', '9', 'CityDict object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2018-03-19 19:56:04', '127.0.0.1', '1', 'CourseOrg object', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2018-03-19 19:59:51', '127.0.0.1', '1', 'CourseOrg object', 'change', '已修改 image 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2018-03-19 20:04:08', '127.0.0.1', '2', 'CourseOrg object', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2018-03-19 20:52:56', '127.0.0.1', '3', 'CourseOrg object', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2018-03-19 22:02:52', '127.0.0.1', '10', '开封市', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2018-03-19 22:03:05', '127.0.0.1', '3', '开封大学', 'change', '已修改 city 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2018-03-19 22:04:53', '127.0.0.1', '4', '北京大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2018-03-19 22:06:08', '127.0.0.1', '5', '南开大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2018-03-19 22:07:52', '127.0.0.1', '6', '河南城建学院', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2018-03-19 22:09:20', '127.0.0.1', '7', '河南洛阳', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2018-03-19 22:10:33', '127.0.0.1', '8', '杭州电子科技大学', 'create', '已添加', '15', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2018-03-19 22:11:00', '127.0.0.1', '1', '河南理工大学', 'change', '已修改 city 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2018-03-20 19:56:50', '127.0.0.1', '1', 'UserCourse object', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2018-03-20 20:00:30', '127.0.0.1', '3', 'stormsha', 'create', '已添加', '21', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2018-03-20 20:32:31', '127.0.0.1', '5', 'django', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2018-03-20 20:33:24', '127.0.0.1', '1', '下延安', 'change', '已修改 tag 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2018-03-28 20:33:40', '127.0.0.1', '1', 'stormsha', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2018-03-28 20:35:05', '127.0.0.1', '2', '孙颖超', 'create', '已添加', '16', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2018-03-28 20:39:39', '127.0.0.1', '5', 'django', 'change', '已修改 course_org 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2018-03-28 20:42:41', '127.0.0.1', '4', 'course', 'change', '已修改 course_org 和 tag 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2018-04-19 14:02:27', '127.0.0.1', '2', '孙颖超', 'change', '已修改 image 。', '16', '10');
INSERT INTO `xadmin_log` VALUES ('42', '2018-04-19 14:02:51', '127.0.0.1', '1', 'stormsha', 'change', '已修改 image 。', '16', '10');
INSERT INTO `xadmin_log` VALUES ('43', '2018-04-26 11:55:29', '127.0.0.1', '3', 'stormsha', 'create', '已添加', '16', '10');
INSERT INTO `xadmin_log` VALUES ('44', '2018-04-26 11:56:10', '127.0.0.1', '4', 'stormsha', 'create', '已添加', '16', '10');
INSERT INTO `xadmin_log` VALUES ('45', '2018-04-26 11:56:29', '127.0.0.1', '5', 'stormsha', 'create', '已添加', '16', '10');
INSERT INTO `xadmin_log` VALUES ('46', '2018-04-26 11:56:45', '127.0.0.1', '6', 'stormsha', 'create', '已添加', '16', '10');
INSERT INTO `xadmin_log` VALUES ('47', '2018-04-26 11:57:03', '127.0.0.1', '7', 'stormsha', 'create', '已添加', '16', '10');
INSERT INTO `xadmin_log` VALUES ('48', '2018-04-26 11:57:19', '127.0.0.1', '8', 'stormsha', 'create', '已添加', '16', '10');
INSERT INTO `xadmin_log` VALUES ('49', '2018-04-26 11:57:35', '127.0.0.1', '9', 'stormsha', 'create', '已添加', '16', '10');
INSERT INTO `xadmin_log` VALUES ('50', '2018-04-30 14:22:50', '127.0.0.1', '4', '大数据', 'change', '已修改 name 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('51', '2018-04-30 14:23:20', '127.0.0.1', '3', 'java', 'change', '已修改 course_org，name 和 tag 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('52', '2018-04-30 14:23:48', '127.0.0.1', '2', 'web', 'change', '已修改 course_org，name 和 tag 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('53', '2018-04-30 14:24:17', '127.0.0.1', '1', 'acm', 'change', '已修改 course_org，name，desc 和 tag 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('54', '2018-04-30 14:25:23', '127.0.0.1', '2', 'Lesson object', 'create', '已添加', '11', '10');
INSERT INTO `xadmin_log` VALUES ('55', '2018-04-30 14:27:20', '127.0.0.1', '3', '第二章    进阶', 'create', '已添加', '11', '10');
INSERT INTO `xadmin_log` VALUES ('56', '2018-04-30 14:34:34', '127.0.0.1', '1', '王健：不破不立的互联网营销', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('57', '2018-04-30 14:36:45', '127.0.0.1', '2', '攻略一：对称化构造', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('58', '2018-04-30 14:52:12', '127.0.0.1', '1', 'CourseResource object', 'create', '已添加', '13', '10');
INSERT INTO `xadmin_log` VALUES ('59', '2018-04-30 15:06:35', '127.0.0.1', '4', '大数据', 'change', '已修改 teacher 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('60', '2018-04-30 15:22:58', '127.0.0.1', '4', '大数据', 'change', '已修改 you_know 和 teacher_tell 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('61', '2018-04-30 18:24:20', '127.0.0.1', '2', '攻略一：对称化构造', 'change', '已修改 url 和 learn_times 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('62', '2018-04-30 18:24:30', '127.0.0.1', '1', '王健：不破不立的互联网营销', 'change', '已修改 url 和 learn_times 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('63', '2018-05-08 21:05:07', '127.0.0.1', '1', 'UserMessage object', 'create', '已添加', '20', '10');
INSERT INTO `xadmin_log` VALUES ('64', '2018-05-08 21:09:55', '127.0.0.1', '3', 'UserMessage object', 'create', '已添加', '20', '10');
INSERT INTO `xadmin_log` VALUES ('65', '2018-05-08 21:10:07', '127.0.0.1', '4', 'UserMessage object', 'create', '已添加', '20', '10');
INSERT INTO `xadmin_log` VALUES ('66', '2018-05-08 21:37:19', '127.0.0.1', '4', 'UserMessage object', 'change', '没有字段被修改。', '20', '10');
INSERT INTO `xadmin_log` VALUES ('67', '2018-05-08 21:37:24', '127.0.0.1', '3', 'UserMessage object', 'change', '已修改 user 。', '20', '10');
INSERT INTO `xadmin_log` VALUES ('68', '2018-05-08 21:37:30', '127.0.0.1', '2', 'UserMessage object', 'change', '已修改 user 。', '20', '10');
INSERT INTO `xadmin_log` VALUES ('69', '2018-05-08 21:37:36', '127.0.0.1', '1', 'UserMessage object', 'change', '已修改 user 。', '20', '10');
INSERT INTO `xadmin_log` VALUES ('70', '2018-05-11 12:09:16', '127.0.0.1', '6', '零基础学习django', 'create', '已添加', '10', '10');
INSERT INTO `xadmin_log` VALUES ('71', '2018-05-11 12:10:48', '127.0.0.1', '4', '（预告）零基础学习django-1.1', 'create', '已添加', '11', '10');
INSERT INTO `xadmin_log` VALUES ('72', '2018-05-11 12:13:01', '127.0.0.1', '3', '（预告）零基础学习django', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('73', '2018-05-11 12:16:06', '127.0.0.1', '4', '零基础学习django-1.1', 'change', '已修改 name 。', '11', '10');
INSERT INTO `xadmin_log` VALUES ('74', '2018-05-11 12:18:32', '127.0.0.1', '4', '零基础学习django-1.1', 'change', '没有字段被修改。', '11', '10');
INSERT INTO `xadmin_log` VALUES ('75', '2018-05-11 12:19:34', '127.0.0.1', '3', '（预告）零基础学习django', 'change', '已修改 url 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('76', '2018-05-11 12:20:09', '127.0.0.1', '3', '（预告）零基础学习django', 'change', '没有字段被修改。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('77', '2018-05-11 12:20:55', '127.0.0.1', '3', '（预告）零基础学习django', 'change', '已修改 learn_times 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('78', '2018-05-11 12:30:34', '127.0.0.1', '3', '（预告）零基础学习django', 'change', '已修改 url 和 learn_times 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('79', '2018-05-11 14:37:51', '127.0.0.1', '1', 'Banner object', 'create', '已添加', '9', '10');
INSERT INTO `xadmin_log` VALUES ('80', '2018-05-11 14:40:08', '127.0.0.1', '1', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('81', '2018-05-11 14:40:49', '127.0.0.1', '2', 'Banner object', 'create', '已添加', '9', '10');
INSERT INTO `xadmin_log` VALUES ('82', '2018-05-11 14:41:09', '127.0.0.1', '3', 'Banner object', 'create', '已添加', '9', '10');
INSERT INTO `xadmin_log` VALUES ('83', '2018-05-11 14:41:24', '127.0.0.1', '4', 'Banner object', 'create', '已添加', '9', '10');
INSERT INTO `xadmin_log` VALUES ('84', '2018-05-11 14:41:39', '127.0.0.1', '5', 'Banner object', 'create', '已添加', '9', '10');
INSERT INTO `xadmin_log` VALUES ('85', '2018-05-11 15:14:51', '127.0.0.1', '1', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('86', '2018-05-11 15:18:19', '127.0.0.1', '2', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('87', '2018-05-11 15:21:27', '127.0.0.1', '2', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('88', '2018-05-11 15:33:16', '127.0.0.1', '2', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('89', '2018-05-11 15:33:24', '127.0.0.1', '3', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('90', '2018-05-11 15:33:34', '127.0.0.1', '4', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('91', '2018-05-11 15:33:43', '127.0.0.1', '5', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('92', '2018-05-11 15:35:14', '127.0.0.1', '5', 'django', 'change', '已修改 you_know 和 teacher_tell 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('93', '2018-05-11 15:35:42', '127.0.0.1', '4', '大数据', 'change', '已修改 image 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('94', '2018-05-11 15:36:24', '127.0.0.1', '2', 'web', 'change', '已修改 you_know 和 teacher_tell 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('95', '2018-05-11 15:36:41', '127.0.0.1', '1', 'acm', 'change', '已修改 image，you_know 和 teacher_tell 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('96', '2018-05-11 15:37:19', '127.0.0.1', '3', 'java', 'change', '已修改 image，you_know 和 teacher_tell 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('97', '2018-05-11 15:37:42', '127.0.0.1', '4', '大数据', 'change', '没有字段被修改。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('98', '2018-05-11 15:37:48', '127.0.0.1', '6', '零基础学习django', 'change', '没有字段被修改。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('99', '2018-05-11 15:37:57', '127.0.0.1', '4', '大数据', 'change', '没有字段被修改。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('100', '2018-05-11 15:38:10', '127.0.0.1', '1', 'acm', 'change', '没有字段被修改。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('101', '2018-05-11 15:39:40', '127.0.0.1', '5', 'django', 'change', '已修改 image 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('102', '2018-05-11 15:40:02', '127.0.0.1', '2', 'web', 'change', '已修改 image 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('103', '2018-05-11 15:55:28', '127.0.0.1', '8', '复旦大学', 'change', '已修改 name，desc，category 和 image 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('104', '2018-05-11 15:57:53', '127.0.0.1', '1', '河南理工大学', 'change', '已修改 image 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('105', '2018-05-11 16:02:51', '127.0.0.1', '1', '河南理工大学', 'change', '已修改 image 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('106', '2018-05-11 16:10:08', '127.0.0.1', '2', '郑州大学', 'change', '已修改 image 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('107', '2018-05-11 16:18:09', '127.0.0.1', '7', '北京邮电大学', 'change', '已修改 name，desc，image 和 city 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('108', '2018-05-11 16:22:43', '127.0.0.1', '6', '天津大学', 'change', '已修改 name，desc，category，fav_nums，image，address 和 city 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('109', '2018-05-11 16:27:08', '127.0.0.1', '9', '西安电子科技大学', 'create', '已添加', '15', '10');
INSERT INTO `xadmin_log` VALUES ('110', '2018-05-11 16:29:52', '127.0.0.1', '4', '北京大学', 'change', '已修改 image 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('111', '2018-05-11 16:31:00', '127.0.0.1', '11', '西安', 'create', '已添加', '14', '10');
INSERT INTO `xadmin_log` VALUES ('112', '2018-05-11 16:31:13', '127.0.0.1', '9', '西安电子科技大学', 'change', '已修改 city 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('113', '2018-05-11 16:31:44', '127.0.0.1', '8', '复旦大学', 'change', '已修改 address 和 city 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('114', '2018-05-11 16:37:05', '127.0.0.1', '3', '上海交大', 'change', '已修改 name，desc，image，address 和 city 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('115', '2018-05-11 16:39:14', '127.0.0.1', '5', '南开大学', 'change', '已修改 image 。', '15', '10');
INSERT INTO `xadmin_log` VALUES ('116', '2018-05-11 16:47:11', '127.0.0.1', '10', '慕课网', 'create', '已添加', '15', '10');
INSERT INTO `xadmin_log` VALUES ('117', '2018-05-11 16:50:18', '127.0.0.1', '11', '网易公开课', 'create', '已添加', '15', '10');
INSERT INTO `xadmin_log` VALUES ('118', '2018-05-11 16:58:09', '127.0.0.1', '12', 'stormsha', 'create', '已添加', '15', '10');
INSERT INTO `xadmin_log` VALUES ('119', '2018-05-11 17:03:44', '127.0.0.1', '13', '电子科技大学', 'create', '已添加', '15', '10');
INSERT INTO `xadmin_log` VALUES ('120', '2018-05-11 17:04:47', '127.0.0.1', '12', '成都', 'create', '已添加', '14', '10');
INSERT INTO `xadmin_log` VALUES ('121', '2018-05-11 17:08:09', '127.0.0.1', '14', '浙江大学', 'create', '已添加', '15', '10');
INSERT INTO `xadmin_log` VALUES ('122', '2018-05-11 17:13:13', '127.0.0.1', '13', '美国马萨诸塞州', 'create', '已添加', '14', '10');
INSERT INTO `xadmin_log` VALUES ('123', '2018-05-11 17:14:42', '127.0.0.1', '15', '哈弗大学', 'create', '已添加', '15', '10');
INSERT INTO `xadmin_log` VALUES ('124', '2018-05-11 18:34:28', '127.0.0.1', '4', '大数据', 'change', '已修改 image 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('125', '2018-05-11 18:34:44', '127.0.0.1', '1', 'acm', 'change', '已修改 image 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('126', '2018-05-11 19:08:53', '127.0.0.1', '6', '零基础学习django', 'change', '没有字段被修改。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('127', '2018-05-11 19:09:41', '127.0.0.1', '5', '零基础学习django-1.1', 'create', '已添加', '11', '10');
INSERT INTO `xadmin_log` VALUES ('128', '2018-05-11 19:11:15', '127.0.0.1', '4', '零基础学习django-1.1', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('129', '2018-05-11 19:18:26', '127.0.0.1', '4', '零基础学习django-1.1', 'change', '已修改 url 和 learn_times 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('130', '2018-05-11 20:10:20', '127.0.0.1', '4', '零基础学习django-1.1', 'delete', '', '11', '10');
INSERT INTO `xadmin_log` VALUES ('131', '2018-05-11 20:10:52', '127.0.0.1', '4', '零基础学习django-1.1', 'change', '已修改 url 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('132', '2018-05-12 00:35:22', '127.0.0.1', '1', 'acm', 'change', '已修改 image 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('133', '2018-05-12 00:37:39', '127.0.0.1', '7', 'python', 'create', '已添加', '10', '10');
INSERT INTO `xadmin_log` VALUES ('134', '2018-05-12 00:38:46', '127.0.0.1', '8', 'python', 'create', '已添加', '10', '10');
INSERT INTO `xadmin_log` VALUES ('135', '2018-05-12 00:42:45', '127.0.0.1', '6', '零基础学习django', 'change', '已修改 is_banner 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('136', '2018-05-12 00:43:08', '127.0.0.1', '4', '大数据', 'change', '已修改 is_banner 和 image 。', '10', '10');
INSERT INTO `xadmin_log` VALUES ('137', '2018-05-12 00:45:06', '127.0.0.1', '9', 'django', 'create', '已添加', '10', '10');
INSERT INTO `xadmin_log` VALUES ('138', '2018-05-17 14:41:44', '127.0.0.1', '123', 'sxc7very good', 'change', '已修改 user，root，parent，reply_to 和 text 。', '18', '10');
INSERT INTO `xadmin_log` VALUES ('139', '2018-05-17 14:43:41', '127.0.0.1', null, '', 'delete', '批量删除 50 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('140', '2018-05-17 14:43:53', '127.0.0.1', null, '', 'delete', '批量删除 50 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('141', '2018-05-17 14:44:02', '127.0.0.1', null, '', 'delete', '批量删除 28 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('142', '2018-05-17 14:47:38', '127.0.0.1', '130', '<p>谢谢</p>', 'change', '已修改 root，parent 和 reply_to 。', '18', '10');
INSERT INTO `xadmin_log` VALUES ('143', '2018-05-17 15:03:40', '127.0.0.1', '130', '<p>谢谢</p>', 'change', '已修改 user 。', '18', '10');
INSERT INTO `xadmin_log` VALUES ('144', '2018-05-17 18:08:57', '127.0.0.1', null, '', 'delete', '批量删除 2 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('145', '2018-05-17 18:09:03', '127.0.0.1', null, '', 'delete', '批量删除 15 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('146', '2018-05-17 21:30:57', '127.0.0.1', null, '', 'delete', '批量删除 50 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('147', '2018-05-17 21:31:04', '127.0.0.1', null, '', 'delete', '批量删除 7 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('148', '2018-05-17 21:38:51', '127.0.0.1', null, '', 'delete', '批量删除 20 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('149', '2018-05-21 22:50:02', '127.0.0.1', '5', '1.1-零基础学习django（预告）', 'change', '已修改 name 。', '11', '10');
INSERT INTO `xadmin_log` VALUES ('150', '2018-05-21 22:51:03', '127.0.0.1', '6', '1.2-django的基本结构', 'create', '已添加', '11', '10');
INSERT INTO `xadmin_log` VALUES ('151', '2018-05-21 22:52:56', '127.0.0.1', '6', '2-django的基本结构', 'change', '已修改 name 。', '11', '10');
INSERT INTO `xadmin_log` VALUES ('152', '2018-05-21 22:53:08', '127.0.0.1', '5', '1-零基础学习django（预告）', 'change', '已修改 name 。', '11', '10');
INSERT INTO `xadmin_log` VALUES ('153', '2018-05-21 23:30:53', '127.0.0.1', '4', '1.1-零基础学习django（预告）', 'change', '已修改 name 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('154', '2018-05-21 23:32:22', '127.0.0.1', '5', 'django项目目录结构', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('155', '2018-05-21 23:33:18', '127.0.0.1', '5', '2.1-django项目目录结构', 'change', '已修改 name 。', '12', '10');
INSERT INTO `xadmin_log` VALUES ('156', '2018-05-21 23:34:16', '127.0.0.1', '6', '2.2-urls配置', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('157', '2018-05-21 23:34:59', '127.0.0.1', '7', '2.3-运行第一个django项目', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('158', '2018-05-21 23:36:11', '127.0.0.1', '7', '3-个人博客建设项目设计', 'create', '已添加', '11', '10');
INSERT INTO `xadmin_log` VALUES ('159', '2018-05-21 23:36:46', '127.0.0.1', '8', '3.1-数据库设计', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('160', '2018-05-21 23:37:22', '127.0.0.1', '9', '3.2-用户中心设计', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('161', '2018-05-21 23:38:13', '127.0.0.1', '10', '3.3-主页设计', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('162', '2018-05-21 23:38:54', '127.0.0.1', '8', '4-django后台管理系统', 'create', '已添加', '11', '10');
INSERT INTO `xadmin_log` VALUES ('163', '2018-05-21 23:39:25', '127.0.0.1', '11', '4.1-admin简单了解', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('164', '2018-05-21 23:39:54', '127.0.0.1', '12', '4.2-xadmin的学习使用', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('165', '2018-05-21 23:43:00', '127.0.0.1', '2', '课程源码', 'create', '已添加', '13', '10');
INSERT INTO `xadmin_log` VALUES ('166', '2018-05-21 23:43:50', '127.0.0.1', '3', '课程视频', 'create', '已添加', '13', '10');
INSERT INTO `xadmin_log` VALUES ('167', '2018-05-21 23:45:57', '127.0.0.1', '9', '5-安全处理', 'create', '已添加', '11', '10');
INSERT INTO `xadmin_log` VALUES ('168', '2018-05-21 23:46:56', '127.0.0.1', '13', '5.1-xss攻击防范', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('169', '2018-05-21 23:47:44', '127.0.0.1', '14', '5.2-csrf-token', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('170', '2018-05-21 23:48:53', '127.0.0.1', '15', '5.3-绕过前台获取数据库数据', 'create', '已添加', '12', '10');
INSERT INTO `xadmin_log` VALUES ('171', '2018-05-21 23:50:58', '127.0.0.1', '255', '谢谢', 'create', '已添加', '18', '10');
INSERT INTO `xadmin_log` VALUES ('172', '2018-05-21 23:52:43', '127.0.0.1', '2', 'sxc7', 'change', '已修改 image 。', '7', '10');
INSERT INTO `xadmin_log` VALUES ('173', '2018-05-21 23:53:53', '127.0.0.1', null, '', 'delete', '批量删除 33 个 课程评论', null, '10');
INSERT INTO `xadmin_log` VALUES ('174', '2018-05-21 23:55:47', '127.0.0.1', '257', '谢谢', 'create', '已添加', '18', '10');
INSERT INTO `xadmin_log` VALUES ('175', '2018-05-21 23:56:57', '127.0.0.1', '2', 'sxc7', 'change', '已修改 image 。', '7', '10');
INSERT INTO `xadmin_log` VALUES ('176', '2018-06-02 00:44:04', '127.0.0.1', '3', '412', 'delete', '', '7', '10');
INSERT INTO `xadmin_log` VALUES ('177', '2018-06-02 00:57:50', '127.0.0.1', '16', '河南理工大学万方学院', 'create', '已添加', '15', '10');
INSERT INTO `xadmin_log` VALUES ('178', '2018-06-02 01:13:22', '127.0.0.1', '259', '<p>而微软微软</p>', 'delete', '', '18', '10');
INSERT INTO `xadmin_log` VALUES ('179', '2018-06-02 01:13:28', '127.0.0.1', '258', '<p>谢谢<img alt=\"smiley\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /></p>', 'delete', '', '18', '10');
INSERT INTO `xadmin_log` VALUES ('180', '2018-06-02 01:13:34', '127.0.0.1', '257', '谢谢', 'delete', '', '18', '10');
INSERT INTO `xadmin_log` VALUES ('181', '2018-06-06 15:35:55', '127.0.0.1', '2', 'Banner object', 'change', '已修改 image 。', '9', '10');
INSERT INTO `xadmin_log` VALUES ('182', '2018-06-06 15:36:06', '127.0.0.1', '4', 'Banner object', 'change', '已修改 image 。', '9', '10');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-theme.css', '1');
INSERT INTO `xadmin_usersettings` VALUES ('3', 'dashboard:home:pos', '', '10');
INSERT INTO `xadmin_usersettings` VALUES ('4', 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', '10');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
