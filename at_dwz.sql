-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2022-07-12 13:57:32
-- 服务器版本： 5.6.50-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `at_dwz`
--

-- --------------------------------------------------------

--
-- 表的结构 `cy_article`
--

CREATE TABLE IF NOT EXISTS `cy_article` (
  `aid` int(11) NOT NULL,
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '文章关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '文章描述',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `stick` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0普通，1置顶',
  `t` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `n` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cy_banner`
--

CREATE TABLE IF NOT EXISTS `cy_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT 'Banner图',
  `o` int(11) NOT NULL DEFAULT '0' COMMENT '排序，越小越靠前',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0禁止，1显示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cy_category`
--

CREATE TABLE IF NOT EXISTS `cy_category` (
  `id` int(11) NOT NULL,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `type` int(8) NOT NULL DEFAULT '0' COMMENT '类型：0普通，1单页，2外链',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '分类名称',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '文章关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '文章描述',
  `content` text NOT NULL COMMENT '内容',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '外链地址',
  `listtemplate` varchar(100) NOT NULL DEFAULT '' COMMENT '列表模版',
  `contenttemplate` varchar(100) NOT NULL DEFAULT '' COMMENT '内容模版',
  `o` int(11) NOT NULL DEFAULT '0' COMMENT '排序，越小越靠前'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cy_cfg`
--

CREATE TABLE IF NOT EXISTS `cy_cfg` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID ',
  `key` varchar(100) NOT NULL DEFAULT '' COMMENT 'key',
  `value` text COMMENT 'val',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_cfg`
--

INSERT INTO `cy_cfg` (`id`, `uid`, `key`, `value`, `addtime`) VALUES
(1, 2, 'godaddy_apikey', 'fXfZd1MdgjZx_PzPzFmWjgoZmfojp5TPZr6:V7MN4prNG2vrurmWNZQ1K1', '2021-07-10 06:41:12'),
(2, 4, 'godaddy_apikey', 'fYAk2Vqy7pjb_wdDGzn3FPgdZzxwcUP8TS:V4CZq19nh1JjoCgerg42AN', '2021-09-12 01:58:54');

-- --------------------------------------------------------

--
-- 表的结构 `cy_dwz`
--

CREATE TABLE IF NOT EXISTS `cy_dwz` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID ',
  `domain` varchar(100) NOT NULL DEFAULT '' COMMENT '域名',
  `url` text COMMENT '长链接',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '防红 1 ',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1正常2被封 ',
  `bad_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  `remarks` varchar(500) DEFAULT NULL,
  `tj_code` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1110 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_dwz`
--

INSERT INTO `cy_dwz` (`id`, `uid`, `domain`, `url`, `type`, `status`, `bad_time`, `addtime`, `remarks`, `tj_code`) VALUES
(1021, 2, '770h.cc', '', 1, 1, '2022-07-11 17:30:01', '2022-06-28 11:51:36', '0628_1', NULL),
(1022, 2, '867y.cc', '', 1, 1, '2022-07-11 17:30:01', '2022-06-28 11:51:36', '0628_2', NULL),
(1023, 2, '153j.cc', '', 1, 1, '2022-07-11 17:30:02', '2022-06-28 11:51:36', '0628_3', NULL),
(1024, 2, '939i.cc', '', 1, 1, '2022-07-11 17:30:02', '2022-06-28 11:51:36', '0628_4', NULL),
(1025, 2, '925z.cc', '', 1, 1, '2022-07-11 17:30:02', '2022-06-28 11:51:36', '0628_5', NULL),
(1026, 2, '325b.cc', '', 1, 1, '2022-07-11 17:30:02', '2022-06-28 11:51:36', '0628_6', NULL),
(1027, 2, '511w.cc', '', 1, 1, '2022-07-11 17:30:02', '2022-06-28 11:51:36', '0628_7', NULL),
(1028, 2, '915y.cc', '', 1, 1, '2022-07-11 17:30:03', '2022-06-28 11:51:36', '0628_8', NULL),
(1029, 2, '282y.cc', '', 1, 1, '2022-07-11 17:30:03', '2022-06-28 11:51:36', '0628_9', NULL),
(1030, 2, '393w.cc', '', 1, 1, '2022-07-11 17:30:03', '2022-06-28 11:51:36', '0628_10', NULL),
(1031, 2, '361n.cc', '', 1, 1, '2022-07-11 17:30:03', '2022-06-28 11:51:36', '0628_11', NULL),
(1032, 2, '314p.cc', '', 1, 1, '2022-07-11 17:30:03', '2022-06-28 11:51:36', '0628_12', NULL),
(1033, 2, '172e.cc', '', 1, 1, '2022-07-11 17:30:04', '2022-06-28 11:51:36', '0628_13', NULL),
(1034, 2, '723i.cc', '', 1, 1, '2022-07-11 17:30:04', '2022-06-28 11:51:36', '0628_14', NULL),
(1035, 2, '101x.cc', '', 1, 1, '2022-07-11 17:30:04', '2022-06-28 11:51:36', '0628_15', NULL),
(1036, 2, '799s.cc', '', 1, 1, '2022-07-11 17:30:04', '2022-06-28 11:51:36', '0628_16', NULL),
(1037, 2, '998h.cc', '', 1, 1, '2022-07-11 17:30:04', '2022-06-28 11:51:36', '0628_17', NULL),
(1038, 2, '415e.cc', '', 1, 1, '2022-07-11 17:30:05', '2022-06-28 11:51:36', '0628_18', NULL),
(1039, 2, '724a.cc', '', 1, 1, '2022-07-11 17:30:05', '2022-06-28 11:51:36', '0628_19', NULL),
(1040, 2, '523i.cc', '', 1, 1, '2022-07-11 17:30:05', '2022-06-28 11:51:36', '0628_20', NULL),
(1041, 2, '395h.cc', '', 1, 1, '2022-07-11 17:30:05', '2022-06-28 11:51:36', '0628_21', NULL),
(1042, 2, '582p.cc', '', 1, 1, '2022-07-11 17:30:05', '2022-06-28 11:51:36', '0628_22', NULL),
(1043, 2, '139f.cc', '', 1, 1, '2022-07-11 17:30:05', '2022-06-28 11:51:36', '0628_23', NULL),
(1044, 2, '216y.cc', '', 1, 1, '2022-07-11 17:30:06', '2022-06-28 11:51:36', '0628_24', NULL),
(1045, 2, '422n.cc', '', 1, 1, '2022-07-11 17:30:06', '2022-06-28 11:51:36', '0628_25', NULL),
(1046, 2, '541y.cc', '', 1, 1, '2022-07-11 17:30:06', '2022-06-28 11:51:36', '0628_26', NULL),
(1047, 2, '648d.cc', '', 1, 1, '2022-07-11 17:30:06', '2022-06-28 11:51:36', '0628_27', NULL),
(1048, 2, '625f.cc', '', 1, 1, '2022-07-11 17:30:06', '2022-06-28 11:51:36', '0628_28', NULL),
(1049, 2, '616h.cc', '', 1, 1, '2022-07-11 17:30:07', '2022-06-28 11:51:36', '0628_29', NULL),
(1050, 2, '767h.cc', '', 1, 1, '2022-07-11 17:30:07', '2022-06-28 11:51:36', '0628_30', NULL),
(1051, 2, '313n.cc', 'http://yaoyaohh13.com/?channelCode=ZXECC', 1, 1, '2022-07-11 17:30:07', '2022-06-28 11:51:36', 'NK', ''),
(1052, 2, '443t.cc', '', 1, 1, '2022-07-11 17:30:07', '2022-06-28 11:51:36', '0628_32', NULL),
(1053, 2, '134w.cc', '', 1, 1, '2022-07-11 17:30:07', '2022-06-28 11:51:36', '0628_33', NULL),
(1054, 2, '142g.cc', '', 1, 1, '2022-07-11 17:30:08', '2022-06-28 11:51:36', '0628_34', NULL),
(1055, 2, '655w.cc', '', 1, 1, '2022-07-11 17:30:08', '2022-06-28 11:51:36', '0628_35', NULL),
(1056, 2, '427n.cc', '', 1, 1, '2022-07-11 17:30:08', '2022-06-28 11:51:36', '0628_36', NULL),
(1057, 2, '169x.cc', '', 1, 1, '2022-07-11 17:30:08', '2022-06-28 11:51:36', '0628_37', NULL),
(1058, 2, '364q.cc', '', 1, 1, '2022-07-11 17:30:08', '2022-06-28 11:51:36', '0628_38', NULL),
(1059, 2, '641w.cc', '', 1, 1, '2022-07-11 17:30:09', '2022-06-28 11:51:36', '0628_39', NULL),
(1060, 2, '765t.cc', '', 1, 1, '2022-07-11 17:30:09', '2022-06-28 11:51:36', '0628_40', NULL),
(1061, 2, '167z.cc', '', 1, 1, '2022-07-11 17:30:09', '2022-06-28 11:51:36', '0628_41', NULL),
(1062, 2, '313e.cc', '', 1, 1, '2022-07-11 17:30:09', '2022-06-28 11:51:36', '0628_42', NULL),
(1063, 2, '110h.cc', '', 1, 1, '2022-07-11 17:30:10', '2022-06-28 11:51:36', '0628_43', NULL),
(1064, 2, '177u.cc', '', 1, 1, '2022-07-11 17:30:10', '2022-06-28 11:51:36', '0628_44', NULL),
(1065, 2, '699j.cc', '', 1, 1, '2022-07-11 17:30:10', '2022-06-28 11:51:36', '0628_45', NULL),
(1066, 2, '423b.cc', '', 1, 1, '2022-07-11 17:30:10', '2022-06-28 11:51:36', '0628_46', NULL),
(1067, 2, '382c.cc', '', 1, 1, '2022-07-11 17:30:10', '2022-06-28 11:51:36', '0628_47', NULL),
(1068, 2, '929m.cc', '', 1, 1, '2022-07-11 17:30:11', '2022-06-28 11:51:36', '0628_48', NULL),
(1069, 2, '632y.cc', '', 1, 1, '2022-07-11 17:30:11', '2022-06-28 11:51:36', '0628_49', NULL),
(1070, 2, '198x.cc', 'http://yaoyaohh15.com/?channelCode=KRFQ4', 1, 1, '2022-07-11 17:30:11', '2022-06-28 11:51:36', '橙子收量', ''),
(1071, 2, '552y.cc', '', 1, 1, '2022-07-11 17:30:11', '2022-06-28 11:51:36', '0628_51', NULL),
(1072, 2, '980a.cc', '', 1, 1, '2022-07-11 17:30:11', '2022-06-28 11:51:36', '0628_52', NULL),
(1073, 2, '502j.cc', '', 1, 1, '2022-07-11 17:30:12', '2022-06-28 11:51:36', '0628_53', NULL),
(1074, 2, '634b.cc', '', 1, 1, '2022-07-11 17:30:12', '2022-06-28 11:51:36', '0628_54', NULL),
(1075, 2, '659u.cc', '', 1, 1, '2022-07-11 17:30:12', '2022-06-28 11:51:36', '0628_55', NULL),
(1076, 2, '997u.cc', 'https://wmtg02.com/?channelCode=htx_1', 1, 1, '2022-07-11 17:30:12', '2022-06-28 11:51:36', '和天下', ''),
(1077, 2, '449g.cc', '', 1, 1, '2022-07-11 17:30:12', '2022-06-28 11:51:36', '0628_57', NULL),
(1078, 2, '766h.cc', 'https://wmtg03.com/?channelCode=zdd_1', 1, 1, '2022-07-11 17:30:13', '2022-06-28 11:51:36', '朱郑茂', ''),
(1079, 2, '157w.cc', 'https://wmtg03.com/?channelCode=zdd_1', 1, 1, '2022-07-11 17:30:13', '2022-06-28 11:51:36', '朱郑茂', ''),
(1080, 2, '117i.cc', 'https://wmtg03.com/?channelCode=zdd_2', 1, 1, '2022-07-11 17:30:13', '2022-06-28 11:51:36', '朱郑茂', ''),
(1081, 2, '846c.cc', 'https://wmtg03.com/?channelCode=zdd_1', 1, 1, '2022-07-11 17:30:13', '2022-06-28 11:51:36', '朱郑茂', ''),
(1082, 2, '194z.cc', 'http://yaoyaohh15.com/?channelCode=LWUA6', 1, 1, '2022-07-11 17:30:13', '2022-06-28 11:51:36', '摆渡人', ''),
(1083, 2, '589c.cc', 'http://yaoyaohh15.com/?channelCode=4S75X', 1, 1, '2022-07-11 17:30:14', '2022-06-28 11:51:36', '摆渡人', ''),
(1084, 2, '441g.cc', 'http://yaoyaohh15.com/?channelCode=BBRC2', 1, 1, '2022-07-11 17:30:14', '2022-06-28 11:51:36', '摆渡人', ''),
(1085, 2, '384g.cc', '', 1, 1, '2022-07-11 17:30:14', '2022-06-28 11:51:36', '0628_65', NULL),
(1086, 2, '821i.cc', 'https://wmtg02.com/?channelCode=htx_1', 1, 1, '2022-07-11 17:30:14', '2022-06-28 11:51:36', '和天下', ''),
(1087, 2, '994k.cc', 'http://yaoyaohh14.com/?channelCode=9LPG6', 1, 1, '2022-07-11 17:30:14', '2022-06-28 11:51:36', '阳光', ''),
(1088, 2, '756g.cc', 'http://yaoyaohh15.com/?channelCode=RRD7N', 1, 1, '2022-07-11 17:30:15', '2022-06-28 11:51:36', '楠枫', ''),
(1089, 2, '785z.cc', 'http://yaoyaohh15.com/?channelCode=T5PVX', 1, 1, '2022-07-11 17:30:15', '2022-06-28 11:51:36', '大牛', ''),
(1090, 2, '691w.cc', 'http://yaoyaohh15.com/?channelCode=LKWZD', 1, 1, '2022-07-11 17:30:15', '2022-06-28 11:51:36', '大牛', ''),
(1091, 2, '817y.cc', 'https://wmtg03.com/?channelCode=zdd_3', 1, 1, '2022-07-11 17:30:15', '2022-06-28 11:51:36', '朱郑茂', ''),
(1092, 2, '315c.cc', 'http://yaoyaohh14.com/?channelCode=V5XB4', 1, 1, '2022-07-11 17:30:15', '2022-06-28 11:51:36', '永隆1788', ''),
(1093, 2, '184d.cc', 'http://yaoyaohh14.com/?channelCode=YT7F6', 1, 1, '2022-07-11 17:30:16', '2022-06-28 11:51:36', '黄从良', ''),
(1094, 2, '616d.cc', 'http://yaoyaohh14.com/?channelCode=H9VZN', 1, 1, '2022-07-11 17:30:16', '2022-06-28 11:51:36', '橙子收量', ''),
(1095, 2, '451m.cc', 'http://yaoyaohh14.com/?channelCode=ELM5X', 1, 1, '2022-07-11 17:30:16', '2022-06-28 11:51:36', '橙子收量', ''),
(1096, 2, '614z.cc', 'http://yaoyaohh14.com/?channelCode=PM5KL', 1, 1, '2022-07-11 17:30:16', '2022-06-28 11:51:36', '橙子收量', ''),
(1097, 2, '396g.cc', 'http://yaoyaohh14.com/?channelCode=JU4A4', 1, 1, '2022-07-11 17:30:17', '2022-06-28 11:51:36', '橙子收量', ''),
(1098, 2, '393y.cc', 'http://yaoyaohh15.com/?channelCode=L9R3P', 1, 1, '2022-07-11 17:30:17', '2022-06-28 11:51:36', 'GZ_seve', ''),
(1099, 2, '152v.cc', 'http://yaoyaohh14.com/?channelCode=7JD5X', 1, 1, '2022-07-11 17:30:17', '2022-06-28 11:51:36', '黄从良', ''),
(1100, 2, '169t.cc', 'http://yaoyaohh14.com/?channelCode=5FW5L', 1, 1, '2022-07-11 17:30:17', '2022-06-28 11:51:36', '黄从良', ''),
(1101, 2, '944b.cc', 'http://yaoyaohh16.com/?channelCode=4V3N4', 1, 1, '2022-07-11 17:30:18', '2022-06-28 11:51:36', '悟空', ''),
(1102, 2, '216c.cc', 'http://yaoyaohh14.com/?channelCode=44YDR', 1, 1, '2022-07-11 17:30:18', '2022-06-28 11:51:36', '天空', ''),
(1103, 2, '223v.cc', 'http://yaoyaohh15.com/?channelCode=6HRSX', 1, 1, '2022-07-11 17:30:18', '2022-06-28 11:51:36', 'NK', ''),
(1104, 2, '414y.cc', 'http://yaoyaohh15.com/?channelCode=JTD63', 1, 1, '2022-07-11 17:30:18', '2022-06-28 11:51:36', '和天下', ''),
(1105, 2, '372r.cc', 'http://yaoyaohh15.com/?channelCode=6HRSX', 1, 1, '2022-07-11 17:30:18', '2022-06-28 11:51:36', 'NK', ''),
(1106, 2, '337j.cc', 'http://yaoyaohh10.com/?channelCode=STXEY', 1, 1, '2022-07-11 17:30:18', '2022-06-28 11:51:36', '朱郑茂', ''),
(1107, 2, '347d.cc', 'http://yaoyaohh16.com/?channelCode=Z5CHP', 1, 1, '2022-07-11 17:30:19', '2022-06-28 11:51:36', '秒哥', ''),
(1108, 2, '757v.cc', 'http://yaoyaohh10.com/?channelCode=STXEY', 1, 1, '2022-07-11 17:30:19', '2022-06-28 11:51:36', '朱郑茂', ''),
(1109, 2, '885y.cc', 'http://yaoyaohh10.com/?channelCode=STXEY', 1, 1, '2022-07-11 17:30:19', '2022-06-28 11:51:36', '朱郑茂', '');

-- --------------------------------------------------------

--
-- 表的结构 `cy_godaddy`
--

CREATE TABLE IF NOT EXISTS `cy_godaddy` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID ',
  `domain` text NOT NULL COMMENT '域名',
  `host_record` varchar(100) NOT NULL DEFAULT '@' COMMENT '主机记录',
  `ip` varchar(100) NOT NULL DEFAULT '' COMMENT '记录值',
  `err_msg` text COMMENT '报错消息',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '1 正常 -1出错 是否有出错',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  `remarks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_godaddy`
--

INSERT INTO `cy_godaddy` (`id`, `uid`, `domain`, `host_record`, `ip`, `err_msg`, `status`, `addtime`, `remarks`) VALUES
(26, 2, '223a.cc\r\n238a.cc\r\n249a.cc\r\n274a.cc\r\n276a.cc\r\n278a.cc\r\n283a.cc\r\n284a.cc\r\n288a.cc\r\n289a.cc\r\n292a.cc\r\n293a.cc\r\n294a.cc\r\n296a.cc\r\n297a.cc\r\n299a.cc\r\n326a.cc\r\n336a.cc\r\n337a.cc\r\n342a.cc\r\n343a.cc\r\n346a.cc\r\n347a.cc\r\n376a.cc\r\n378a.cc\r\n384a.cc\r\n386a.cc\r\n388a.cc\r\n393a.cc\r\n398a.cc\r\n427a.cc\r\n429a.cc\r\n432a.cc\r\n438a.cc\r\n439a.cc\r\n443a.cc\r\n444a.cc\r\n446a.cc\r\n472a.cc\r\n466a.cc\r\n473a.cc\r\n478a.cc\r\n479a.cc\r\n524a.cc\r\n525a.cc\r\n554a.cc\r\n559a.cc\r\n564a.cc\r\n577a.cc\r\n598a.cc\r\n', '@', '154.83.12.135', '', 1, '2021-08-11 09:53:25', 'goddy未使用'),
(27, 2, '342b.com\r\n', '@', '154.83.12.135', '{"code":"UNKNOWN_DOMAIN","message":"The given domain is not registered, or does not have a zone file"}\n\r\n', -1, '2021-11-25 03:46:01', 'dd'),
(28, 2, '408g.com\r\n184r.com\r\n481r.com\r\n241q.com\r\n485n.com\r\n242n.com\r\n485q.com\r\n302z.com\r\n491n.com\r\n341p.com\r\n496j.com\r\n346z.com\r\n541t.com\r\n405j.com\r\n645k.com\r\n410d.com\r\n845j.com\r\n412r.com\r\n426k.com\r\n964k.com\r\n465x.com\r\n431y.com\r\n464d.com\r\n470j.com\r\n471q.com\r\n473e.com\r\n441q.com\r\n471t.com\r\n478y.com\r\n481j.com\r\n', '@', '154.92.15.211', '', 1, '2021-12-28 06:34:19', '1228未使用godaddy域名'),
(29, 2, '8366z.com\r\n845j.com\r\n848v.cc\r\n849q.com\r\n8599t.com\r\n85v.us\r\n8666q.com\r\n867t.cc\r\n8788g.com\r\n8799g.com\r\n883r.cc\r\n885s.cc\r\n886a.cc\r\n88h.us\r\n898n.cc\r\n8999e.com\r\n90f.us\r\n90v.us\r\n919s.cc\r\n919w.cc\r\n92c.us\r\n933x.cc\r\n934r.com\r\n9366g.com\r\n9366s.com\r\n9388s.com\r\n9399x.com\r\n944t.cc\r\n946u.com\r\n94v.us\r\n9588c.com\r\n964b.com\r\n964k.com\r\n9699u.com\r\n974r.com\r\n9899s.com\r\n9899u.com\r\n9899z.com\r\n\r\n', '@', '154.92.15.211', '{"code":"NOT_FOUND","message":"Not Found : The requested resource was not found"}\r\n', -1, '2022-05-30 04:55:30', 'gopay'),
(30, 2, '741z.com\r\n742q.com\r\n7566d.com\r\n772d.cc\r\n773h.cc\r\n773s.cc\r\n773w.cc\r\n775a.cc\r\n778m.cc\r\n778q.cc\r\n779d.cc\r\n77a.us\r\n77f.us\r\n77j.us\r\n77s.us\r\n7888u.com\r\n7899m.com\r\n794r.com\r\n798k.cc\r\n7999r.com\r\n80g.us\r\n811d.cc\r\n811s.cc\r\n812t.cc\r\n82e.us\r\n82r.us\r\n82u.us\r\n\r\n', '@', '154.92.15.211', '{"code":"NOT_FOUND","message":"Not Found : The requested resource was not found"}\r\n', -1, '2022-05-30 05:01:48', 'gopay'),
(31, 2, '58b.us\r\n598a.cc\r\n59d.us\r\n603j.com\r\n60h.us\r\n614p.com\r\n616x.cc\r\n618v.cc\r\n61h.us\r\n622f.cc\r\n6266p.com\r\n6399w.com\r\n641n.com\r\n645k.com\r\n646p.com\r\n64e.us\r\n6566v.com\r\n656f.cc\r\n657u.cc\r\n65h.us\r\n65s.us\r\n65w.us\r\n65z.us\r\n663c.cc\r\n663v.cc\r\n67f.us\r\n684q.com\r\n68t.us\r\n694p.com\r\n6999s.com\r\n699h.cc\r\n711r.cc\r\n716p.cc\r\n717v.cc\r\n71k.us\r\n721b.cc\r\n7388u.com\r\n738p.cc\r\n739h.cc\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:06:41', 'gopay'),
(32, 2, '58b.us\r\n598a.cc\r\n59d.us\r\n603j.com\r\n60h.us\r\n614p.com\r\n616x.cc\r\n618v.cc\r\n61h.us\r\n622f.cc\r\n6266p.com\r\n6399w.com\r\n641n.com\r\n645k.com\r\n646p.com\r\n64e.us\r\n6566v.com\r\n656f.cc\r\n657u.cc\r\n65h.us\r\n65s.us\r\n65w.us\r\n65z.us\r\n663c.cc\r\n663v.cc\r\n67f.us\r\n684q.com\r\n68t.us\r\n694p.com\r\n6999s.com\r\n699h.cc\r\n711r.cc\r\n716p.cc\r\n717v.cc\r\n71k.us\r\n721b.cc\r\n7388u.com\r\n738p.cc\r\n739h.cc\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:09:02', 'gopay'),
(33, 2, '535m.cc\r\n53h.us\r\n541t.com\r\n547z.com\r\n5499w.com\r\n551t.cc\r\n552d.cc\r\n554a.cc\r\n557x.cc\r\n557z.cc\r\n559a.cc\r\n559v.cc\r\n55u.us\r\n564a.cc\r\n5666p.com\r\n577a.cc\r\n577p.cc\r\n57t.us\r\n57u.us\r\n587d.cc\r\n5899q.com\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:17:15', 'gopay'),
(34, 2, '466h.cc\r\n470j.com\r\n471q.com\r\n471t.com\r\n472a.cc\r\n473a.cc\r\n473e.com\r\n474q.com\r\n477p.cc\r\n478a.cc\r\n478y.com\r\n479a.cc\r\n479v.cc\r\n47f.us\r\n481j.com\r\n481r.com\r\n485n.com\r\n485q.com\r\n485t.cc\r\n48v.us\r\n491g.com\r\n491n.com\r\n494j.com\r\n495r.com\r\n496j.com\r\n511k.cc\r\n51k.us\r\n524a.cc\r\n525a.cc\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:19:21', 'gopay'),
(35, 2, '391q.cc\r\n393a.cc\r\n3966s.com\r\n398a.cc\r\n3999x.com\r\n399u.cc\r\n399x.cc\r\n39j.us\r\n405j.com\r\n408g.com\r\n410d.com\r\n412r.com\r\n41y.us\r\n426k.com\r\n427a.cc\r\n429a.cc\r\n429h.com\r\n431y.com\r\n432a.cc\r\n433m.cc\r\n436a.cc\r\n438a.cc\r\n439a.cc\r\n43n.us\r\n441q.com\r\n443a.cc\r\n444a.cc\r\n446a.cc\r\n464d.com\r\n465x.com\r\n466a.cc\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:21:33', 'gopay'),
(36, 2, '302z.com\r\n313a.cc\r\n31n.us\r\n321q.cc\r\n326a.cc\r\n32f.us\r\n331x.cc\r\n334h.cc\r\n336a.cc\r\n337a.cc\r\n341p.com\r\n342a.cc\r\n343a.cc\r\n346a.cc\r\n346z.com\r\n347a.cc\r\n3666b.com\r\n3666t.com\r\n376a.cc\r\n377n.cc\r\n378a.cc\r\n37f.us\r\n37q.us\r\n37r.us\r\n384a.cc\r\n386a.cc\r\n386t.cc\r\n387g.cc\r\n3888z.com\r\n388a.cc\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:23:40', 'gopay'),
(37, 2, '242n.com\r\n249a.cc\r\n259x.cc\r\n274a.cc\r\n276a.cc\r\n278a.cc\r\n27a.us\r\n283a.cc\r\n284a.cc\r\n2866p.com\r\n288a.cc\r\n289a.cc\r\n292a.cc\r\n293a.cc\r\n294a.cc\r\n296a.cc\r\n297a.cc\r\n2988u.com\r\n299a.cc\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:27:38', 'gopay'),
(38, 2, '001r.cc\r\n106r.com\r\n114b.cc\r\n116s.cc\r\n155e.cc\r\n155q.cc\r\n158w.cc\r\n16t.us\r\n176t.cc\r\n177t.cc\r\n184r.com\r\n185d.cc\r\n187v.cc\r\n198u.cc\r\n199y.cc\r\n223a.cc\r\n22n.us\r\n238a.cc\r\n241q.com\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:29:25', 'gopay'),
(39, 2, '741z.com\r\n742q.com\r\n7566d.com\r\n772d.cc\r\n773h.cc\r\n773s.cc\r\n773w.cc\r\n775a.cc\r\n778m.cc\r\n778q.cc\r\n779d.cc\r\n77a.us\r\n77f.us\r\n77j.us\r\n77s.us\r\n7888u.com\r\n7899m.com\r\n794r.com\r\n798k.cc\r\n7999r.com\r\n80g.us\r\n811d.cc\r\n811s.cc\r\n812t.cc\r\n82e.us\r\n82r.us\r\n82u.us\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:32:35', 'gopay'),
(40, 2, '919w.cc\r\n92c.us\r\n933x.cc\r\n934r.com\r\n9366g.com\r\n9366s.com\r\n9388s.com\r\n9399x.com\r\n944t.cc\r\n946u.com\r\n94v.us\r\n9588c.com\r\n964b.com\r\n964k.com\r\n9699u.com\r\n974r.com\r\n9899s.com\r\n9899u.com\r\n9899z.com\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:36:35', 'gopay'),
(41, 2, '8366z.com\r\n845j.com\r\n848v.cc\r\n849q.com\r\n8599t.com\r\n85v.us\r\n8666q.com\r\n867t.cc\r\n8788g.com\r\n8799g.com\r\n883r.cc\r\n885s.cc\r\n886a.cc\r\n88h.us\r\n898n.cc\r\n8999e.com\r\n90f.us\r\n90v.us\r\n919s.cc\r\n', '@', '154.92.15.211', '', 1, '2022-05-30 05:38:14', 'gopay'),
(42, 2, '23232.com\r\n', '@', '154.83.12.135', '{"code":"UNKNOWN_DOMAIN","message":"The given domain is not registered, or does not have a zone file"}\n\r\n', -1, '2022-05-30 06:26:09', '22'),
(43, 2, '770h.cc\r\n867y.cc\r\n153j.cc\r\n939i.cc\r\n925z.cc\r\n325b.cc\r\n511w.cc\r\n915y.cc\r\n282y.cc\r\n393w.cc\r\n361n.cc\r\n314p.cc\r\n172e.cc\r\n723i.cc\r\n101x.cc\r\n799s.cc\r\n998h.cc\r\n415e.cc\r\n724a.cc\r\n523i.cc\r\n', '@', '154.92.15.211', '', 1, '2022-06-28 11:44:54', '0628'),
(44, 2, '395h.cc\r\n582p.cc\r\n139f.cc\r\n216y.cc\r\n422n.cc\r\n541y.cc\r\n648d.cc\r\n625f.cc\r\n616h.cc\r\n767h.cc\r\n313n.cc\r\n443t.cc\r\n134w.cc\r\n142g.cc\r\n655w.cc\r\n427n.cc\r\n169x.cc\r\n364q.cc\r\n641w.cc\r\n765t.cc\r\n167z.cc\r\n313e.cc\r\n110h.cc\r\n177u.cc\r\n699j.cc\r\n423b.cc\r\n382c.cc\r\n929m.cc\r\n632y.cc\r\n198x.cc\r\n', '@', '154.92.15.211', '', 1, '2022-06-28 11:47:00', '0628'),
(45, 2, '552y.cc\r\n980a.cc\r\n502j.cc\r\n634b.cc\r\n659u.cc\r\n997u.cc\r\n449g.cc\r\n766h.cc\r\n157w.cc\r\n117i.cc\r\n846c.cc\r\n194z.cc\r\n589c.cc\r\n441g.cc\r\n384g.cc\r\n821i.cc\r\n994k.cc\r\n756g.cc\r\n785z.cc\r\n691w.cc\r\n817y.cc\r\n315c.cc\r\n184d.cc\r\n616d.cc\r\n451m.cc\r\n614z.cc\r\n396g.cc\r\n393y.cc\r\n152v.cc\r\n169t.cc\r\n944b.cc\r\n216c.cc\r\n223v.cc\r\n414y.cc\r\n372r.cc\r\n337j.cc\r\n347d.cc\r\n757v.cc\r\n885y.cc\r\n', '@', '154.92.15.211', '', 1, '2022-06-28 11:49:12', '0628');

-- --------------------------------------------------------

--
-- 表的结构 `cy_link`
--

CREATE TABLE IF NOT EXISTS `cy_link` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT '站标',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'IP',
  `o` int(11) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_link`
--

INSERT INTO `cy_link` (`id`, `title`, `url`, `logo`, `ip`, `o`) VALUES
(1, 'ninglepaio', 'http://ninglepai.com', '', '', 0),
(2, '老司机', 'http://ninglepai.com', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `cy_log`
--

CREATE TABLE IF NOT EXISTS `cy_log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `log` text NOT NULL COMMENT '日志',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'IP',
  `t` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间'
) ENGINE=InnoDB AUTO_INCREMENT=2907 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_log`
--

INSERT INTO `cy_log` (`id`, `username`, `log`, `ip`, `t`) VALUES
(2329, 'test', '登录成功。', '8.210.71.200', 1642663285),
(2330, 'test', '登录成功。', '23.91.96.54', 1642673886),
(2331, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=8KUE3","tj_code":""}', '23.91.96.54', 1642830995),
(2332, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=CQN3P","tj_code":""}', '23.91.96.54', 1642831017),
(2333, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=799QQ","tj_code":""}', '23.91.96.54', 1642831036),
(2334, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=XH7FM","tj_code":""}', '23.91.96.54', 1642831053),
(2335, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=QLD2H","tj_code":""}', '23.91.96.54', 1642831077),
(2336, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=B5LDS","tj_code":""}', '23.91.96.54', 1642831096),
(2337, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=PRZU7","tj_code":""}', '23.91.96.54', 1642831116),
(2338, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=U2FJB","tj_code":""}', '23.91.96.54', 1642831135),
(2339, 'test', '修改dwz，data：{"remarks":"\\u9648\\u540c\\u6c5f\\u65b0","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=ZR2MK","tj_code":""}', '23.91.96.54', 1642831162),
(2340, 'test', '登录成功。', '8.210.71.200', 1642848068),
(2341, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/1218yytt13.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1642848094),
(2342, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/1218yytt13.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1642848112),
(2343, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=9EJ8V","tj_code":""}', '8.210.71.200', 1642848196),
(2344, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1642848235),
(2345, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=9EJ8V","tj_code":""}', '8.210.71.200', 1642848288),
(2346, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1642848319),
(2347, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=9EJ8V","tj_code":""}', '8.210.71.200', 1642848366),
(2348, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1642848395),
(2349, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=9EJ8V","tj_code":""}', '8.210.71.200', 1642848418),
(2350, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1642848448),
(2351, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=9EJ8V","tj_code":""}', '8.210.71.200', 1642848494),
(2352, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=CCMX8","tj_code":""}', '8.210.71.200', 1642848589),
(2353, 'test', '登录成功。', '8.210.71.200', 1642924378),
(2354, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=GFGRY","tj_code":""}', '8.210.71.200', 1642924421),
(2355, 'test', '登录成功。', '8.210.71.200', 1643093027),
(2356, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=RC9DK","tj_code":""}', '8.210.71.200', 1643093272),
(2357, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/1218yytt13.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643093328),
(2358, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty11.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643093390),
(2359, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=Q9L2R","tj_code":""}', '8.210.71.200', 1643093466),
(2360, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty11.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643099570),
(2361, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty11.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643099615),
(2362, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=LEMAN","tj_code":""}', '8.210.71.200', 1643099642),
(2363, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty12.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643099676),
(2364, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty09.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643099714),
(2365, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty09.com\\/?channelCode=7G8WE","tj_code":""}', '8.210.71.200', 1643099755),
(2366, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty09.com\\/?channelCode=9ZA64","tj_code":""}', '8.210.71.200', 1643099804),
(2367, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=GWHTJ","tj_code":""}', '8.210.71.200', 1643099868),
(2368, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=88RHD","tj_code":""}', '8.210.71.200', 1643100099),
(2369, 'test', '登录成功。', '23.91.96.54', 1643120534),
(2370, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=KDJD4","tj_code":""}', '23.91.96.54', 1643120811),
(2371, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt03.com\\/?channelCode=C4TBH","tj_code":""}', '23.91.96.54', 1643120912),
(2372, 'test', '登录成功。', '8.210.71.200', 1643174298),
(2373, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=KDJD4","tj_code":""}', '8.210.71.200', 1643174585),
(2374, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=C4TBH","tj_code":""}', '8.210.71.200', 1643174654),
(2375, 'test', '登录成功。', '23.91.96.54', 1643266654),
(2376, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1228yytt13.com\\/?channelCode=STXEY","tj_code":""}', '23.91.96.54', 1643266689),
(2377, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1228yytt13.com\\/?channelCode=STXEY","tj_code":""}', '23.91.96.54', 1643266712),
(2378, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1228yytt13.com\\/?channelCode=STXEY","tj_code":""}', '23.91.96.54', 1643266726),
(2379, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1228yytt13.com\\/?channelCode=STXEY","tj_code":""}', '23.91.96.54', 1643266968),
(2380, 'test', '登录成功。', '8.210.71.200', 1643348905),
(2381, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/1218yytt11.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643348927),
(2382, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=49NX2","tj_code":""}', '8.210.71.200', 1643348983),
(2383, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt18.com\\/?channelCode=C4TBH","tj_code":""}', '8.210.71.200', 1643434695),
(2384, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1218yytt18.com\\/?channelCode=KDJD4","tj_code":""}', '8.210.71.200', 1643440003),
(2385, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=KDJD4","tj_code":""}', '8.210.71.200', 1643603027),
(2386, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=C4TBH","tj_code":""}', '8.210.71.200', 1643603066),
(2387, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty11.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643617635),
(2388, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=DLX8Q","tj_code":""}', '8.210.71.200', 1643618145),
(2389, 'test', '登录成功。', '103.210.236.219', 1643718276),
(2390, 'test', '修改dwz，data：{"remarks":"\\u7f8e\\u56fd100\\u5ba2\\u670d","type":1,"url":"https:\\/\\/uki.alwdreebs.com\\/chatWindow.aspx?siteId=60003767&planId=b4d42f3b-9f32-4490-a58a-45b047e728b5#","tj_code":""}', '103.210.236.219', 1643718334),
(2391, 'test', '登录成功。', '8.210.71.200', 1643790777),
(2392, 'test', '修改dwz，data：{"remarks":"\\u672a\\u4f7f\\u7528","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1643790790),
(2393, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt03.com\\/?channelCode=DLX8Q","tj_code":""}', '8.210.71.200', 1643790830),
(2394, 'test', '登录成功。', '8.210.71.200', 1644040391),
(2395, 'test', '修改dwz，data：{"remarks":"\\u77ed\\u4fe1\\u4e13\\u7528","type":1,"url":"http:\\/\\/1228yytt19.com\\/?channelCode=8L9F5","tj_code":""}', '8.210.71.200', 1644040639),
(2396, 'test', '登录成功。', '8.210.71.200', 1644233388),
(2397, 'test', '修改dwz，data：{"remarks":"\\u77ed\\u4fe1\\u4e13\\u7528","type":1,"url":"http:\\/\\/1228yytt14.com\\/?channelCode=8L9F5","tj_code":""}', '8.210.71.200', 1644233449),
(2398, 'test', '登录成功。', '103.210.236.219', 1644396416),
(2399, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1228yytt13.com\\/?channelCode=6VPCX","tj_code":""}', '103.210.236.219', 1644396441),
(2400, 'test', '登录成功。', '8.210.71.200', 1644403679),
(2401, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=C4TBH","tj_code":""}', '8.210.71.200', 1644403720),
(2402, 'test', '登录成功。', '8.210.71.200', 1644490939),
(2403, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=XBC3G","tj_code":""}', '8.210.71.200', 1644491148),
(2404, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=ZB4KS","tj_code":""}', '8.210.71.200', 1644491176),
(2405, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=862JJ","tj_code":""}', '8.210.71.200', 1644491218),
(2406, 'test', '用户或密码错误。', '118.150.195.232', 1644645141),
(2407, 'test', '登录成功。', '23.91.96.54', 1644645407),
(2408, 'test', '登录成功。', '8.210.71.200', 1644741536),
(2409, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=6T8TY","tj_code":""}', '8.210.71.200', 1644741808),
(2410, 'test', '修改dwz，data：{"remarks":"\\u62a5\\u7ea2\\u6253\\u4e0d\\u5f00","type":1,"url":"http:\\/\\/yaoyaoty11.com\\/?channelCode=","tj_code":""}', '8.210.71.200', 1644741877),
(2411, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=4ST4V","tj_code":""}', '8.210.71.200', 1644741968),
(2412, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=43YME","tj_code":""}', '8.210.71.200', 1644742008),
(2413, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=JP69W","tj_code":""}', '8.210.71.200', 1644749800),
(2414, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=V58D3","tj_code":""}', '8.210.71.200', 1644749904),
(2415, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=RC9DK","tj_code":""}', '8.210.71.200', 1644749966),
(2416, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=Q9L2R","tj_code":""}', '8.210.71.200', 1644750009),
(2417, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=LEMAN","tj_code":""}', '8.210.71.200', 1644750109),
(2418, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=GWHTJ","tj_code":""}', '8.210.71.200', 1644750145),
(2419, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=88RHD","tj_code":""}', '8.210.71.200', 1644750186),
(2420, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=4BBL3","tj_code":""}', '8.210.71.200', 1644750495),
(2421, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/1228yytt12.com\\/?channelCode=LW4DY","tj_code":""}', '8.210.71.200', 1644750526),
(2422, 'test', '登录成功。', '23.91.96.54', 1644843706),
(2423, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1228yytt20.com\\/?channelCode=STXEY","tj_code":""}', '23.91.96.54', 1644843730),
(2424, 'test', '用户或密码错误。', '198.13.42.242', 1644893281),
(2425, 'admin', '登录成功。', '198.13.42.242', 1644893296),
(2426, 'admin', '修改用户信息，UID：2', '198.13.42.242', 1644893481),
(2427, 'admin', '修改用户信息，UID：4', '198.13.42.242', 1645064678),
(2428, 'admin', '修改用户信息，UID：3', '198.13.42.242', 1645064691),
(2429, 'admin', '删除横幅，ID：214', '198.13.42.242', 1645064722),
(2430, 'test', '用户或密码错误。', '103.210.236.219', 1645166285),
(2431, 'test', '用户或密码错误。', '103.210.236.219', 1645166308),
(2432, 'test', '用户或密码错误。', '103.210.236.219', 1645166331),
(2433, 'test', '用户或密码错误。', '103.210.236.219', 1645166663),
(2434, 'test', '用户或密码错误。', '103.210.236.219', 1645166693),
(2435, 'test', '用户或密码错误。', '103.210.236.219', 1645166711),
(2436, 'test', '用户或密码错误。', '103.210.236.219', 1645167421),
(2437, 'test', '用户或密码错误。', '103.210.236.219', 1645167442),
(2438, 'test', '用户或密码错误。', '103.210.236.219', 1645167455),
(2439, 'test', '用户或密码错误。', '103.210.236.219', 1645167893),
(2440, 'test', '用户或密码错误。', '103.210.236.219', 1645167901),
(2441, 'admin', '登录成功。', '198.13.42.242', 1645170682),
(2442, 'admin', '修改用户信息，UID：2', '198.13.42.242', 1645170870),
(2443, 'test', '登录成功。', '198.13.42.242', 1645170892),
(2444, 'test', '登录成功。', '103.210.236.219', 1645171042),
(2445, 'test', '登录成功。', '103.210.236.219', 1645515803),
(2446, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/1218yytt18.com\\/?code=N5ALV","tj_code":""}', '103.210.236.219', 1645515830),
(2447, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/1218yytt18.com\\/?code=N5ALV","tj_code":""}', '103.210.236.219', 1645515856),
(2448, 'test', '修改dwz，data：{"remarks":"\\u738b\\u5065\\u6797","type":1,"url":"http:\\/\\/1218yytt18.com\\/?code=SEGSV","tj_code":""}', '103.210.236.219', 1645516510),
(2449, 'test', '登录成功。', '103.210.236.219', 1645543402),
(2450, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1218yytt12.com\\/?channelCode=SM5FZ","tj_code":""}', '103.210.236.219', 1645543432),
(2451, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1218yytt12.com\\/?channelCode=4kL6C","tj_code":""}', '103.210.236.219', 1645543453),
(2452, 'test', '登录成功。', '103.210.236.219', 1645616696),
(2453, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"https:\\/\\/xxxx.qyptfkr.cn\\/1\\/index.html?channelCode=9ZVB3","tj_code":""}', '103.210.236.219', 1645616747),
(2454, 'test', '登录成功。', '103.210.236.219', 1645721736),
(2455, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1228yytt13.com\\/?channelCode=6VPCX","tj_code":""}', '103.210.236.219', 1645722023),
(2456, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/1218yytt12.com\\/?channelCode=SM5FZ","tj_code":""}', '103.210.236.219', 1645722054),
(2457, 'test', '登录成功。', '8.210.71.200', 1645777268),
(2458, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh04.com\\/?channelCode=6VPCX","tj_code":""}', '8.210.71.200', 1645778084),
(2459, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh04.com\\/?channelCode=SM5FZ","tj_code":""}', '8.210.71.200', 1645778109),
(2460, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh04.com\\/?channelCode=4KL6C","tj_code":""}', '8.210.71.200', 1645778134),
(2461, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh04.com\\/?channelCode=STXEY","tj_code":""}', '8.210.71.200', 1645778164),
(2462, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh04.com\\/?channelCode=STXEY","tj_code":""}', '8.210.71.200', 1645778235),
(2463, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh04.com\\/?channelCode=STXEY","tj_code":""}', '8.210.71.200', 1645778248),
(2464, 'test', '用户或密码错误。', '103.210.236.219', 1645851993),
(2465, 'test', '登录成功。', '103.210.236.219', 1645852017),
(2466, 'test', '登录成功。', '8.210.71.200', 1645932632),
(2467, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=AND9X","tj_code":""}', '8.210.71.200', 1645932652),
(2468, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=7YA4E","tj_code":""}', '8.210.71.200', 1645932683),
(2469, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=A2H2B","tj_code":""}', '8.210.71.200', 1645932710),
(2470, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=V7YYE","tj_code":""}', '8.210.71.200', 1645932761),
(2471, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=V7YYE","tj_code":""}', '8.210.71.200', 1645933122),
(2472, 'test', '登录成功。', '103.210.236.219', 1646124080),
(2473, 'test', '修改dwz，data：{"remarks":"\\u624b\\u673a\\u53f7\\u77ed\\u4fe1","type":1,"url":"http:\\/\\/yaoyaohh05.com\\/?channelCode=XA3Q4","tj_code":""}', '103.210.236.219', 1646124165),
(2474, 'test', '修改dwz，data：{"remarks":"\\u624b\\u673a\\u77ed\\u4fe1\\u63a8\\u5e7f","type":1,"url":"http:\\/\\/yaoyaohh05.com\\/?channelCode=XA3Q4","tj_code":""}', '103.210.236.219', 1646195681),
(2475, 'test', '登录成功。', '113.61.47.164', 1646372672),
(2476, 'test', '修改dwz，data：{"remarks":"\\u4e00\\u624b\\u7efc\\u5408\\u6599","type":1,"url":"http:\\/\\/yaoyaohh05.com\\/?channelCode=A4M9H","tj_code":""}', '113.61.47.164', 1646372964),
(2477, 'test', '登录成功。', '47.242.34.155', 1646468978),
(2478, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh06.com\\/?channelCode=STXEY","tj_code":""}', '47.242.34.155', 1646469743),
(2479, 'test', '修改dwz，data：{"remarks":"colour","type":1,"url":"http:\\/\\/yaoyaohh06.com\\/?channelCode=STXEY","tj_code":""}', '113.61.47.164', 1646469967),
(2480, 'test', '登录成功。', '113.61.47.164', 1646629153),
(2481, 'test', '登录成功。', '47.242.34.155', 1646635661),
(2482, 'test', '修改dwz，data：{"remarks":"\\u5168\\u987a","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=2WYL4","tj_code":""}', '47.242.34.155', 1646635727),
(2483, 'test', '修改dwz，data：{"remarks":"\\u5168\\u987a","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=PW4M5","tj_code":""}', '47.242.34.155', 1646636881),
(2484, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"https:\\/\\/xxxx.qyptfkr.cn\\/1\\/index.html?channelCode=9ZVB3","tj_code":""}', '47.242.34.155', 1646737515),
(2485, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh06.com\\/?channelCode=N5ALV","tj_code":""}', '47.242.34.155', 1646740027),
(2486, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh06.com\\/?channelCode=N5ALV","tj_code":""}', '47.242.34.155', 1646740044),
(2487, 'test', '修改dwz，data：{"remarks":"\\u548c\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=JTD63","tj_code":""}', '47.242.34.155', 1647075660),
(2488, 'admin', '登录成功。', '198.13.42.242', 1647570035),
(2489, 'admin', '修改用户信息，UID：2', '198.13.42.242', 1647570073),
(2490, 'test', '用户或密码错误。', '198.13.42.242', 1647570088),
(2491, 'test', '用户或密码错误。', '198.13.42.242', 1647570101),
(2492, 'admin', '登录成功。', '198.13.42.242', 1647570121),
(2493, 'admin', '修改用户信息，UID：2', '198.13.42.242', 1647570428),
(2494, 'admin', '修改用户组，ID：2', '198.13.42.242', 1647570460),
(2495, 'test', '登录成功。', '103.210.236.219', 1647615041),
(2496, 'admin', '修改用户组，ID：2', '198.13.42.242', 1647651506),
(2497, 'test', '登录成功。', '103.210.236.219', 1647660727),
(2498, 'test', '登录成功。', '198.13.42.242', 1647829818),
(2499, 'test', '登录成功。', '222.209.157.234', 1647928179),
(2500, 'test', '登录成功。', '222.209.157.234', 1647929387),
(2501, 'test', '登录成功。', '103.210.236.219', 1648101016),
(2502, 'test', '删除横幅，ID：723', '103.210.236.219', 1648101589),
(2503, 'test', '登录成功。', '113.61.47.164', 1648541797),
(2504, 'test', '修改dwz，data：{"remarks":"GOPAY\\u4e13\\u7528","type":1,"url":"http:\\/\\/gopay00114.com","tj_code":""}', '113.61.47.164', 1648542125),
(2505, 'test', '登录成功。', '103.210.236.219', 1648723027),
(2506, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"https:\\/\\/xxxx.qyptfkr.cn\\/1\\/index.html?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1648723186),
(2507, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"https:\\/\\/xxxx.qyptfkr.cn\\/1\\/index.html?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1648723210),
(2508, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh08.com\\/?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1648726069),
(2509, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh08.com\\/?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1648726092),
(2510, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh08.com\\/?channelCode=4KL6C","tj_code":""}', '103.210.236.219', 1648726513),
(2511, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=SM5FZ","tj_code":""}', '103.210.236.219', 1648795126),
(2512, 'test', '登录成功。', '103.210.236.219', 1648976267),
(2513, 'test', '登录成功。', '103.210.236.219', 1649137771),
(2514, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=AND9X","tj_code":""}', '103.210.236.219', 1649137806),
(2515, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=7YA4E","tj_code":""}', '103.210.236.219', 1649137832),
(2516, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=A2H2B","tj_code":""}', '103.210.236.219', 1649137860),
(2517, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=V7YYE","tj_code":""}', '103.210.236.219', 1649137885),
(2518, 'test', '登录成功。', '103.210.236.219', 1649155106),
(2519, 'test', '修改dwz，data：{"remarks":"\\u6b27\\u9633","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=ME7JT","tj_code":""}', '103.210.236.219', 1649155156),
(2520, 'test', '修改dwz，data：{"remarks":"\\u6b27\\u9633","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=ME7JT","tj_code":""}', '103.210.236.219', 1649155618),
(2521, 'test', '登录成功。', '113.61.47.164', 1649318899),
(2522, 'test', '修改dwz，data：{"remarks":"GOPAY\\u4e13\\u7528","type":1,"url":"http:\\/\\/gopay025.com","tj_code":""}', '113.61.47.164', 1649318911),
(2523, 'test', '登录成功。', '103.210.236.219', 1649408760),
(2524, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=D547U","tj_code":""}', '103.210.236.219', 1649408788),
(2525, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=XJKA3","tj_code":""}', '103.210.236.219', 1649408825),
(2526, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=D547U","tj_code":""}', '103.210.236.219', 1649408860),
(2527, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=D547U","tj_code":""}', '103.210.236.219', 1649413445),
(2528, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=XJKA3","tj_code":""}', '103.210.236.219', 1649413499),
(2529, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u8272\\u91d1\\u5c5e","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=F4LLP","tj_code":""}', '103.210.236.219', 1649650678),
(2530, 'admin', '登录成功。', '198.13.42.242', 1649654811),
(2531, 'admin', '修改个人资料，ID：1', '198.13.42.242', 1649654835),
(2532, 'admin', '登录成功。', '198.13.42.242', 1649654857),
(2533, 'admin', '登录成功。', '198.13.42.242', 1649658771),
(2534, 'test', '登录成功。', '198.13.42.242', 1649658825),
(2535, 'test', '登录成功。', '103.210.236.219', 1649659256),
(2536, 'test', '登录成功。', '47.242.193.138', 1649760753),
(2537, 'test', '修改dwz，data：{"remarks":"\\u609f\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=9Z7Y2","tj_code":""}', '47.242.193.138', 1649761532),
(2538, 'test', '修改dwz，data：{"remarks":"\\u609f\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=9JJ3M","tj_code":""}', '47.242.193.138', 1649761564),
(2539, 'test', '修改dwz，data：{"remarks":"\\u5468\\u96ea\\u513f","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=7TN82","tj_code":""}', '103.210.236.219', 1649824720),
(2540, 'admin', '用户或密码错误。', '127.0.0.1', 1649948486),
(2541, 'test', '修改dwz，data：{"remarks":"\\u4fe1\\u4ef0","type":1,"url":"http:\\/\\/yaoyaohh05.com\\/?channelCode=AV95G","tj_code":""}', '103.210.236.219', 1650006675),
(2542, 'test', '修改dwz，data：{"remarks":"\\u4fe1\\u4ef0","type":1,"url":"http:\\/\\/yaoyaohh05.com\\/?channelCode=AV95G","tj_code":""}', '103.210.236.219', 1650006735),
(2543, 'test', '登录成功。', '113.61.47.164', 1650078800),
(2544, 'test', '修改dwz，data：{"remarks":"GOPAY\\u4e13\\u7528","type":1,"url":"http:\\/\\/gopay00137.com","tj_code":""}', '113.61.47.164', 1650078848),
(2545, 'test', '登录成功。', '103.210.236.219', 1650297620),
(2546, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh03.com\\/?channelCode=6VPCX","tj_code":""}', '103.210.236.219', 1650297850),
(2547, 'test', '登录成功。', '103.210.236.219', 1650348596),
(2548, 'test', '修改dwz，data：{"remarks":"\\u5468\\u96ea\\u513f","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=7TN82","tj_code":""}', '103.210.236.219', 1650348763),
(2549, 'test', '登录成功。', '103.210.236.219', 1650649058),
(2550, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1650649647),
(2551, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1650649663),
(2552, 'test', '登录成功。', '103.210.236.219', 1650687897),
(2553, 'test', '修改dwz，data：{"remarks":"\\u6b27\\u9633","type":1,"url":"http:\\/\\/yaoyaohh09.com\\/?channelCode=ME7JT","tj_code":""}', '103.210.236.219', 1650689107),
(2554, 'test', '修改dwz，data：{"remarks":"\\u4fe1\\u4ef0","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=AV95G","tj_code":""}', '103.210.236.219', 1650690950),
(2555, 'test', '修改dwz，data：{"remarks":"\\u4fe1\\u4ef0","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=AV95G","tj_code":""}', '103.210.236.219', 1650690967),
(2556, 'test', '修改dwz，data：{"remarks":"\\u9694\\u58c1\\u8001\\u738b","type":1,"url":"http:\\/\\/yaoyaohh12.com\\/?channelCode=X875D","tj_code":""}', '103.210.236.219', 1650704032),
(2557, 'test', '修改dwz，data：{"remarks":"\\u8d62\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=FLDEN","tj_code":""}', '103.210.236.219', 1650963424),
(2558, 'test', '登录成功。', '113.61.47.164', 1650969731),
(2559, 'test', '修改dwz，data：{"remarks":"\\u77ed\\u4fe1\\u4e13\\u7528","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=8L9F5","tj_code":""}', '113.61.47.164', 1650970020),
(2560, 'test', '修改dwz，data：{"remarks":"\\u624b\\u673a\\u77ed\\u4fe1\\u63a8\\u5e7f","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=XA3Q4","tj_code":""}', '113.61.47.164', 1650970036),
(2561, 'test', '修改dwz，data：{"remarks":"\\u4e00\\u624b\\u7efc\\u5408\\u6599","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=A4M9H","tj_code":""}', '113.61.47.164', 1650970052),
(2562, 'test', '修改dwz，data：{"remarks":"\\u77ed\\u4fe1\\u4e13\\u7528","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=8L9F5","tj_code":""}', '113.61.47.164', 1650970215),
(2563, 'test', '修改dwz，data：{"remarks":"\\u77ed\\u4fe1\\u4e13\\u7528","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=8L9F5","tj_code":""}', '113.61.47.164', 1650970742),
(2564, 'test', '修改dwz，data：{"remarks":"\\u624b\\u673a\\u77ed\\u4fe1\\u63a8\\u5e7f","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=XA3Q4","tj_code":""}', '113.61.47.164', 1650970755),
(2565, 'test', '修改dwz，data：{"remarks":"\\u4e00\\u624b\\u7efc\\u5408\\u6599","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=A4M9H","tj_code":""}', '113.61.47.164', 1650970768),
(2566, 'test', '修改dwz，data：{"remarks":"\\u77ed\\u4fe1\\u4e13\\u7528","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=8L9F5","tj_code":""}', '113.61.47.164', 1650970791),
(2567, 'test', '修改dwz，data：{"remarks":"\\u77ed\\u4fe1\\u4e13\\u7528","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=8L9F5","tj_code":""}', '113.61.47.164', 1650972185),
(2568, 'test', '登录成功。', '103.210.236.219', 1651222764),
(2569, 'test', '修改dwz，data：{"remarks":"\\u4fe1\\u4ef0","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=AV95G","tj_code":""}', '103.210.236.219', 1651646718),
(2570, 'test', '登录成功。', '198.13.42.242', 1651741412),
(2571, 'test', '登录成功。', '103.210.236.219', 1651935507),
(2572, 'test', '修改dwz，data：{"remarks":"\\u5c0f\\u767d","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=4B9FR","tj_code":""}', '103.210.236.219', 1652009902),
(2573, 'test', '登录成功。', '103.210.236.219', 1652345545),
(2574, 'test', '修改dwz，data：{"remarks":"\\u79d2\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=Z5CHP","tj_code":""}', '103.210.236.219', 1652345567),
(2575, 'test', '修改dwz，data：{"remarks":"\\u5c0f\\u767d","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=Z435W","tj_code":""}', '103.210.236.219', 1652353480),
(2576, 'test', '登录成功。', '113.61.47.164', 1652593873),
(2577, 'test', '修改dwz，data：{"remarks":"GOPAY\\u5b89\\u5353\\u5b89\\u88c5\\u5305","type":1,"url":"https:\\/\\/gopay002.oss-cn-shenzhen.aliyuncs.com\\/gopay001\\/gopay.apk","tj_code":""}', '113.61.47.164', 1652593981),
(2578, 'test', '登录成功。', '113.61.47.164', 1653114376),
(2579, 'test', '修改dwz，data：{"remarks":"\\u9ec4\\u4ece\\u826f","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=7VL4A","tj_code":""}', '113.61.47.164', 1653201638),
(2580, 'test', '修改dwz，data：{"remarks":"\\u9ec4\\u4ece\\u826f","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=37CYA","tj_code":""}', '113.61.47.164', 1653201760),
(2581, 'test', '修改dwz，data：{"remarks":"\\u5154\\u5b50","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=E4A8X","tj_code":""}', '113.61.47.164', 1653203645),
(2582, 'test', '修改dwz，data：{"remarks":"\\u548c\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=JTD63","tj_code":""}', '103.210.236.219', 1653540079),
(2583, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u8272\\u91d1\\u5c5e","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=RKLMB","tj_code":""}', '113.61.47.164', 1653722346),
(2584, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u8272\\u91d1\\u5c5e","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=66DNE","tj_code":""}', '113.61.47.164', 1653722467),
(2585, 'test', '修改dwz，data：{"remarks":"\\u83b1 \\u91d1","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=3WP3S","tj_code":""}', '113.61.47.164', 1653726016),
(2586, 'test', '登录成功。', '103.210.236.219', 1653737934),
(2587, 'test', '登录成功。', '198.13.42.242', 1653790273),
(2588, 'test', '登录成功。', '113.61.47.164', 1653885809),
(2589, 'test', '删除横幅，ID：766,765,764,763,762,761,760,759,758,757,756,755,754,753,752,751,750,749,748,747,746,745,744,743,742,741,740,739,738,737,736,735,734,733,732,731,730,729,728,727,726,725,724,722,721,720,719,718,717,716', '113.61.47.164', 1653885872),
(2590, 'test', '删除横幅，ID：715,714,713,712,711,710,709,708,707,706,705,704,703,702,701,700,699,698,697,696,695,694,693,692,691,690,689,688,687,686,685,684,683,682,681,680,679,678,677,676,675,674,673,672,671,670,669,668,667,666', '113.61.47.164', 1653885880),
(2591, 'test', '删除横幅，ID：665,664,663,662,661,660,659,658,657,656,655,654,653,652,651,650,649,648,647,646,645,644,643,642,641,640,639,638,637,636,635,634,633,632,631,630,629,628,627,626,625,624,623,622,621,620,619,618,617,616', '113.61.47.164', 1653885887),
(2592, 'test', '删除横幅，ID：615,614,613,612,610,609,608,607,606,605,604,603,602,601,600,599,598,597,596,595,594,593,592,591,590,589,588,587,586,585,584,583,582,581,580,579,578,577,576,575,573,572,505,504,503,502,501,500,499,498', '113.61.47.164', 1653885893),
(2593, 'test', '删除横幅，ID：497,496,495,494,493,492,491,490,489,488,487,486,485,484,483,482,481,480,479,478,477,476,475,474,473,472,471,470,469,468,466,465,464,463,462,460,459,458,457,456,455,453,452,451,450,449,448,445,444,443', '113.61.47.164', 1653885901),
(2594, 'test', '删除横幅，ID：440,439,438,437,436,435,434,433,432,430,428,427,426,425,424,423,422,421,420,419,418,417,416,415,414,413,412,411,409,405,404,403,402,401,400,399,398,397,396,395,394,393,392,381,380,379,378,377,376,375', '113.61.47.164', 1653885924),
(2595, 'test', '删除横幅，ID：373,372,371,370,368,367,365,363,362,361,360,359,358,356,355,354,353,351,350,349,348,347,346,345,344,341,340,338,337,336,334,333,331,328,326,323,321,320,319,318,317,314,313,310,309,308,307,306,305,304', '113.61.47.164', 1653885934),
(2596, 'test', '删除横幅，ID：303,302,301,300,299,298,297,296,295,294,293,292,291,290,288,287,286,285,284,282,281,277,271,270,269,268,267,266,265,264,259,256,255,249,248,247,246,245,244,243,241,240,239,238,237,234,233,227,226,225', '113.61.47.164', 1653885941),
(2597, 'test', '删除横幅，ID：221,219,218,217,216,213,212,211,210,209,208,207,206,205,204,203,200,198,197,195,194,193,192,191,188,177,173,172,171,170,165,164,163,162,160,159,158,157,156,155,154,152,151,150,149,148,145,141,138,137', '113.61.47.164', 1653885948),
(2598, 'test', '删除横幅，ID：134,133,131,130,129,128,127,126,124,123,121,120,119,118,117,116,115,114,112,108,106,105,104,103,102,101,100,99,98,97,95,94,93,92,91,88,86,84,83,82,81,80,79,76,75,74,73,72,71,70', '113.61.47.164', 1653885956),
(2599, 'test', '删除横幅，ID：69,65,57,53,51,50,49,22,21,16,14,2,1', '113.61.47.164', 1653885966),
(2600, 'test', 'addD{"uid":2,"domain":"8366z.com\\r\\n845j.com\\r\\n848v.cc\\r\\n849q.com\\r\\n8599t.com\\r\\n85v.us\\r\\n8666q.com\\r\\n867t.cc\\r\\n8788g.com\\r\\n8799g.com\\r\\n883r.cc\\r\\n885s.cc\\r\\n886a.cc\\r\\n88h.us\\r\\n898n.cc\\r\\n8999e.com\\r\\n90f.us\\r\\n90v.us\\r\\n919s.cc\\r\\n919w.cc\\r\\n92c.us\\r\\n933x.cc\\r\\n934r.com\\r\\n9366g.com\\r\\n9366s.com\\r\\n9388s.com\\r\\n9399x.com\\r\\n944t.cc\\r\\n946u.com\\r\\n94v.us\\r\\n9588c.com\\r\\n964b.com\\r\\n964k.com\\r\\n9699u.com\\r\\n974r.com\\r\\n9899s.com\\r\\n9899u.com\\r\\n9899z.com\\r\\n\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":-1,"err_msg":"{\\"code\\":\\"NOT_FOUND\\",\\"message\\":\\"Not Found : The requested resource was not found\\"}\\r\\n"}', '113.61.47.164', 1653886530),
(2601, 'test', '新增dwz，urls：["8366z.com","845j.com","848v.cc","849q.com","8599t.com","85v.us","8666q.com","867t.cc","8788g.com","8799g.com","883r.cc","885s.cc","886a.cc","88h.us","898n.cc","8999e.com","90f.us","90v.us","919s.cc","919w.cc","92c.us","933x.cc","934r.com","9366g.com","9366s.com","9388s.com","9399x.com","944t.cc","946u.com","94v.us","9588c.com","964b.com","964k.com","9699u.com","974r.com","9899s.com","9899u.com","9899z.com",""]', '113.61.47.164', 1653886560),
(2602, 'test', '删除横幅，ID：805', '113.61.47.164', 1653886570),
(2603, 'test', 'addD{"uid":2,"domain":"741z.com\\r\\n742q.com\\r\\n7566d.com\\r\\n772d.cc\\r\\n773h.cc\\r\\n773s.cc\\r\\n773w.cc\\r\\n775a.cc\\r\\n778m.cc\\r\\n778q.cc\\r\\n779d.cc\\r\\n77a.us\\r\\n77f.us\\r\\n77j.us\\r\\n77s.us\\r\\n7888u.com\\r\\n7899m.com\\r\\n794r.com\\r\\n798k.cc\\r\\n7999r.com\\r\\n80g.us\\r\\n811d.cc\\r\\n811s.cc\\r\\n812t.cc\\r\\n82e.us\\r\\n82r.us\\r\\n82u.us\\r\\n\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":-1,"err_msg":"{\\"code\\":\\"NOT_FOUND\\",\\"message\\":\\"Not Found : The requested resource was not found\\"}\\r\\n"}', '113.61.47.164', 1653886908),
(2604, 'test', '修改dwz，data：{"remarks":"gopay_38","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=3WP3S","tj_code":""}', '113.61.47.164', 1653887042),
(2605, 'test', '登录成功。', '113.61.47.164', 1653887174),
(2606, 'test', 'addD{"uid":2,"domain":"58b.us\\r\\n598a.cc\\r\\n59d.us\\r\\n603j.com\\r\\n60h.us\\r\\n614p.com\\r\\n616x.cc\\r\\n618v.cc\\r\\n61h.us\\r\\n622f.cc\\r\\n6266p.com\\r\\n6399w.com\\r\\n641n.com\\r\\n645k.com\\r\\n646p.com\\r\\n64e.us\\r\\n6566v.com\\r\\n656f.cc\\r\\n657u.cc\\r\\n65h.us\\r\\n65s.us\\r\\n65w.us\\r\\n65z.us\\r\\n663c.cc\\r\\n663v.cc\\r\\n67f.us\\r\\n684q.com\\r\\n68t.us\\r\\n694p.com\\r\\n6999s.com\\r\\n699h.cc\\r\\n711r.cc\\r\\n716p.cc\\r\\n717v.cc\\r\\n71k.us\\r\\n721b.cc\\r\\n7388u.com\\r\\n738p.cc\\r\\n739h.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653887201),
(2607, 'test', '登录成功。', '113.61.47.164', 1653887214),
(2608, 'test', 'addD{"uid":2,"domain":"58b.us\\r\\n598a.cc\\r\\n59d.us\\r\\n603j.com\\r\\n60h.us\\r\\n614p.com\\r\\n616x.cc\\r\\n618v.cc\\r\\n61h.us\\r\\n622f.cc\\r\\n6266p.com\\r\\n6399w.com\\r\\n641n.com\\r\\n645k.com\\r\\n646p.com\\r\\n64e.us\\r\\n6566v.com\\r\\n656f.cc\\r\\n657u.cc\\r\\n65h.us\\r\\n65s.us\\r\\n65w.us\\r\\n65z.us\\r\\n663c.cc\\r\\n663v.cc\\r\\n67f.us\\r\\n684q.com\\r\\n68t.us\\r\\n694p.com\\r\\n6999s.com\\r\\n699h.cc\\r\\n711r.cc\\r\\n716p.cc\\r\\n717v.cc\\r\\n71k.us\\r\\n721b.cc\\r\\n7388u.com\\r\\n738p.cc\\r\\n739h.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653887342),
(2609, 'test', '新增dwz，urls：["58b.us","598a.cc","59d.us","603j.com","60h.us","614p.com","616x.cc","618v.cc","61h.us","622f.cc","6266p.com","6399w.com","641n.com","645k.com","646p.com","64e.us","6566v.com","656f.cc","657u.cc","65h.us","65s.us","65w.us","65z.us","663c.cc","663v.cc","67f.us","684q.com","68t.us","694p.com","6999s.com","699h.cc","711r.cc","716p.cc","717v.cc","71k.us","721b.cc","7388u.com","738p.cc","739h.cc","741z.com","742q.com","7566d.com","772d.cc","773h.cc","773s.cc","773w.cc","775a.cc","778m.cc","778q.cc","779d.cc","77a.us","77f.us","77j.us","77s.us","7888u.com","7899m.com","794r.com","798k.cc","7999r.com","80g.us","811d.cc","811s.cc","812t.cc","82e.us","82r.us","82u.us"]', '113.61.47.164', 1653887562),
(2610, 'test', 'addD{"uid":2,"domain":"535m.cc\\r\\n53h.us\\r\\n541t.com\\r\\n547z.com\\r\\n5499w.com\\r\\n551t.cc\\r\\n552d.cc\\r\\n554a.cc\\r\\n557x.cc\\r\\n557z.cc\\r\\n559a.cc\\r\\n559v.cc\\r\\n55u.us\\r\\n564a.cc\\r\\n5666p.com\\r\\n577a.cc\\r\\n577p.cc\\r\\n57t.us\\r\\n57u.us\\r\\n587d.cc\\r\\n5899q.com\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653887835),
(2611, 'test', '新增dwz，urls：["535m.cc","53h.us","541t.com","547z.com","5499w.com","551t.cc","552d.cc","554a.cc","557x.cc","557z.cc","559a.cc","559v.cc","55u.us","564a.cc","5666p.com","577a.cc","577p.cc","57t.us","57u.us","587d.cc","5899q.com"]', '113.61.47.164', 1653887859),
(2612, 'test', 'addD{"uid":2,"domain":"466h.cc\\r\\n470j.com\\r\\n471q.com\\r\\n471t.com\\r\\n472a.cc\\r\\n473a.cc\\r\\n473e.com\\r\\n474q.com\\r\\n477p.cc\\r\\n478a.cc\\r\\n478y.com\\r\\n479a.cc\\r\\n479v.cc\\r\\n47f.us\\r\\n481j.com\\r\\n481r.com\\r\\n485n.com\\r\\n485q.com\\r\\n485t.cc\\r\\n48v.us\\r\\n491g.com\\r\\n491n.com\\r\\n494j.com\\r\\n495r.com\\r\\n496j.com\\r\\n511k.cc\\r\\n51k.us\\r\\n524a.cc\\r\\n525a.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653887961),
(2613, 'test', '新增dwz，urls：["466h.cc","470j.com","471q.com","471t.com","472a.cc","473a.cc","473e.com","474q.com","477p.cc","478a.cc","478y.com","479a.cc","479v.cc","47f.us","481j.com","481r.com","485n.com","485q.com","485t.cc","48v.us","491g.com","491n.com","494j.com","495r.com","496j.com","511k.cc","51k.us","524a.cc","525a.cc"]', '113.61.47.164', 1653887978),
(2614, 'test', 'addD{"uid":2,"domain":"391q.cc\\r\\n393a.cc\\r\\n3966s.com\\r\\n398a.cc\\r\\n3999x.com\\r\\n399u.cc\\r\\n399x.cc\\r\\n39j.us\\r\\n405j.com\\r\\n408g.com\\r\\n410d.com\\r\\n412r.com\\r\\n41y.us\\r\\n426k.com\\r\\n427a.cc\\r\\n429a.cc\\r\\n429h.com\\r\\n431y.com\\r\\n432a.cc\\r\\n433m.cc\\r\\n436a.cc\\r\\n438a.cc\\r\\n439a.cc\\r\\n43n.us\\r\\n441q.com\\r\\n443a.cc\\r\\n444a.cc\\r\\n446a.cc\\r\\n464d.com\\r\\n465x.com\\r\\n466a.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653888093),
(2615, 'test', '新增dwz，urls：["391q.cc","393a.cc","3966s.com","398a.cc","3999x.com","399u.cc","399x.cc","39j.us","405j.com","408g.com","410d.com","412r.com","41y.us","426k.com","427a.cc","429a.cc","429h.com","431y.com","432a.cc","433m.cc","436a.cc","438a.cc","439a.cc","43n.us","441q.com","443a.cc","444a.cc","446a.cc","464d.com","465x.com","466a.cc"]', '113.61.47.164', 1653888113),
(2616, 'test', 'addD{"uid":2,"domain":"302z.com\\r\\n313a.cc\\r\\n31n.us\\r\\n321q.cc\\r\\n326a.cc\\r\\n32f.us\\r\\n331x.cc\\r\\n334h.cc\\r\\n336a.cc\\r\\n337a.cc\\r\\n341p.com\\r\\n342a.cc\\r\\n343a.cc\\r\\n346a.cc\\r\\n346z.com\\r\\n347a.cc\\r\\n3666b.com\\r\\n3666t.com\\r\\n376a.cc\\r\\n377n.cc\\r\\n378a.cc\\r\\n37f.us\\r\\n37q.us\\r\\n37r.us\\r\\n384a.cc\\r\\n386a.cc\\r\\n386t.cc\\r\\n387g.cc\\r\\n3888z.com\\r\\n388a.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653888220),
(2617, 'test', '新增dwz，urls：["302z.com","313a.cc","31n.us","321q.cc","326a.cc","32f.us","331x.cc","334h.cc","336a.cc","337a.cc","341p.com","342a.cc","343a.cc","346a.cc","346z.com","347a.cc","3666b.com","3666t.com","376a.cc","377n.cc","378a.cc","37f.us","37q.us","37r.us","384a.cc","386a.cc","386t.cc","387g.cc","3888z.com","388a.cc"]', '113.61.47.164', 1653888279),
(2618, 'test', 'addD{"uid":2,"domain":"242n.com\\r\\n249a.cc\\r\\n259x.cc\\r\\n274a.cc\\r\\n276a.cc\\r\\n278a.cc\\r\\n27a.us\\r\\n283a.cc\\r\\n284a.cc\\r\\n2866p.com\\r\\n288a.cc\\r\\n289a.cc\\r\\n292a.cc\\r\\n293a.cc\\r\\n294a.cc\\r\\n296a.cc\\r\\n297a.cc\\r\\n2988u.com\\r\\n299a.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653888458),
(2619, 'test', 'addD{"uid":2,"domain":"001r.cc\\r\\n106r.com\\r\\n114b.cc\\r\\n116s.cc\\r\\n155e.cc\\r\\n155q.cc\\r\\n158w.cc\\r\\n16t.us\\r\\n176t.cc\\r\\n177t.cc\\r\\n184r.com\\r\\n185d.cc\\r\\n187v.cc\\r\\n198u.cc\\r\\n199y.cc\\r\\n223a.cc\\r\\n22n.us\\r\\n238a.cc\\r\\n241q.com\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653888565),
(2620, 'test', '新增dwz，urls：["001r.cc","106r.com","114b.cc","116s.cc","155e.cc","155q.cc","158w.cc","16t.us","176t.cc","177t.cc","184r.com","185d.cc","187v.cc","198u.cc","199y.cc","223a.cc","22n.us","238a.cc","241q.com","242n.com","249a.cc","259x.cc","274a.cc","276a.cc","278a.cc","27a.us","283a.cc","284a.cc","2866p.com","288a.cc","289a.cc","292a.cc","293a.cc","294a.cc","296a.cc","297a.cc","2988u.com","299a.cc"]', '113.61.47.164', 1653888588),
(2621, 'test', 'addD{"uid":2,"domain":"741z.com\\r\\n742q.com\\r\\n7566d.com\\r\\n772d.cc\\r\\n773h.cc\\r\\n773s.cc\\r\\n773w.cc\\r\\n775a.cc\\r\\n778m.cc\\r\\n778q.cc\\r\\n779d.cc\\r\\n77a.us\\r\\n77f.us\\r\\n77j.us\\r\\n77s.us\\r\\n7888u.com\\r\\n7899m.com\\r\\n794r.com\\r\\n798k.cc\\r\\n7999r.com\\r\\n80g.us\\r\\n811d.cc\\r\\n811s.cc\\r\\n812t.cc\\r\\n82e.us\\r\\n82r.us\\r\\n82u.us\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653888755),
(2622, 'test', 'addD{"uid":2,"domain":"919w.cc\\r\\n92c.us\\r\\n933x.cc\\r\\n934r.com\\r\\n9366g.com\\r\\n9366s.com\\r\\n9388s.com\\r\\n9399x.com\\r\\n944t.cc\\r\\n946u.com\\r\\n94v.us\\r\\n9588c.com\\r\\n964b.com\\r\\n964k.com\\r\\n9699u.com\\r\\n974r.com\\r\\n9899s.com\\r\\n9899u.com\\r\\n9899z.com\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653888995),
(2623, 'test', 'addD{"uid":2,"domain":"8366z.com\\r\\n845j.com\\r\\n848v.cc\\r\\n849q.com\\r\\n8599t.com\\r\\n85v.us\\r\\n8666q.com\\r\\n867t.cc\\r\\n8788g.com\\r\\n8799g.com\\r\\n883r.cc\\r\\n885s.cc\\r\\n886a.cc\\r\\n88h.us\\r\\n898n.cc\\r\\n8999e.com\\r\\n90f.us\\r\\n90v.us\\r\\n919s.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"gopay","status":1,"err_msg":""}', '113.61.47.164', 1653889094),
(2624, 'test', '登录成功。', '113.61.47.164', 1653889111),
(2625, 'test', '修改dwz，data：{"remarks":"gopay\\u5b89\\u88c5\\u4e0b\\u8f7d\\u5730\\u5740","type":1,"url":"https:\\/\\/gopay002.oss-cn-shenzhen.aliyuncs.com\\/gopay001\\/gopay.apk","tj_code":""}', '113.61.47.164', 1653889142),
(2626, 'test', '登录成功。', '113.61.47.164', 1653889503),
(2627, 'test', '修改dwz，data：{"remarks":"\\u5154\\u5b50","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=E4A8X","tj_code":""}', '113.61.47.164', 1653889620),
(2628, 'test', '修改dwz，data：{"remarks":"\\u6731\\u589e\\u8302","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=STXEY","tj_code":""}', '113.61.47.164', 1653889732),
(2629, 'test', '登录成功。', '198.13.42.242', 1653891943),
(2630, 'test', 'addD{"uid":2,"domain":"23232.com\\r\\n","host_record":"@","ip":"154.83.12.135","remarks":"22","status":-1,"err_msg":"{\\"code\\":\\"UNKNOWN_DOMAIN\\",\\"message\\":\\"The given domain is not registered, or does not have a zone file\\"}\\n\\r\\n"}', '198.13.42.242', 1653891969),
(2631, 'test', '登录成功。', '113.61.47.164', 1653893727),
(2632, 'test', '修改dwz，data：{"remarks":"gopay\\u5ba2\\u670d\\u77ed\\u94fe\\u63a5","type":1,"url":"https:\\/\\/www.go32dk2lap2d.live\\/client\\/chat\\/home.html?code=b156a2500aa981cb4273aa1638e9bcf8a5cc1b22f658cc19","tj_code":""}', '113.61.47.164', 1653893750),
(2633, 'test', '登录成功。', '113.61.47.164', 1653898083),
(2634, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u8272\\u91d1\\u5c5e","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=RKLMB","tj_code":""}', '113.61.47.164', 1653898114),
(2635, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u8272\\u91d1\\u5c5e","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=66DNE","tj_code":""}', '113.61.47.164', 1653898139),
(2636, 'test', '修改dwz，data：{"remarks":"\\u79d2\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=Z5CHP","tj_code":""}', '113.61.47.164', 1653898646),
(2637, 'test', '登录成功。', '103.210.236.219', 1653928640),
(2638, 'test', '修改dwz，data：{"remarks":"\\u8d62\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=FLDE","tj_code":""}', '103.210.236.219', 1653928680),
(2639, 'test', '修改dwz，data：{"remarks":"\\u548c\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=JTD63","tj_code":""}', '103.210.236.219', 1653928719),
(2640, 'test', '登录成功。', '113.61.47.164', 1653978950),
(2641, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=AND9X","tj_code":""}', '113.61.47.164', 1653979014),
(2642, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=7YA4E","tj_code":""}', '113.61.47.164', 1653979039),
(2643, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=A2H2B","tj_code":""}', '113.61.47.164', 1653979064),
(2644, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=V7YYE","tj_code":""}', '113.61.47.164', 1653979096),
(2645, 'admin', '登录成功。', '198.13.42.242', 1654054410),
(2646, 'admin', '修改用户组，ID：1', '198.13.42.242', 1654054431),
(2647, 'test', '修改dwz，data：{"remarks":"\\u609f\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=DDRRP","tj_code":""}', '103.210.236.219', 1654155825),
(2648, 'test', '修改dwz，data：{"remarks":"\\u609f\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=2M4X8","tj_code":""}', '103.210.236.219', 1654155912),
(2649, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=92E9N","tj_code":""}', '113.61.47.164', 1654244210),
(2650, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=S6NCT","tj_code":""}', '113.61.47.164', 1654244299),
(2651, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=PQJGW","tj_code":""}', '113.61.47.164', 1654244409);
INSERT INTO `cy_log` (`id`, `username`, `log`, `ip`, `t`) VALUES
(2652, 'test', '修改dwz，data：{"remarks":"\\u9ec4\\u4ece\\u826f","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=37CYA","tj_code":""}', '113.61.47.164', 1654409161),
(2653, 'test', '修改dwz，data：{"remarks":"\\u9ec4\\u4ece\\u826f","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=7VL4A","tj_code":""}', '113.61.47.164', 1654409182),
(2654, 'test', '登录成功。', '103.210.236.219', 1654433507),
(2655, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1654433567),
(2656, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=4KL6C","tj_code":""}', '103.210.236.219', 1654433612),
(2657, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=SM5FZ","tj_code":""}', '103.210.236.219', 1654433638),
(2658, 'test', '修改dwz，data：{"remarks":"\\u5fae\\u4fe1\\u7ea2","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=4KL6C","tj_code":""}', '103.210.236.219', 1654435783),
(2659, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=4KL6C","tj_code":""}', '103.210.236.219', 1654435840),
(2660, 'test', '登录成功。', '113.61.47.164', 1654496193),
(2661, 'test', '修改dwz，data：{"remarks":"\\u83b1\\u91d1","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=3WP3S","tj_code":""}', '113.61.47.164', 1654496214),
(2662, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=V85GZ","tj_code":""}', '113.61.47.164', 1654504701),
(2663, 'test', '登录成功。', '198.13.42.242', 1654519946),
(2664, 'test', '登录成功。', '103.210.236.219', 1654530137),
(2665, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=6YA39","tj_code":""}', '103.210.236.219', 1654530841),
(2666, 'test', '登录成功。', '113.61.47.164', 1654589851),
(2667, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=Y87RQ","tj_code":""}', '113.61.47.164', 1654589866),
(2668, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=3J7T4","tj_code":""}', '113.61.47.164', 1654589951),
(2669, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=EQK6E","tj_code":""}', '113.61.47.164', 1654589974),
(2670, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=F4KM7","tj_code":""}', '113.61.47.164', 1654589992),
(2671, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=ZP235","tj_code":""}', '113.61.47.164', 1654590015),
(2672, 'test', '登录成功。', '103.210.236.219', 1654618998),
(2673, 'test', '修改dwz，data：{"remarks":"\\u665a\\u98ce","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=F6E27","tj_code":""}', '103.210.236.219', 1654619013),
(2674, 'test', '修改dwz，data：{"remarks":"\\u665a\\u98ce","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=WP4Z3","tj_code":""}', '103.210.236.219', 1654619037),
(2675, 'test', '登录成功。', '113.61.47.164', 1654670108),
(2676, 'test', '修改dwz，data：{"remarks":"\\u6e90\\u6cc9","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=38KX4","tj_code":""}', '113.61.47.164', 1654670125),
(2677, 'test', '修改dwz，data：{"remarks":"\\u6e90\\u6cc9","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=NDBG9","tj_code":""}', '113.61.47.164', 1654670144),
(2678, 'test', '修改dwz，data：{"remarks":"\\u6e90\\u6cc9","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=RRPN6","tj_code":""}', '113.61.47.164', 1654670163),
(2679, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=DX626","tj_code":""}', '113.61.47.164', 1654673211),
(2680, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=5BU4K","tj_code":""}', '113.61.47.164', 1654673231),
(2681, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=L2B5L","tj_code":""}', '113.61.47.164', 1654673251),
(2682, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=MV622","tj_code":""}', '113.61.47.164', 1654673274),
(2683, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=QL682","tj_code":""}', '113.61.47.164', 1654673291),
(2684, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=7MZ44","tj_code":""}', '113.61.47.164', 1654673307),
(2685, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=DUA3T","tj_code":""}', '113.61.47.164', 1654673323),
(2686, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=972PA","tj_code":""}', '113.61.47.164', 1654673338),
(2687, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=SL596","tj_code":""}', '113.61.47.164', 1654673353),
(2688, 'test', '修改dwz，data：{"remarks":"\\u9ed1\\u9a6c\\u8001\\u864e","type":1,"url":"http:\\/\\/yaoyaohh07.com\\/?channelCode=JPQF7","tj_code":""}', '113.61.47.164', 1654673369),
(2689, 'test', '修改dwz，data：{"remarks":"\\u5c11\\u7237","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=A8LWL","tj_code":""}', '113.61.47.164', 1654846537),
(2690, 'test', '修改dwz，data：{"remarks":"\\u5c11\\u7237","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=QK2LZ","tj_code":""}', '113.61.47.164', 1654846579),
(2691, 'test', '修改dwz，data：{"remarks":"\\u5c11\\u7237","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=5M2B6","tj_code":""}', '113.61.47.164', 1654846602),
(2692, 'test', '修改dwz，data：{"remarks":"\\u5c11\\u7237","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=5W9WB","tj_code":""}', '113.61.47.164', 1654846620),
(2693, 'test', '修改dwz，data：{"remarks":"\\u5c11\\u7237","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=739AB","tj_code":""}', '113.61.47.164', 1654846657),
(2694, 'test', '修改dwz，data：{"remarks":"\\u665a\\u98ce","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=5DA99","tj_code":""}', '113.61.47.164', 1654853592),
(2695, 'test', '登录成功。', '113.61.47.164', 1654922319),
(2696, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=DXULA","tj_code":""}', '113.61.47.164', 1654922365),
(2697, 'test', '登录成功。', '113.61.47.164', 1654934354),
(2698, 'test', '修改dwz，data：{"remarks":"\\u56db\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=UU7TH","tj_code":""}', '113.61.47.164', 1654934368),
(2699, 'test', '登录成功。', '47.242.193.138', 1654942463),
(2700, 'test', '修改dwz，data：{"remarks":"\\u8f69\\u4ed4","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=UCT76","tj_code":""}', '47.242.193.138', 1654942500),
(2701, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=T9NF9","tj_code":""}', '110.54.166.193', 1654952500),
(2702, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=8V3VV","tj_code":""}', '110.54.166.193', 1654952537),
(2703, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=P7HER","tj_code":""}', '110.54.166.193', 1654952564),
(2704, 'test', '修改dwz，data：{"remarks":"\\u9876\\u6d41","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=QJPBZ","tj_code":""}', '110.54.166.193', 1654958178),
(2705, 'test', '登录成功。', '113.61.47.164', 1655017527),
(2706, 'test', '修改dwz，data：{"remarks":"\\u52aa\\u529b","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=PS45U","tj_code":""}', '113.61.47.164', 1655017565),
(2707, 'test', '修改dwz，data：{"remarks":"\\u52aa\\u529b","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=4DC98","tj_code":""}', '113.61.47.164', 1655017590),
(2708, 'test', '修改dwz，data：{"remarks":"\\u52aa\\u529b","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=RLBRJ","tj_code":""}', '113.61.47.164', 1655017620),
(2709, 'test', '登录成功。', '103.210.236.219', 1655037074),
(2710, 'test', '登录成功。', '103.210.236.219', 1655037087),
(2711, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=WWNBS","tj_code":""}', '103.210.236.219', 1655037135),
(2712, 'test', '修改dwz，data：{"remarks":"\\u6d2a\\u8352\\u5c11\\u5973","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=QRZT8","tj_code":""}', '103.210.236.219', 1655037164),
(2713, 'test', '登录成功。', '47.242.193.138', 1655038271),
(2714, 'test', '修改dwz，data：{"remarks":"\\u5927\\u5934","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=X64XC","tj_code":""}', '47.242.193.138', 1655040041),
(2715, 'test', '修改dwz，data：{"remarks":"\\u8bda\\u4fe1","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=DA86C","tj_code":""}', '47.242.193.138', 1655040918),
(2716, 'test', '修改dwz，data：{"remarks":"\\u8bda\\u4fe1","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=XMQG","tj_code":""}', '47.242.193.138', 1655040947),
(2717, 'test', '修改dwz，data：{"remarks":"\\u8bda\\u4fe1","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=325WW","tj_code":""}', '47.242.193.138', 1655041002),
(2718, 'test', '登录成功。', '113.61.47.164', 1655099817),
(2719, 'test', '登录成功。', '113.61.47.164', 1655101835),
(2720, 'test', '修改dwz，data：{"remarks":"\\u5927\\u5934","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=V7YXT","tj_code":""}', '113.61.47.164', 1655101869),
(2721, 'test', '登录成功。', '103.246.230.2', 1655104178),
(2722, 'test', '修改dwz，data：{"remarks":"\\u5fae\\u4fe1\\u76f4\\u63a8","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=HAN6M","tj_code":""}', '103.246.230.2', 1655104346),
(2723, 'test', '登录成功。', '113.61.47.164', 1655107668),
(2724, 'test', '修改dwz，data：{"remarks":"\\u73ab\\u7470","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=EQ86P","tj_code":""}', '113.61.47.164', 1655107697),
(2725, 'test', '修改dwz，data：{"remarks":"\\u73ab\\u7470","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=3958K","tj_code":""}', '113.61.47.164', 1655107731),
(2726, 'test', '修改dwz，data：{"remarks":"\\u73ab\\u7470","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=JCP5T","tj_code":""}', '113.61.47.164', 1655107766),
(2727, 'test', '登录成功。', '103.246.230.2', 1655109659),
(2728, 'test', '登录成功。', '113.61.47.164', 1655110588),
(2729, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=EZFZC","tj_code":""}', '113.61.47.164', 1655110621),
(2730, 'test', '登录成功。', '47.242.193.138', 1655189726),
(2731, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=F7B5D","tj_code":""}', '47.242.193.138', 1655189769),
(2732, 'test', '登录成功。', '103.210.236.219', 1655195105),
(2733, 'test', '修改dwz，data：{"remarks":"\\u6c5f\\u57fa\\u4e8e","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=B9PX8","tj_code":""}', '103.210.236.219', 1655195132),
(2734, 'test', '登录成功。', '47.242.193.138', 1655203986),
(2735, 'test', '修改dwz，data：{"remarks":"\\u82cf\\u4e00\\u9e23","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=F54FK","tj_code":""}', '47.242.193.138', 1655204016),
(2736, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=99A5L","tj_code":""}', '47.242.193.138', 1655209281),
(2737, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=SV5LF","tj_code":""}', '47.242.193.138', 1655209304),
(2738, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=JYJ5A","tj_code":""}', '47.242.193.138', 1655209328),
(2739, 'test', '登录成功。', '113.61.47.164', 1655274199),
(2740, 'test', '修改dwz，data：{"remarks":"NK","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=ZXECC","tj_code":""}', '113.61.47.164', 1655274226),
(2741, 'test', '登录成功。', '47.242.193.138', 1655282163),
(2742, 'test', '修改dwz，data：{"remarks":"\\u8001\\u4f1a\\u5458\\u56de\\u8bbf","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=8L9F5","tj_code":""}', '47.242.193.138', 1655282189),
(2743, 'test', '修改dwz，data：{"remarks":"\\u65b0\\u4f1a\\u5458\\u63a8\\u5e7f","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=XA3Q4","tj_code":""}', '47.242.193.138', 1655282211),
(2744, 'test', '修改dwz，data：{"remarks":"\\u65b0\\u8d44\\u6599\\u63a8\\u5e7f","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=A4M9H","tj_code":""}', '47.242.193.138', 1655282231),
(2745, 'test', '登录成功。', '47.242.193.138', 1655289108),
(2746, 'test', '修改dwz，data：{"remarks":"\\u6c14\\u7403","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=6SSUU","tj_code":""}', '47.242.193.138', 1655289169),
(2747, 'test', '登录成功。', '112.198.97.67', 1655306001),
(2748, 'test', '修改dwz，data：{"remarks":"\\u6a59\\u5b50\\u6536\\u91cf","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=RW485","tj_code":""}', '112.198.97.67', 1655306031),
(2749, 'test', '修改dwz，data：{"remarks":"\\u6a59\\u5b50\\u6536\\u91cf","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=4LW3F","tj_code":""}', '112.198.97.67', 1655306066),
(2750, 'test', '登录成功。', '113.61.47.164', 1655355764),
(2751, 'test', '修改dwz，data：{"remarks":"NK","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=6HRSX","tj_code":""}', '113.61.47.164', 1655355800),
(2752, 'test', '登录成功。', '47.242.193.138', 1655376147),
(2753, 'test', '登录成功。', '47.242.193.138', 1655443671),
(2754, 'test', '修改dwz，data：{"remarks":"1","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=BB9B6","tj_code":""}', '47.242.193.138', 1655443759),
(2755, 'test', '修改dwz，data：{"remarks":"\\u5929\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=S3K7X","tj_code":""}', '47.242.193.138', 1655451148),
(2756, 'test', '登录成功。', '113.61.47.164', 1655451658),
(2757, 'test', '修改dwz，data：{"remarks":"\\u6c5f\\u57fa\\u4e8e","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=B9PX8","tj_code":""}', '113.61.47.164', 1655451689),
(2758, 'test', '登录成功。', '47.242.193.138', 1655461197),
(2759, 'test', '登录成功。', '113.61.47.164', 1655461310),
(2760, 'test', '登录成功。', '47.242.193.138', 1655461793),
(2761, 'test', '修改dwz，data：{"remarks":"\\u5929\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=44YDR","tj_code":""}', '47.242.193.138', 1655461822),
(2762, 'test', '登录成功。', '113.61.47.164', 1655464466),
(2763, 'test', '修改dwz，data：{"remarks":"\\u817e\\u98de","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=7KLY8","tj_code":""}', '113.61.47.164', 1655464491),
(2764, 'test', '修改dwz，data：{"remarks":"\\u817e\\u98de","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=AUV64","tj_code":""}', '113.61.47.164', 1655464540),
(2765, 'test', '修改dwz，data：{"remarks":"\\u65f6\\u5149","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=CNE3W","tj_code":""}', '113.61.47.164', 1655466811),
(2766, 'test', '登录成功。', '47.242.193.138', 1655467672),
(2767, 'test', '登录成功。', '103.210.236.219', 1655470885),
(2768, 'test', '修改dwz，data：{"remarks":"\\u5c0f\\u5b9d\\u8d1d","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=FTQG6","tj_code":""}', '103.210.236.219', 1655470935),
(2769, 'test', '登录成功。', '47.242.193.138', 1655479840),
(2770, 'test', '修改dwz，data：{"remarks":"@zhibo9","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=98T8V","tj_code":""}', '47.242.193.138', 1655479957),
(2771, 'test', '修改dwz，data：{"remarks":"@zhibo9","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=A4B9Z","tj_code":""}', '47.242.193.138', 1655480008),
(2772, 'test', '登录成功。', '113.61.47.164', 1655523479),
(2773, 'test', '修改dwz，data：{"remarks":"\\u8d62\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=LYL4X","tj_code":""}', '113.61.47.164', 1655535156),
(2774, 'test', '修改dwz，data：{"remarks":"\\u8d62\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=FTQG6","tj_code":""}', '113.61.47.164', 1655535176),
(2775, 'test', '登录成功。', '198.13.42.242', 1655690007),
(2776, 'test', '登录成功。', '113.61.47.164', 1655709239),
(2777, 'test', '修改dwz，data：{"remarks":"\\u6e90\\u6cc9","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=9TA2P","tj_code":""}', '113.61.47.164', 1655709331),
(2778, 'test', '修改dwz，data：{"remarks":"\\u6e90\\u6cc9","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=S2D2A","tj_code":""}', '113.61.47.164', 1655709356),
(2779, 'test', '修改dwz，data：{"remarks":"\\u65f6\\u5149","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=4A9GT","tj_code":""}', '113.61.47.164', 1655712365),
(2780, 'test', '修改dwz，data：{"remarks":"\\u65f6\\u5149","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=9DB3F","tj_code":""}', '113.61.47.164', 1655712382),
(2781, 'test', '修改dwz，data：{"remarks":"\\u65f6\\u5149","type":1,"url":"http:\\/\\/yaoyaohh11.com\\/?channelCode=ZU9G4","tj_code":""}', '113.61.47.164', 1655712400),
(2782, 'test', '登录成功。', '47.242.193.138', 1655715410),
(2783, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=D42XM","tj_code":""}', '47.242.193.138', 1655715557),
(2784, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=9A2XA","tj_code":""}', '47.242.193.138', 1655715595),
(2785, 'test', '修改dwz，data：{"remarks":"\\u6e29\\u6545","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=9KA3K","tj_code":""}', '47.242.193.138', 1655715627),
(2786, 'test', '登录成功。', '103.210.236.219', 1655747422),
(2787, 'test', '修改dwz，data：{"remarks":"\\u963f\\u94c1","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=477LW","tj_code":""}', '103.210.236.219', 1655827084),
(2788, 'test', '登录成功。', '198.13.42.242', 1655855464),
(2789, 'test', '登录成功。', '47.242.193.138', 1655878629),
(2790, 'test', '修改dwz，data：{"remarks":"\\u5927\\u98de","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=K8E75","tj_code":""}', '47.242.193.138', 1655878658),
(2791, 'test', '修改dwz，data：{"remarks":"\\u5927\\u98de","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=2R33Y","tj_code":""}', '47.242.193.138', 1655878778),
(2792, 'test', '登录成功。', '47.242.193.138', 1655894162),
(2793, 'test', '修改dwz，data：{"remarks":"\\u5929\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=44YDR","tj_code":""}', '47.242.193.138', 1655894206),
(2794, 'test', '登录成功。', '103.210.236.219', 1655921632),
(2795, 'test', '登录成功。', '113.61.47.164', 1656216396),
(2796, 'test', '登录成功。', '47.242.193.138', 1656217049),
(2797, 'test', '登录成功。', '113.61.47.164', 1656217341),
(2798, 'test', '修改dwz，data：{"remarks":"NK","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=6HRSX","tj_code":""}', '113.61.47.164', 1656217361),
(2799, 'test', '修改dwz，data：{"remarks":"NK","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=6HRSX","tj_code":""}', '113.61.47.164', 1656217469),
(2800, 'test', '登录成功。', '47.242.193.138', 1656219003),
(2801, 'test', '修改dwz，data：{"remarks":"Lixiao","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=P58S7","tj_code":""}', '47.242.193.138', 1656219055),
(2802, 'test', '删除横幅，ID：987', '47.242.193.138', 1656219819),
(2803, 'test', '删除横幅，ID：989', '47.242.193.138', 1656219855),
(2804, 'test', '删除横幅，ID：992', '47.242.193.138', 1656219868),
(2805, 'test', '删除横幅，ID：994', '47.242.193.138', 1656219882),
(2806, 'test', '删除横幅，ID：996', '47.242.193.138', 1656219892),
(2807, 'test', '删除横幅，ID：1011', '47.242.193.138', 1656219904),
(2808, 'test', '删除横幅，ID：1019', '47.242.193.138', 1656219913),
(2809, 'test', '删除横幅，ID：954', '47.242.193.138', 1656219949),
(2810, 'test', '删除横幅，ID：959', '47.242.193.138', 1656220011),
(2811, 'test', '删除横幅，ID：960', '47.242.193.138', 1656220024),
(2812, 'test', '删除横幅，ID：969', '47.242.193.138', 1656220042),
(2813, 'test', '删除横幅，ID：970', '47.242.193.138', 1656220051),
(2814, 'test', '删除横幅，ID：972', '47.242.193.138', 1656220059),
(2815, 'test', '删除横幅，ID：981', '47.242.193.138', 1656220069),
(2816, 'test', '删除横幅，ID：924', '47.242.193.138', 1656220079),
(2817, 'test', '删除横幅，ID：926', '47.242.193.138', 1656220089),
(2818, 'test', '删除横幅，ID：927', '47.242.193.138', 1656220098),
(2819, 'test', '删除横幅，ID：928', '47.242.193.138', 1656220107),
(2820, 'test', '删除横幅，ID：918', '47.242.193.138', 1656220123),
(2821, 'test', '删除横幅，ID：872', '47.242.193.138', 1656220133),
(2822, 'test', '删除横幅，ID：876', '47.242.193.138', 1656220143),
(2823, 'test', '删除横幅，ID：877', '47.242.193.138', 1656220151),
(2824, 'test', '删除横幅，ID：878', '47.242.193.138', 1656220159),
(2825, 'test', '删除横幅，ID：880', '47.242.193.138', 1656220166),
(2826, 'test', '删除横幅，ID：883', '47.242.193.138', 1656220174),
(2827, 'test', '登录成功。', '47.242.193.138', 1656244782),
(2828, 'test', '修改dwz，data：{"remarks":"\\u5b89\\u751f","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=XMQGL","tj_code":""}', '47.242.193.138', 1656244856),
(2829, 'test', '登录成功。', '103.210.236.219', 1656344526),
(2830, 'test', '修改dwz，data：{"remarks":"\\u548c\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=JTD63","tj_code":""}', '103.210.236.219', 1656344624),
(2831, 'test', '登录成功。', '113.61.47.164', 1656402945),
(2832, 'test', '修改dwz，data：{"remarks":"\\u5929\\u660e","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=58GG3","tj_code":""}', '113.61.47.164', 1656402991),
(2833, 'test', '修改dwz，data：{"remarks":"\\u5929\\u660e","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=2R8DL","tj_code":""}', '113.61.47.164', 1656403037),
(2834, 'test', '登录成功。', '103.210.236.219', 1656416254),
(2835, 'test', 'addD{"uid":2,"domain":"770h.cc\\r\\n867y.cc\\r\\n153j.cc\\r\\n939i.cc\\r\\n925z.cc\\r\\n325b.cc\\r\\n511w.cc\\r\\n915y.cc\\r\\n282y.cc\\r\\n393w.cc\\r\\n361n.cc\\r\\n314p.cc\\r\\n172e.cc\\r\\n723i.cc\\r\\n101x.cc\\r\\n799s.cc\\r\\n998h.cc\\r\\n415e.cc\\r\\n724a.cc\\r\\n523i.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"0628","status":1,"err_msg":""}', '103.210.236.219', 1656416694),
(2836, 'test', 'addD{"uid":2,"domain":"395h.cc\\r\\n582p.cc\\r\\n139f.cc\\r\\n216y.cc\\r\\n422n.cc\\r\\n541y.cc\\r\\n648d.cc\\r\\n625f.cc\\r\\n616h.cc\\r\\n767h.cc\\r\\n313n.cc\\r\\n443t.cc\\r\\n134w.cc\\r\\n142g.cc\\r\\n655w.cc\\r\\n427n.cc\\r\\n169x.cc\\r\\n364q.cc\\r\\n641w.cc\\r\\n765t.cc\\r\\n167z.cc\\r\\n313e.cc\\r\\n110h.cc\\r\\n177u.cc\\r\\n699j.cc\\r\\n423b.cc\\r\\n382c.cc\\r\\n929m.cc\\r\\n632y.cc\\r\\n198x.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"0628","status":1,"err_msg":""}', '103.210.236.219', 1656416820),
(2837, 'test', 'addD{"uid":2,"domain":"552y.cc\\r\\n980a.cc\\r\\n502j.cc\\r\\n634b.cc\\r\\n659u.cc\\r\\n997u.cc\\r\\n449g.cc\\r\\n766h.cc\\r\\n157w.cc\\r\\n117i.cc\\r\\n846c.cc\\r\\n194z.cc\\r\\n589c.cc\\r\\n441g.cc\\r\\n384g.cc\\r\\n821i.cc\\r\\n994k.cc\\r\\n756g.cc\\r\\n785z.cc\\r\\n691w.cc\\r\\n817y.cc\\r\\n315c.cc\\r\\n184d.cc\\r\\n616d.cc\\r\\n451m.cc\\r\\n614z.cc\\r\\n396g.cc\\r\\n393y.cc\\r\\n152v.cc\\r\\n169t.cc\\r\\n944b.cc\\r\\n216c.cc\\r\\n223v.cc\\r\\n414y.cc\\r\\n372r.cc\\r\\n337j.cc\\r\\n347d.cc\\r\\n757v.cc\\r\\n885y.cc\\r\\n","host_record":"@","ip":"154.92.15.211","remarks":"0628","status":1,"err_msg":""}', '103.210.236.219', 1656416952),
(2838, 'test', '删除横幅，ID：1020,1018,1017,1016,1015,1014,1013,1012,1010,1009,1008,1007,1006,1005,1004,1003,1002,1001,1000,999,998,997,995,993,991,990,988,986,985,984,983,982,980,979,978,977,976,975,974,973,971,968,967,966,965,964,963,962,961,958', '103.210.236.219', 1656417043),
(2839, 'test', '删除横幅，ID：957,956,955,953,952,951,950,949,948,947,946,945,944,943,942,941,940,939,938,937,936,935,934,933,932,931,930,929,925,923,922,921,920,919,917,916,915,914,913,912,911,910,909,908,907,906,905,904,903,902', '103.210.236.219', 1656417049),
(2840, 'test', '删除横幅，ID：901,900,899,898,897,896,895,894,893,892,891,890,889,888,887,886,885,884,882,881,879,875,874,873,871,870,869,868,867,866,865,864,863,862,861,860,859,858,857,856,855,854,853,852,851,850,849,848,847,846', '103.210.236.219', 1656417056),
(2841, 'test', '删除横幅，ID：845,844,843,842,841,840,839,838,837,836,835,834,833,832,831,830,829,828,827,826,825,824,823,822,821,820,819,818,817,816,815,814,813,812,811,810,809,808,807,806,804,803,802,801,800,799,798,797,796,795', '103.210.236.219', 1656417063),
(2842, 'test', '删除横幅，ID：794,793,792,791,790,789,788,787,786,785,784,783,782,781,780,779,778,777,776,775,774,773,772,771,770,769,768,767', '103.210.236.219', 1656417069),
(2843, 'test', '新增dwz，urls：["770h.cc","867y.cc","153j.cc","939i.cc","925z.cc","325b.cc","511w.cc","915y.cc","282y.cc","393w.cc","361n.cc","314p.cc","172e.cc","723i.cc","101x.cc","799s.cc","998h.cc","415e.cc","724a.cc","523i.cc","395h.cc","582p.cc","139f.cc","216y.cc","422n.cc","541y.cc","648d.cc","625f.cc","616h.cc","767h.cc","313n.cc","443t.cc","134w.cc","142g.cc","655w.cc","427n.cc","169x.cc","364q.cc","641w.cc","765t.cc","167z.cc","313e.cc","110h.cc","177u.cc","699j.cc","423b.cc","382c.cc","929m.cc","632y.cc","198x.cc","552y.cc","980a.cc","502j.cc","634b.cc","659u.cc","997u.cc","449g.cc","766h.cc","157w.cc","117i.cc","846c.cc","194z.cc","589c.cc","441g.cc","384g.cc","821i.cc","994k.cc","756g.cc","785z.cc","691w.cc","817y.cc","315c.cc","184d.cc","616d.cc","451m.cc","614z.cc","396g.cc","393y.cc","152v.cc","169t.cc","944b.cc","216c.cc","223v.cc","414y.cc","372r.cc","337j.cc","347d.cc","757v.cc","885y.cc"]', '103.210.236.219', 1656417096),
(2844, 'test', '修改dwz，data：{"remarks":"NK","type":1,"url":"http:\\/\\/yaoyaohh13.com\\/?channelCode=ZXECC","tj_code":""}', '103.210.236.219', 1656417800),
(2845, 'test', '登录成功。', '47.242.193.138', 1656419081),
(2846, 'test', '修改dwz，data：{"remarks":"\\u5929\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=44YDR","tj_code":""}', '47.242.193.138', 1656419163),
(2847, 'test', '登录成功。', '103.210.236.219', 1656436609),
(2848, 'test', '登录成功。', '103.210.236.219', 1656436618),
(2849, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1656436642),
(2850, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1656436664),
(2851, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=STXEY","tj_code":""}', '103.210.236.219', 1656436683),
(2852, 'test', '修改dwz，data：{"remarks":"\\u79d2\\u54e5","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=Z5CHP","tj_code":""}', '103.210.236.219', 1656437806),
(2853, 'test', '登录成功。', '113.61.47.164', 1656490410),
(2854, 'test', '修改dwz，data：{"remarks":"NK","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=6HRSX","tj_code":""}', '113.61.47.164', 1656490426),
(2855, 'test', '登录成功。', '103.210.236.219', 1656499802),
(2856, 'test', '修改dwz，data：{"remarks":"\\u548c\\u5929\\u4e0b","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=JTD63","tj_code":""}', '103.210.236.219', 1656499855),
(2857, 'test', '修改dwz，data：{"remarks":"\\u9ec4\\u4ece\\u826f","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=37CYA","tj_code":""}', '103.210.236.219', 1656515113),
(2858, 'test', '登录成功。', '113.61.47.164', 1656567680),
(2859, 'test', '修改dwz，data：{"remarks":"\\u609f\\u7a7a","type":1,"url":"http:\\/\\/yaoyaohh16.com\\/?channelCode=4V3N4","tj_code":""}', '113.61.47.164', 1656577854),
(2860, 'test', '登录成功。', '47.242.193.138', 1656593282),
(2861, 'test', '修改dwz，data：{"remarks":"\\u6a59\\u5b50\\u6536\\u91cf","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=9LYSP","tj_code":""}', '47.242.193.138', 1656593313),
(2862, 'test', '修改dwz，data：{"remarks":"\\u6a59\\u5b50\\u6536\\u91cf","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=JU4A4","tj_code":""}', '47.242.193.138', 1656593336),
(2863, 'test', '登录成功。', '113.61.47.164', 1656650763),
(2864, 'test', '修改dwz，data：{"remarks":"\\u6a59\\u5b50\\u6536\\u91cf","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=PM5KL","tj_code":""}', '113.61.47.164', 1656650793),
(2865, 'test', '修改dwz，data：{"remarks":"\\u6a59\\u5b50\\u6536\\u91cf","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=ELM5X","tj_code":""}', '113.61.47.164', 1656650815),
(2866, 'test', '修改dwz，data：{"remarks":"\\u6a59\\u5b50\\u6536\\u91cf","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=H9VZN","tj_code":""}', '113.61.47.164', 1656650834),
(2867, 'test', '登录成功。', '113.61.47.164', 1656659861),
(2868, 'test', '登录成功。', '103.210.236.219', 1656670575),
(2869, 'test', '登录成功。', '112.198.104.214', 1656767743),
(2870, 'test', '修改dwz，data：{"remarks":"\\u9633\\u5149","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=9LPG6","tj_code":""}', '112.198.104.214', 1656767848),
(2871, 'test', '登录成功。', '113.61.47.164', 1656836549),
(2872, 'test', '登录成功。', '103.210.236.219', 1656848549),
(2873, 'test', '修改dwz，data：{"remarks":"NK","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=6HRSX","tj_code":""}', '103.210.236.219', 1656848603),
(2874, 'test', '修改dwz，data：{"remarks":"\\u9ec4\\u4ece\\u826f","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=5FW5L","tj_code":""}', '103.210.236.219', 1656849667),
(2875, 'test', '修改dwz，data：{"remarks":"\\u9ec4\\u4ece\\u826f","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=7JD5X","tj_code":""}', '103.210.236.219', 1656850677),
(2876, 'test', '修改dwz，data：{"remarks":"\\u9ec4\\u4ece\\u826f","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=YT7F6","tj_code":""}', '103.210.236.219', 1656850749),
(2877, 'test', '登录成功。', '112.198.104.214', 1656933612),
(2878, 'test', '登录成功。', '112.198.104.214', 1656933631),
(2879, 'test', '修改dwz，data：{"remarks":"\\u6c38\\u96861788","type":1,"url":"http:\\/\\/yaoyaohh14.com\\/?channelCode=V5XB4","tj_code":""}', '112.198.104.214', 1656933667),
(2880, 'test', '登录成功。', '103.210.236.219', 1657042006),
(2881, 'test', '登录成功。', '113.61.47.164', 1657083324),
(2882, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=LKWZD","tj_code":""}', '113.61.47.164', 1657083346),
(2883, 'test', '修改dwz，data：{"remarks":"\\u5927\\u725b","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=T5PVX","tj_code":""}', '113.61.47.164', 1657083368),
(2884, 'test', '登录成功。', '112.198.97.121', 1657104748),
(2885, 'test', '修改dwz，data：{"remarks":"\\u6a59\\u5b50\\u6536\\u91cf","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=KRFQ4","tj_code":""}', '112.198.97.121', 1657104778),
(2886, 'test', '登录成功。', '47.242.193.138', 1657112105),
(2887, 'test', '修改dwz，data：{"remarks":"\\u6446\\u6e21\\u4eba","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=BBRC2","tj_code":""}', '47.242.193.138', 1657112143),
(2888, 'test', '修改dwz，data：{"remarks":"\\u6446\\u6e21\\u4eba","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=4S75X","tj_code":""}', '47.242.193.138', 1657112175),
(2889, 'test', '修改dwz，data：{"remarks":"\\u6446\\u6e21\\u4eba","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=LWUA6","tj_code":""}', '47.242.193.138', 1657112215),
(2890, 'test', '登录成功。', '103.210.236.219', 1657215438),
(2891, 'test', '登录成功。', '113.61.47.164', 1657269736),
(2892, 'test', '修改dwz，data：{"remarks":"GZ_seve","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=L9R3P","tj_code":""}', '113.61.47.164', 1657269756),
(2893, 'test', '登录成功。', '112.198.104.164', 1657368757),
(2894, 'test', '修改dwz，data：{"remarks":"\\u6960\\u67ab","type":1,"url":"http:\\/\\/yaoyaohh15.com\\/?channelCode=RRD7N","tj_code":""}', '112.198.104.164', 1657368786),
(2895, 'test', '登录成功。', '113.61.47.164', 1657444212),
(2896, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=4KL6C","tj_code":""}', '113.61.47.164', 1657444277),
(2897, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u83022","type":1,"url":"http:\\/\\/yaoyaohh10.com\\/?channelCode=SM5FZ","tj_code":""}', '113.61.47.164', 1657444311),
(2898, 'test', '登录成功。', '103.210.236.219', 1657559384),
(2899, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"https:\\/\\/wmtg03.com\\/?channelCode=zdd_1","tj_code":""}', '103.210.236.219', 1657559402),
(2900, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"https:\\/\\/wmtg03.com\\/?channelCode=zdd_2","tj_code":""}', '103.210.236.219', 1657559429),
(2901, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"https:\\/\\/wmtg03.com\\/?channelCode=zdd_3","tj_code":""}', '103.210.236.219', 1657559450),
(2902, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"https:\\/\\/wmtg03.com\\/?channelCode=zdd_1","tj_code":""}', '103.210.236.219', 1657559630),
(2903, 'test', '修改dwz，data：{"remarks":"\\u6731\\u90d1\\u8302","type":1,"url":"https:\\/\\/wmtg03.com\\/?channelCode=zdd_1","tj_code":""}', '103.210.236.219', 1657559651),
(2904, 'test', '修改dwz，data：{"remarks":"\\u548c\\u5929\\u4e0b","type":1,"url":"https:\\/\\/wmtg02.com\\/?channelCode=htx_1","tj_code":""}', '103.210.236.219', 1657560203),
(2905, 'test', '修改dwz，data：{"remarks":"\\u548c\\u5929\\u4e0b","type":1,"url":"https:\\/\\/wmtg02.com\\/?channelCode=htx_1","tj_code":""}', '103.210.236.219', 1657560512),
(2906, 'test', '登录成功。', '113.61.47.164', 1657605254);

-- --------------------------------------------------------

--
-- 表的结构 `cy_menu`
--

CREATE TABLE IF NOT EXISTS `cy_menu` (
  `id` int(11) NOT NULL,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '标图',
  `tips` varchar(255) NOT NULL DEFAULT '' COMMENT '提示语',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0隐藏，1显示',
  `o` int(11) NOT NULL DEFAULT '0' COMMENT '排序，越小越靠前'
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_menu`
--

INSERT INTO `cy_menu` (`id`, `pid`, `url`, `title`, `icon`, `tips`, `status`, `o`) VALUES
(1, 0, 'index/index', '控制台', 'menu-icon fa fa-tachometer', '经常查看操作日志，发现异常以便及时追查原因。', 1, 1),
(2, 0, '#', '开发选项', 'menu-icon fa fa-cogs', '', 1, 2),
(3, 2, 'menu/index', '后台菜单', 'menu-icon fa  fa-folder-o', '开发新功能，新增、修改、删除后台菜单。', 1, 3),
(4, 2, 'variable/index', '自定义变量', 'menu-icon fa  fa-circle-o', '可新增、修改、删除后台自定义变量，方便后台模板直接调用。', 1, 4),
(5, 0, '#', '系统设置', 'menu-icon fa fa-cog', '', 1, 5),
(6, 5, 'setting/index', '网站设置', 'menu-icon fa  fa-info-circle', '网站设置，含自定义变量值的设置。', 1, 6),
(7, 5, 'database/backup', '数据库备份', 'menu-icon fa fa-floppy-o', '建议定期备份网站数据库，以便网站故障时能及时恢复数据。', 1, 7),
(8, 5, 'database/recovery', '数据还原', 'menu-icon fa fa-undo', '将备份在数据库文件还原致数据库。', 1, 8),
(9, 5, 'database/optimize', '数据优化', '', '', 0, 9),
(10, 5, 'search/index', '功能搜索', '', '找不到后台功能搜索一下就能找到。', 0, 10),
(11, 5, 'database/repair', '数据修复', '', '', 0, 11),
(12, 0, '#', '用户权限', 'menu-icon fa fa-users', '用户管理，用户组管理。', 1, 12),
(13, 12, 'user/index', '用户管理', 'menu-icon fa fa-user', '用户列表、新增、编辑、删除管理。', 1, 12),
(14, 12, 'group/index', '分组权限', 'menu-icon fa fa-lock', '权限组列表、新增、编辑、删除管理。', 1, 14),
(15, 0, '#', '网站管理', 'menu-icon fa fa-desktop', '网站内空管理', 1, 15),
(16, 15, 'article/index', '文章管理', '', '网站文章管理，对网站文章进行新增、修改、删除操作。', 1, 16),
(17, 15, 'article/add', '新增文章', '', '新增网站文章。', 1, 17),
(18, 15, 'article/edit', '编辑文章', '', '', 0, 18),
(19, 15, 'article/save', '文章保存', '', '', 0, 19),
(20, 15, 'category/index', '分类管理', '', '文章分类管理，对分类进行新增、修改、删除操作。', 1, 20),
(21, 15, 'category/add', '新增分类', '', '新增文章分类', 1, 21),
(22, 15, 'category/edit', '编辑文章', '', '', 0, 22),
(23, 15, 'category/save', '保存分类', '', '', 0, 23),
(24, 15, 'banner/index', '横幅管理', '', '横幅管理，可对网站横幅广告进行新增、修改、删除操作。', 1, 24),
(25, 15, 'banner/add', '新增横幅', '', '', 1, 25),
(26, 15, 'banner/edit', '编辑横幅', '', '', 0, 26),
(27, 15, 'banner/save', '保存横幅', '', '', 0, 27),
(28, 15, 'link/index', '友情链接', '', '友情链接管理，对网站友情链接进行新增、修改、删除操作。', 1, 28),
(29, 15, 'link/add', '新增链接', '', '新增网站友情连接。', 1, 29),
(30, 15, 'link/edit', '编辑链接', '', '', 0, 30),
(31, 15, 'link/save', '保存链接', '', '', 0, 31),
(32, 0, '#', '个人中心', 'menu-icon fa fa-user', '', 1, 32),
(33, 32, 'profile/index', '个人资料', 'menu-icon fa fa-user', '用户个人资料修改。', 1, 33),
(34, 32, 'logout/index', '退出登录', 'menu-icon fa fa-power-off', '', 1, 34),
(35, 0, 'dwz/index', '短链域名', 'menu-icon fa fa-link', '', 1, 0),
(36, 0, '#', 'godaddy', 'menu-icon fa fa fa-bars', '', 1, 0),
(37, 36, 'godaddy/apikey', '密钥设置', '', '', 1, 0),
(38, 36, 'godaddy/index', '解析记录', '', '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cy_migrations`
--

CREATE TABLE IF NOT EXISTS `cy_migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_migrations`
--

INSERT INTO `cy_migrations` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20180414063451, 'User', '2019-11-26 11:16:42', '2019-11-26 11:16:42', 0),
(20180414083712, 'UserGroup', '2019-11-26 11:16:42', '2019-11-26 11:16:42', 0),
(20180414085417, 'Log', '2019-11-26 11:16:42', '2019-11-26 11:16:42', 0),
(20180414090927, 'Link', '2019-11-26 11:16:42', '2019-11-26 11:16:43', 0),
(20180414120957, 'Article', '2019-11-26 11:16:43', '2019-11-26 11:16:43', 0),
(20180414123404, 'Banner', '2019-11-26 11:16:43', '2019-11-26 11:16:43', 0),
(20180414124141, 'Category', '2019-11-26 11:16:43', '2019-11-26 11:16:43', 0),
(20180414131647, 'Menu', '2019-11-26 11:16:43', '2019-11-26 11:16:44', 0),
(20191023084047, 'UserAuth', '2019-11-26 11:16:44', '2019-11-26 11:16:45', 0);

-- --------------------------------------------------------

--
-- 表的结构 `cy_user`
--

CREATE TABLE IF NOT EXISTS `cy_user` (
  `uid` int(11) NOT NULL,
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
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_user`
--

INSERT INTO `cy_user` (`uid`, `ugid`, `username`, `password`, `avatar`, `sex`, `birthday`, `tel`, `qq`, `email`, `status`, `identifier`, `token`, `salt`, `skin`, `create_time`) VALUES
(1, 1, 'admin', '6c8ff8775debaa2daf7cf2e437e74e99', '', 0, 1574697600, '13800138000', '10000', '10000@qq.com', 1, '4fc828850277833ab04d7569acafad77', 'bfb7adddc0055d95b80f8273581d36c0', 'vVwSvdNwZZ', 'no-skin', 1574767002),
(2, 2, 'test', 'c6bac66e41f3f6817b1a9d5e3ff2f036', '/static/admin/images/avatars/avatar2.png', 0, 0, '', '', '', 1, '2c6ffd2767b2e3f0423512e3bab33fb0', '5d333efd8a0e65711732894535ed95e2', 'YsfUKzpkyV', 'no-skin', 0),
(3, 1, 'nl', '897abbe0125334eac93f8523732dc856', '/static/admin/images/avatars/avatar2.png', 0, 0, '', '', '', 1, '', '', '', 'no-skin', 0),
(4, 2, 'svrgdm63495', '897abbe0125334eac93f8523732dc856', '/static/admin/images/avatars/avatar2.png', 0, 0, '', '', '', 1, '7b79731e98041151a898b8383492a35b', '7c00b7ca70b0965ac6c77c5fb9df8e18', 'BGhf3YrMxt', 'no-skin', 0);

-- --------------------------------------------------------

--
-- 表的结构 `cy_user_auth`
--

CREATE TABLE IF NOT EXISTS `cy_user_auth` (
  `id` int(11) NOT NULL,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cy_user_group`
--

CREATE TABLE IF NOT EXISTS `cy_user_group` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '组状态，0禁用，1启用',
  `auth` text NOT NULL COMMENT '组权限'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cy_user_group`
--

INSERT INTO `cy_user_group` (`id`, `title`, `status`, `auth`) VALUES
(1, '超级管理员', 1, '36,38,37,35,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34'),
(2, '短链接用户', 1, '36,38,37,35,32,33,34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cy_article`
--
ALTER TABLE `cy_article`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `cy_banner`
--
ALTER TABLE `cy_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `o` (`o`);

--
-- Indexes for table `cy_category`
--
ALTER TABLE `cy_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`o`);

--
-- Indexes for table `cy_cfg`
--
ALTER TABLE `cy_cfg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_key` (`uid`,`key`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `cy_dwz`
--
ALTER TABLE `cy_dwz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain` (`domain`),
  ADD KEY `status` (`status`),
  ADD KEY `uid` (`status`);

--
-- Indexes for table `cy_godaddy`
--
ALTER TABLE `cy_godaddy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `uid` (`status`);

--
-- Indexes for table `cy_link`
--
ALTER TABLE `cy_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cy_log`
--
ALTER TABLE `cy_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cy_menu`
--
ALTER TABLE `cy_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`o`);

--
-- Indexes for table `cy_migrations`
--
ALTER TABLE `cy_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `cy_user`
--
ALTER TABLE `cy_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cy_user_auth`
--
ALTER TABLE `cy_user_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cy_user_group`
--
ALTER TABLE `cy_user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cy_article`
--
ALTER TABLE `cy_article`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cy_banner`
--
ALTER TABLE `cy_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cy_category`
--
ALTER TABLE `cy_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cy_cfg`
--
ALTER TABLE `cy_cfg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cy_dwz`
--
ALTER TABLE `cy_dwz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1110;
--
-- AUTO_INCREMENT for table `cy_godaddy`
--
ALTER TABLE `cy_godaddy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `cy_link`
--
ALTER TABLE `cy_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cy_log`
--
ALTER TABLE `cy_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2907;
--
-- AUTO_INCREMENT for table `cy_menu`
--
ALTER TABLE `cy_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `cy_user`
--
ALTER TABLE `cy_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cy_user_auth`
--
ALTER TABLE `cy_user_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cy_user_group`
--
ALTER TABLE `cy_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
