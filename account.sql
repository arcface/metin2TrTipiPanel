SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `account` ADD `arc_rank` INT(11) NOT NULL AFTER `phone1`, ADD `arc_conf` INT(11) NOT NULL AFTER `arc_rank`, ADD `arc_ref_code` VARCHAR(150) NOT NULL AFTER `arc_conf`;

-- ----------------------------
-- Table structure for `duyurular`
-- ----------------------------
DROP TABLE IF EXISTS `duyurular`;
CREATE TABLE `duyurular` (
  `duyuru_id` int(11) NOT NULL AUTO_INCREMENT,
  `duyuru_desc` varchar(855) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `duyuru_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`duyuru_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of duyurular
-- ----------------------------

-- ----------------------------
-- Table structure for `haberler`
-- ----------------------------
DROP TABLE IF EXISTS `haberler`;
CREATE TABLE `haberler` (
  `haber_id` int(11) NOT NULL AUTO_INCREMENT,
  `haber_title` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `haber_link` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `haber_desc` varchar(855) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `haber_keywords` varchar(855) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `haber_tur` int(11) NOT NULL DEFAULT '0',
  `haber_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `haber_ekleyen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`haber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of haberler
-- ----------------------------

-- ----------------------------
-- Table structure for `indirme_linkleri`
-- ----------------------------
DROP TABLE IF EXISTS `indirme_linkleri`;
CREATE TABLE `indirme_linkleri` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_tip` int(11) NOT NULL DEFAULT '0',
  `link_aciklama` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dosya_boyut` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of indirme_linkleri
-- ----------------------------
