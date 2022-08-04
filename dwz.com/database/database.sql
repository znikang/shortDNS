-- MySQL dump 10.13  Distrib 5.6.51, for Linux (x86_64)
--
-- Host: localhost    Database: at_dwz
-- ------------------------------------------------------
-- Server version	5.6.51

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cy_article`
--

DROP TABLE IF EXISTS `cy_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '文章关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '文章描述',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `stick` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0普通，1置顶',
  `t` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `n` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  PRIMARY KEY (`aid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_article`
--

LOCK TABLES `cy_article` WRITE;
/*!40000 ALTER TABLE `cy_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `cy_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_banner`
--

DROP TABLE IF EXISTS `cy_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT 'Banner图',
  `o` int(11) NOT NULL DEFAULT '0' COMMENT '排序，越小越靠前',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0禁止，1显示',
  PRIMARY KEY (`id`),
  KEY `o` (`o`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_banner`
--

LOCK TABLES `cy_banner` WRITE;
/*!40000 ALTER TABLE `cy_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `cy_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_category`
--

DROP TABLE IF EXISTS `cy_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `type` int(8) NOT NULL DEFAULT '0' COMMENT '类型：0普通，1单页，2外链',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '分类名称',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '文章关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '文章描述',
  `content` text NOT NULL COMMENT '内容',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '外链地址',
  `listtemplate` varchar(100) NOT NULL DEFAULT '' COMMENT '列表模版',
  `contenttemplate` varchar(100) NOT NULL DEFAULT '' COMMENT '内容模版',
  `o` int(11) NOT NULL DEFAULT '0' COMMENT '排序，越小越靠前',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`o`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_category`
--

LOCK TABLES `cy_category` WRITE;
/*!40000 ALTER TABLE `cy_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cy_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_dwz`
--

DROP TABLE IF EXISTS `cy_dwz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_dwz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID ',
  `domain` varchar(100) NOT NULL DEFAULT '' COMMENT '域名',
  `url` text COMMENT '长链接',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '防红 1 ',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1正常2被封 ',
  `bad_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  `remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`),
  KEY `status` (`status`),
  KEY `uid` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_dwz`
--

LOCK TABLES `cy_dwz` WRITE;
/*!40000 ALTER TABLE `cy_dwz` DISABLE KEYS */;
/*!40000 ALTER TABLE `cy_dwz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_link`
--

DROP TABLE IF EXISTS `cy_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT '站标',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'IP',
  `o` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_link`
--

LOCK TABLES `cy_link` WRITE;
/*!40000 ALTER TABLE `cy_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `cy_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_log`
--

DROP TABLE IF EXISTS `cy_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `log` text NOT NULL COMMENT '日志',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'IP',
  `t` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_log`
--

LOCK TABLES `cy_log` WRITE;
/*!40000 ALTER TABLE `cy_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cy_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_menu`
--

DROP TABLE IF EXISTS `cy_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '标图',
  `tips` varchar(255) NOT NULL DEFAULT '' COMMENT '提示语',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0隐藏，1显示',
  `o` int(11) NOT NULL DEFAULT '0' COMMENT '排序，越小越靠前',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`o`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_menu`
--

LOCK TABLES `cy_menu` WRITE;
/*!40000 ALTER TABLE `cy_menu` DISABLE KEYS */;
INSERT INTO `cy_menu` VALUES (1,0,'index/index','控制台','menu-icon fa fa-tachometer','经常查看操作日志，发现异常以便及时追查原因。',1,1),(2,0,'#','开发选项','menu-icon fa fa-cogs','',1,2),(3,2,'menu/index','后台菜单','menu-icon fa  fa-folder-o','开发新功能，新增、修改、删除后台菜单。',1,3),(4,2,'variable/index','自定义变量','menu-icon fa  fa-circle-o','可新增、修改、删除后台自定义变量，方便后台模板直接调用。',1,4),(5,0,'#','系统设置','menu-icon fa fa-cog','',1,5),(6,5,'setting/index','网站设置','menu-icon fa  fa-info-circle','网站设置，含自定义变量值的设置。',1,6),(7,5,'database/backup','数据库备份','menu-icon fa fa-floppy-o','建议定期备份网站数据库，以便网站故障时能及时恢复数据。',1,7),(8,5,'database/recovery','数据还原','menu-icon fa fa-undo','将备份在数据库文件还原致数据库。',1,8),(9,5,'database/optimize','数据优化','','',0,9),(10,5,'search/index','功能搜索','','找不到后台功能搜索一下就能找到。',0,10),(11,5,'database/repair','数据修复','','',0,11),(12,0,'#','用户权限','menu-icon fa fa-users','用户管理，用户组管理。',1,12),(13,12,'user/index','用户管理','menu-icon fa fa-user','用户列表、新增、编辑、删除管理。',1,12),(14,12,'group/index','分组权限','menu-icon fa fa-lock','权限组列表、新增、编辑、删除管理。',1,14),(15,0,'#','网站管理','menu-icon fa fa-desktop','网站内空管理',1,15),(16,15,'article/index','文章管理','','网站文章管理，对网站文章进行新增、修改、删除操作。',1,16),(17,15,'article/add','新增文章','','新增网站文章。',1,17),(18,15,'article/edit','编辑文章','','',0,18),(19,15,'article/save','文章保存','','',0,19),(20,15,'category/index','分类管理','','文章分类管理，对分类进行新增、修改、删除操作。',1,20),(21,15,'category/add','新增分类','','新增文章分类',1,21),(22,15,'category/edit','编辑文章','','',0,22),(23,15,'category/save','保存分类','','',0,23),(24,15,'banner/index','横幅管理','','横幅管理，可对网站横幅广告进行新增、修改、删除操作。',1,24),(25,15,'banner/add','新增横幅','','',1,25),(26,15,'banner/edit','编辑横幅','','',0,26),(27,15,'banner/save','保存横幅','','',0,27),(28,15,'link/index','友情链接','','友情链接管理，对网站友情链接进行新增、修改、删除操作。',1,28),(29,15,'link/add','新增链接','','新增网站友情连接。',1,29),(30,15,'link/edit','编辑链接','','',0,30),(31,15,'link/save','保存链接','','',0,31),(32,0,'#','个人中心','menu-icon fa fa-user','',1,32),(33,32,'profile/index','个人资料','menu-icon fa fa-user','用户个人资料修改。',1,33),(34,32,'logout/index','退出登录','menu-icon fa fa-power-off','',1,34),(35,0,'dwz/index','短链接','menu-icon fa fa-gear','',1,0);
/*!40000 ALTER TABLE `cy_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_migrations`
--

DROP TABLE IF EXISTS `cy_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_migrations`
--

LOCK TABLES `cy_migrations` WRITE;
/*!40000 ALTER TABLE `cy_migrations` DISABLE KEYS */;
INSERT INTO `cy_migrations` VALUES (20180414063451,'User','2019-11-26 11:16:42','2019-11-26 11:16:42',0),(20180414083712,'UserGroup','2019-11-26 11:16:42','2019-11-26 11:16:42',0),(20180414085417,'Log','2019-11-26 11:16:42','2019-11-26 11:16:42',0),(20180414090927,'Link','2019-11-26 11:16:42','2019-11-26 11:16:43',0),(20180414120957,'Article','2019-11-26 11:16:43','2019-11-26 11:16:43',0),(20180414123404,'Banner','2019-11-26 11:16:43','2019-11-26 11:16:43',0),(20180414124141,'Category','2019-11-26 11:16:43','2019-11-26 11:16:43',0),(20180414131647,'Menu','2019-11-26 11:16:43','2019-11-26 11:16:44',0),(20191023084047,'UserAuth','2019-11-26 11:16:44','2019-11-26 11:16:45',0);
/*!40000 ALTER TABLE `cy_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_user`
--

DROP TABLE IF EXISTS `cy_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ugid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户组ID',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '姓别：0保密，1男，2女',
  `birthday` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '生日',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'QQ',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态，0禁用，1启用',
  `identifier` varchar(32) NOT NULL DEFAULT '' COMMENT '登录标识',
  `token` varchar(32) NOT NULL DEFAULT '' COMMENT '登录Token',
  `salt` varchar(10) NOT NULL DEFAULT '' COMMENT '密码盐',
  `skin` varchar(20) NOT NULL DEFAULT 'no-skin' COMMENT '皮肤',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_user`
--

LOCK TABLES `cy_user` WRITE;
/*!40000 ALTER TABLE `cy_user` DISABLE KEYS */;
INSERT INTO `cy_user` VALUES (1,1,'admin','e62e76cff8e27165bbf2eb429506da72','',0,1574767002,'13800138000','10000','10000@qq.com',1,'25c594addc539fb4f7f23de75fa7e852','63f32e57e3b62d931d5e4e680506d860','XxWaDkQtg2','no-skin',1574767002),(2,2,'test','c6bac66e41f3f6817b1a9d5e3ff2f036','/static/admin/images/avatars/avatar2.png',0,0,'','','',1,'1285ad5a7d74042978a2b1e7a02e6baa','ef801f57990ef4136dcaefd7522e9fbc','jxR97eZRvc','no-skin',0);
/*!40000 ALTER TABLE `cy_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_user_auth`
--

DROP TABLE IF EXISTS `cy_user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_user_auth`
--

LOCK TABLES `cy_user_auth` WRITE;
/*!40000 ALTER TABLE `cy_user_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `cy_user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cy_user_group`
--

DROP TABLE IF EXISTS `cy_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cy_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '组状态，0禁用，1启用',
  `auth` text NOT NULL COMMENT '组权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cy_user_group`
--

LOCK TABLES `cy_user_group` WRITE;
/*!40000 ALTER TABLE `cy_user_group` DISABLE KEYS */;
INSERT INTO `cy_user_group` VALUES (1,'超级管理员',1,'35,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34'),(2,'短链接用户',1,'35,32,33,34');
/*!40000 ALTER TABLE `cy_user_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-12 19:33:48
