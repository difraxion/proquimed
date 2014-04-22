/*
Navicat MySQL Data Transfer

Source Server         : SERVER
Source Server Version : 50051
Source Host           : difraxionserver:3306
Source Database       : scrud_codeigniter

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2013-07-22 16:26:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `contacto`
-- ----------------------------
DROP TABLE IF EXISTS `contacto`;
CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL auto_increment,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `comentario` longtext NOT NULL,
  `created_by` bigint(20) default NULL,
  `created` timestamp NULL default NULL,
  `modified_by` bigint(20) default NULL,
  `modified` timestamp NULL default NULL,
  PRIMARY KEY  (`id_contacto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacto
-- ----------------------------

-- ----------------------------
-- Table structure for `crud_components`
-- ----------------------------
DROP TABLE IF EXISTS `crud_components`;
CREATE TABLE `crud_components` (
  `id` bigint(20) NOT NULL auto_increment,
  `group_id` bigint(20) default NULL,
  `component_name` varchar(255) default NULL,
  `component_table` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_components
-- ----------------------------
INSERT INTO `crud_components` VALUES ('5', null, 'Contacto', 'contacto');
INSERT INTO `crud_components` VALUES ('6', '11', 'Datos Generales', 'datos_generales');
INSERT INTO `crud_components` VALUES ('7', '11', 'Secciones', 'secciones');

-- ----------------------------
-- Table structure for `crud_groups`
-- ----------------------------
DROP TABLE IF EXISTS `crud_groups`;
CREATE TABLE `crud_groups` (
  `id` bigint(20) NOT NULL auto_increment,
  `group_name` varchar(255) default NULL,
  `group_description` text,
  `group_manage_flag` tinyint(4) default NULL,
  `group_setting_management` tinyint(4) default NULL,
  `group_global_access` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_groups
-- ----------------------------
INSERT INTO `crud_groups` VALUES ('1', 'Administrators', null, '3', '1', '1');
INSERT INTO `crud_groups` VALUES ('2', 'Manager', '', '1', '1', '0');
INSERT INTO `crud_groups` VALUES ('3', 'Users', null, '0', '0', '0');

-- ----------------------------
-- Table structure for `crud_group_components`
-- ----------------------------
DROP TABLE IF EXISTS `crud_group_components`;
CREATE TABLE `crud_group_components` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_group_components
-- ----------------------------
INSERT INTO `crud_group_components` VALUES ('11', 'Sitio', '<p>Contiene los componentes para la administraci&oacute;n general del sitio como:</p>\r\n\r\n<ul>\r\n	<li>Nombre</li>\r\n	<li>Descripci&oacute;n</li>\r\n	<li>T&iacute;tulo pricipal del sitio</li>\r\n	<li>Palabras claves</li>\r\n	<li>Analytics</li>\r\n	<li>Favicon</li>\r\n	<li>Secciones</li>\r\n</ul>\r\n');

-- ----------------------------
-- Table structure for `crud_histories`
-- ----------------------------
DROP TABLE IF EXISTS `crud_histories`;
CREATE TABLE `crud_histories` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `history_action` varchar(255) default NULL,
  `history_date_time` datetime default NULL,
  `history_table_name` varchar(255) default NULL,
  `history_data` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_histories
-- ----------------------------
INSERT INTO `crud_histories` VALUES ('1', '1', 'admin', 'add', '2013-07-18 12:27:27', 'crud_languages', '{\"language_code\":\"es_MX\",\"language_name\":\"Espa\\u00f1ol (M\\u00e9xico)\",\"created_by\":\"1\",\"created\":\"2013-07-18 12:27:27\"}');
INSERT INTO `crud_histories` VALUES ('2', '1', 'admin', 'add', '2013-07-18 12:44:11', 'crud_components', '{\"component_name\":\"Articles 2\",\"group_id\":\"3\",\"component_table\":\"articles2\"}');
INSERT INTO `crud_histories` VALUES ('3', '1', 'admin', 'delete', '2013-07-18 14:41:04', 'crud_group_components', '{\"id\":\"3\",\"name\":\"Article Manager\",\"description\":\"<p>Article Manager<\\/p>\\r\\n\"}');
INSERT INTO `crud_histories` VALUES ('4', '1', 'admin', 'add', '2013-07-18 14:49:12', 'crud_group_components', '{\"name\":\"Article Manager\",\"description\":\"\"}');
INSERT INTO `crud_histories` VALUES ('5', '1', 'admin', 'update', '2013-07-18 14:50:06', 'crud_components', '{\"component_name\":\"Categories\",\"group_id\":\"10\",\"component_table\":\"categories\",\"id\":\"1\"}');
INSERT INTO `crud_histories` VALUES ('6', '1', 'admin', 'update', '2013-07-18 14:50:13', 'crud_components', '{\"component_name\":\"Articles\",\"group_id\":\"10\",\"component_table\":\"articles\",\"id\":\"2\"}');
INSERT INTO `crud_histories` VALUES ('7', '1', 'admin', 'update', '2013-07-18 14:50:23', 'crud_components', '{\"component_name\":\"Articles 2\",\"group_id\":\"10\",\"component_table\":\"articles2\",\"id\":\"4\"}');
INSERT INTO `crud_histories` VALUES ('8', '1', 'admin', 'delete', '2013-07-18 14:52:24', 'crud_group_components', '{\"id\":\"10\",\"name\":\"Article Manager\",\"description\":\"\"}');
INSERT INTO `crud_histories` VALUES ('9', '1', 'admin', 'delete', '2013-07-18 14:52:30', 'crud_components', '{\"id\":\"4\",\"group_id\":\"10\",\"component_name\":\"Articles 2\",\"component_table\":\"articles2\"}');
INSERT INTO `crud_histories` VALUES ('10', '1', 'admin', 'delete', '2013-07-18 14:52:33', 'crud_components', '{\"id\":\"3\",\"group_id\":\"0\",\"component_name\":\"Countries\",\"component_table\":\"countries\"}');
INSERT INTO `crud_histories` VALUES ('11', '1', 'admin', 'delete', '2013-07-18 14:52:35', 'crud_components', '{\"id\":\"2\",\"group_id\":\"10\",\"component_name\":\"Articles\",\"component_table\":\"articles\"}');
INSERT INTO `crud_histories` VALUES ('12', '1', 'admin', 'delete', '2013-07-18 14:52:37', 'crud_components', '{\"id\":\"1\",\"group_id\":\"10\",\"component_name\":\"Categories\",\"component_table\":\"categories\"}');
INSERT INTO `crud_histories` VALUES ('13', '1', 'admin', 'delete', '2013-07-18 14:53:52', 'crud_users', '{\"id\":\"4\",\"group_id\":\"0\",\"user_name\":\"user2\",\"user_password\":\"7c4a8d09ca3762af61e59520943dc26494f8941b\",\"user_email\":\"user2@demo.com\",\"user_first_name\":\"Demo\",\"user_las_name\":\"User 2\",\"user_info\":\"\",\"user_code\":null,\"user_status\":\"1\",\"user_manage_flag\":\"0\",\"user_setting_management\":\"0\",\"user_global_access\":\"0\"}');
INSERT INTO `crud_histories` VALUES ('14', '1', 'admin', 'add', '2013-07-18 15:00:46', 'crud_components', '{\"component_name\":\"Contacto\",\"component_table\":\"contacto\"}');
INSERT INTO `crud_histories` VALUES ('15', '1', 'admin', 'add', '2013-07-19 14:58:47', 'crud_group_components', '{\"name\":\"Sitio\",\"description\":\"<p>Contiene los componentes para la administraci&oacute;n general del sitio como:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nombre<\\/li>\\r\\n\\t<li>Descripci&oacute;n<\\/li>\\r\\n\\t<li>T&iacute;tulo pricipal del sitio<\\/li>\\r\\n\\t<li>Palabras claves<\\/li>\\r\\n\\t<li>Analytics<\\/li>\\r\\n\\t<li>Favicon<\\/li>\\r\\n\\t<li>Secciones<\\/li>\\r\\n<\\/ul>\\r\\n\"}');
INSERT INTO `crud_histories` VALUES ('16', '1', 'admin', 'add', '2013-07-19 14:59:18', 'crud_components', '{\"component_name\":\"Datos Generales\",\"group_id\":\"11\",\"component_table\":\"datos_generales\"}');
INSERT INTO `crud_histories` VALUES ('17', '1', 'admin', 'add', '2013-07-19 15:12:17', 'crud_components', '{\"component_name\":\"Secciones\",\"group_id\":\"11\",\"component_table\":\"secciones\"}');
INSERT INTO `crud_histories` VALUES ('18', '1', 'admin', 'add', '2013-07-19 17:30:26', 'datos_generales', '{\"nombre_sitio\":\"tmp2.0\",\"titulo_principal\":\"Template 2.0\",\"favicon\":\"\",\"descripcion\":\"\",\"palabras_claves\":\"\",\"analytics\":\"\",\"created_by\":\"1\",\"created\":\"2013-07-19 17:30:26\"}');
INSERT INTO `crud_histories` VALUES ('19', '1', 'admin', 'update', '2013-07-20 12:18:44', 'datos_generales', '{\"nombre_sitio\":\"tmp2.0\",\"titulo_principal\":\"Template 2.0\",\"favicon\":\"\",\"image_site\":\"1374340722-cubo.png\",\"descripcion\":\"\",\"palabras_claves\":\"\",\"analytics\":\"\",\"modified_by\":\"1\",\"modified\":\"2013-07-20 12:18:44\",\"id_datos_generales\":\"1\"}');
INSERT INTO `crud_histories` VALUES ('20', '1', 'admin', 'update', '2013-07-20 12:20:18', 'datos_generales', '{\"nombre_sitio\":\"tmp2.0\",\"titulo_principal\":\"Template 2.0\",\"favicon\":\"\",\"image_site\":\"\",\"descripcion\":\"\",\"palabras_claves\":\"\",\"analytics\":\"\",\"modified_by\":\"1\",\"modified\":\"2013-07-20 12:20:18\",\"id_datos_generales\":\"1\"}');
INSERT INTO `crud_histories` VALUES ('21', '1', 'admin', 'update', '2013-07-22 10:04:20', 'crud_components', '{\"component_name\":\"Secciones\",\"group_id\":\"11\",\"component_table\":\"secciones\",\"id\":\"7\"}');
INSERT INTO `crud_histories` VALUES ('22', '1', 'admin', 'add', '2013-07-22 10:10:55', 'secciones', '{\"nombre\":\"Contacto\",\"tagname\":\"form\",\"carpeta\":\"Contacto\",\"created_by\":\"1\",\"created\":\"2013-07-22 10:10:55\"}');
INSERT INTO `crud_histories` VALUES ('23', '1', 'admin', 'add', '2013-07-22 10:11:14', 'secciones', '{\"nombre\":\"Inicio\",\"tagname\":\"inicio\",\"carpeta\":\"\",\"created_by\":\"1\",\"created\":\"2013-07-22 10:11:14\"}');
INSERT INTO `crud_histories` VALUES ('24', '1', 'admin', 'update', '2013-07-22 12:53:30', 'secciones', '{\"titulo\":\"Contacto\",\"nombre\":\"contacto\",\"tagname\":\"form\",\"carpeta\":\"contacto\",\"modified_by\":\"1\",\"modified\":\"2013-07-22 12:53:30\",\"id_secciones\":\"1\"}');
INSERT INTO `crud_histories` VALUES ('25', '1', 'admin', 'update', '2013-07-22 12:53:43', 'secciones', '{\"titulo\":\"Inicio\",\"nombre\":\"inicio\",\"tagname\":\"inicio\",\"carpeta\":\"\",\"modified_by\":\"1\",\"modified\":\"2013-07-22 12:53:43\",\"id_secciones\":\"2\"}');

-- ----------------------------
-- Table structure for `crud_languages`
-- ----------------------------
DROP TABLE IF EXISTS `crud_languages`;
CREATE TABLE `crud_languages` (
  `id` bigint(20) NOT NULL auto_increment,
  `language_code` varchar(255) default NULL,
  `language_name` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `created` timestamp NULL default NULL,
  `modified_by` bigint(20) default NULL,
  `modified` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_languages
-- ----------------------------
INSERT INTO `crud_languages` VALUES ('1', 'en_US', 'English (United States)', '1', '2013-04-24 07:16:13', '1', '2013-04-30 06:34:48');
INSERT INTO `crud_languages` VALUES ('2', 'es_MX', 'Español (México)', '1', '2013-07-18 12:27:27', null, null);

-- ----------------------------
-- Table structure for `crud_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `crud_permissions`;
CREATE TABLE `crud_permissions` (
  `group_id` bigint(20) NOT NULL,
  `com_id` bigint(20) NOT NULL,
  `permission_type` tinyint(4) NOT NULL,
  PRIMARY KEY  (`group_id`,`com_id`,`permission_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_permissions
-- ----------------------------
INSERT INTO `crud_permissions` VALUES ('1', '5', '3');
INSERT INTO `crud_permissions` VALUES ('1', '5', '4');
INSERT INTO `crud_permissions` VALUES ('1', '6', '1');
INSERT INTO `crud_permissions` VALUES ('1', '6', '2');
INSERT INTO `crud_permissions` VALUES ('1', '6', '3');
INSERT INTO `crud_permissions` VALUES ('1', '6', '4');
INSERT INTO `crud_permissions` VALUES ('1', '6', '5');
INSERT INTO `crud_permissions` VALUES ('1', '7', '1');
INSERT INTO `crud_permissions` VALUES ('1', '7', '2');
INSERT INTO `crud_permissions` VALUES ('1', '7', '3');
INSERT INTO `crud_permissions` VALUES ('1', '7', '4');
INSERT INTO `crud_permissions` VALUES ('1', '7', '5');
INSERT INTO `crud_permissions` VALUES ('2', '5', '4');
INSERT INTO `crud_permissions` VALUES ('3', '5', '4');

-- ----------------------------
-- Table structure for `crud_settings`
-- ----------------------------
DROP TABLE IF EXISTS `crud_settings`;
CREATE TABLE `crud_settings` (
  `setting_key` varchar(255) NOT NULL default '',
  `setting_value` longtext,
  PRIMARY KEY  (`setting_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_settings
-- ----------------------------
INSERT INTO `crud_settings` VALUES ('dfe2db74975e0aa9f6fdd4d61dedcb7328502456', 'a:17:{s:11:\"setting_key\";s:40:\"dfe2db74975e0aa9f6fdd4d61dedcb7328502456\";s:13:\"email_address\";s:14:\"admin@demo.com\";s:13:\"default_group\";s:1:\"3\";s:20:\"disable_registration\";s:1:\"0\";s:22:\"disable_reset_password\";s:1:\"0\";s:24:\"require_email_activation\";s:1:\"1\";s:16:\"default_language\";s:5:\"en_US\";s:16:\"enable_recaptcha\";s:1:\"1\";s:20:\"recaptcha_public_key\";s:40:\"6Le4CtUSAAAAAC-Cnbu_d6eshhyDyY_H1OB2cI11\";s:21:\"recaptcha_private_key\";s:40:\"6Le4CtUSAAAAAJOySWsjT1NAKtfdqJyCKomyzoKx\";s:11:\"enable_smtp\";s:1:\"0\";s:9:\"smtp_host\";s:0:\"\";s:9:\"smtp_port\";s:0:\"\";s:9:\"smtp_auth\";s:0:\"\";s:16:\"enable_smtp_auth\";s:1:\"0\";s:12:\"smtp_account\";s:0:\"\";s:13:\"smtp_password\";s:0:\"\";}');
INSERT INTO `crud_settings` VALUES ('f0347ce3a03a3ba71f596438a2b80dd21c9af71b', 'a:5:{s:11:\"setting_key\";s:40:\"f0347ce3a03a3ba71f596438a2b80dd21c9af71b\";s:17:\"send_link_subject\";s:32:\"[PHP Admin Pro] Activate Account\";s:14:\"send_link_body\";s:157:\"Welcome {user_name},\r\n\r\nYou must activate your account via this message to log in.\r\n\r\nClick the following link to do so: {activation_link}\r\n\r\nThanks.								\";s:17:\"activated_subject\";s:48:\"[PHP Admin Pro] You have activated your account!\";s:14:\"activated_body\";s:187:\"Hi there {user_name} !\r\n\r\nYour account at {site_address} has been successfully activated :).\r\n\r\nFor your reference, your user email is  {user_email}.\r\n\r\nSee you soon!																					\";}');
INSERT INTO `crud_settings` VALUES ('868a882a74b3f7f4cc49d8914e144ef07b3ea9d5', 'a:5:{s:11:\"setting_key\";s:40:\"868a882a74b3f7f4cc49d8914e144ef07b3ea9d5\";s:15:\"request_subject\";s:35:\"[PHP Admin Pro] Lost your password?\";s:12:\"request_body\";s:167:\"Hi {user_name},\r\n\r\nYour user email is {user_email}.\r\n\r\nTo reset your password at AuthAcl, please click the following password reset link: {reset_link}\r\n\r\nSee you soon!\";s:15:\"success_subject\";s:45:\"[PHP Admin Pro] Your password has been reset.\";s:12:\"success_body\";s:194:\"Welcome back {user_name},\r\n\r\nI\'m just letting you know your password at {site_address} has been successfully changed.\r\n\r\nHopefully you were the one that requested this password reset !\r\n\r\nCheers\";}');

-- ----------------------------
-- Table structure for `crud_users`
-- ----------------------------
DROP TABLE IF EXISTS `crud_users`;
CREATE TABLE `crud_users` (
  `id` bigint(20) NOT NULL auto_increment,
  `group_id` bigint(20) default NULL,
  `user_name` varchar(255) default NULL,
  `user_password` varchar(100) default NULL,
  `user_email` varchar(255) default NULL,
  `user_first_name` varchar(255) default NULL,
  `user_las_name` varchar(255) default NULL,
  `user_info` text,
  `user_code` varchar(255) default NULL,
  `user_status` tinyint(4) default '0',
  `user_manage_flag` tinyint(4) default NULL,
  `user_setting_management` tinyint(4) default NULL,
  `user_global_access` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_users
-- ----------------------------
INSERT INTO `crud_users` VALUES ('1', '1', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin@demo.com', 'Demo', 'Admin ', '', null, '1', '0', '0', '0');
INSERT INTO `crud_users` VALUES ('2', '2', 'manager', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'manager@demo.com', 'Demo', 'Manager', '', null, '1', '0', '0', '0');
INSERT INTO `crud_users` VALUES ('3', '3', 'user', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'user@demo.com', 'Demo', 'User', '', null, '1', null, null, null);

-- ----------------------------
-- Table structure for `crud_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `crud_user_permissions`;
CREATE TABLE `crud_user_permissions` (
  `user_id` bigint(20) NOT NULL,
  `com_id` bigint(20) NOT NULL,
  `permission_type` tinyint(4) NOT NULL,
  PRIMARY KEY  (`user_id`,`com_id`,`permission_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crud_user_permissions
-- ----------------------------
INSERT INTO `crud_user_permissions` VALUES ('4', '3', '1');
INSERT INTO `crud_user_permissions` VALUES ('4', '3', '2');
INSERT INTO `crud_user_permissions` VALUES ('4', '3', '3');
INSERT INTO `crud_user_permissions` VALUES ('4', '3', '4');

-- ----------------------------
-- Table structure for `datos_generales`
-- ----------------------------
DROP TABLE IF EXISTS `datos_generales`;
CREATE TABLE `datos_generales` (
  `id_datos_generales` int(11) NOT NULL auto_increment,
  `nombre_sitio` varchar(250) NOT NULL,
  `titulo_principal` varchar(250) NOT NULL,
  `descripcion` longtext,
  `palabras_claves` longtext,
  `analytics` longtext,
  `favicon` varchar(250) default NULL,
  `image_site` varchar(250) default NULL,
  `created_by` bigint(20) default NULL,
  `created` timestamp NULL default NULL,
  `modified_by` bigint(20) default NULL,
  `modified` timestamp NULL default NULL,
  PRIMARY KEY  (`id_datos_generales`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datos_generales
-- ----------------------------
INSERT INTO `datos_generales` VALUES ('1', 'tmp2.0', 'Template 2.0', '', '', '', null, null, '1', '2013-07-19 17:30:26', '1', '2013-07-20 12:20:18');

-- ----------------------------
-- Table structure for `secciones`
-- ----------------------------
DROP TABLE IF EXISTS `secciones`;
CREATE TABLE `secciones` (
  `id_secciones` int(11) NOT NULL auto_increment,
  `titulo` varchar(250) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `tagname` varchar(50) NOT NULL,
  `carpeta` varchar(250) default NULL,
  `created_by` bigint(20) default NULL,
  `created` timestamp NULL default NULL,
  `modified_by` bigint(20) default NULL,
  `modified` timestamp NULL default NULL,
  PRIMARY KEY  (`id_secciones`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secciones
-- ----------------------------
INSERT INTO `secciones` VALUES ('1', 'Contacto', 'contacto', 'form', 'contacto', '1', '2013-07-22 10:10:55', '1', '2013-07-22 12:53:30');
INSERT INTO `secciones` VALUES ('2', 'Inicio', 'inicio', 'inicio', '', '1', '2013-07-22 10:11:14', '1', '2013-07-22 12:53:43');
