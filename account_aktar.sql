DROP TABLE IF EXISTS `duyurular`;
CREATE TABLE `duyurular` (
  `duyuru_id` int(11) NOT NULL AUTO_INCREMENT,
  `duyuru_desc` varchar(855) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `duyuru_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`duyuru_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=REDUNDANT;

DROP TABLE IF EXISTS `indirme_linkleri`;
CREATE TABLE `indirme_linkleri` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_tip` int(11) NOT NULL DEFAULT '0',
  `link_aciklama` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dosya_boyut` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;