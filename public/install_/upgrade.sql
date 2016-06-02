-- --------------------------------------------------------

--
-- Database: `opencart`
--

-- --------------------------------------------------------

SET sql_mode = '';
--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(15, 'Slideshow', 1),
(14, 'banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(188, 14, '', 'catalog/banner-2.jpg', 2),
(187, 14, '', 'catalog/banner-1.jpg', 1),
(178, 15, '', 'catalog/slide-3.jpg', 3),
(177, 15, '', 'catalog/slide-2.jpg', 2),
(176, 15, '', 'catalog/slide-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', ''),
(187, 3, 14, 'banner-1', '&lt;div class=&quot;s-desc_cnt&quot;&gt;\r\n&lt;h2&gt;Adidas&lt;/h2&gt;\r\n&lt;p&gt;Summer “BATTLE” Pack&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;a href=&quot;index.php?route=product/category&amp;amp;path=33&quot; class=&quot;link&quot;&gt;Shop now!&lt;/a&gt;\r\n'),
(178, 3, 15, 'slide-3', '&lt;h2&gt;adidas&lt;br&gt;&lt;span&gt;Primeknit 2.0&lt;/span&gt;&lt;/h2&gt;'),
(178, 2, 15, 'slide-3', '&lt;h2&gt;adidas&lt;br&gt;&lt;span&gt;Primeknit 2.0&lt;/span&gt;&lt;/h2&gt;'),
(178, 1, 15, 'slide-3', '&lt;h2&gt;adidas&lt;br&gt;&lt;span&gt;Primeknit 2.0&lt;/span&gt;&lt;/h2&gt;'),
(177, 3, 15, 'slide-2', '&lt;div class=&quot;slide-2&quot;&gt;\r\n&lt;h2&gt;Nike Soccer Shoes&lt;br&gt;&lt;span&gt;&lt;span&gt;new&lt;/span&gt; collection&lt;/span&gt;&lt;/h2&gt;\r\n&lt;/div&gt;'),
(177, 2, 15, 'slide-2', '&lt;div class=&quot;slide-2&quot;&gt;\r\n&lt;h2&gt;Nike Soccer Shoes&lt;br&gt;&lt;span&gt;&lt;span&gt;new&lt;/span&gt; collection&lt;/span&gt;&lt;/h2&gt;\r\n&lt;/div&gt;'),
(176, 1, 15, 'slide-1', '&lt;h2&gt;official jerseys&lt;br&gt;&lt;span&gt;for every country!&lt;/span&gt;&lt;/h2&gt;'),
(176, 2, 15, 'slide-1', '&lt;h2&gt;official jerseys&lt;br&gt;&lt;span&gt;for every country!&lt;/span&gt;&lt;/h2&gt;'),
(176, 3, 15, 'slide-1', '&lt;h2&gt;official jerseys&lt;br&gt;&lt;span&gt;for every country!&lt;/span&gt;&lt;/h2&gt;'),
(188, 2, 14, 'banner-2', '&lt;h2&gt;Adidas&lt;/h2&gt;\r\n&lt;p&gt;Adipower Predator&lt;br&gt;Revealed&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot; class=&quot;link&quot;&gt;Shop now!&lt;/a&gt;'),
(188, 3, 14, 'banner-2', '&lt;h2&gt;Adidas&lt;/h2&gt;\r\n&lt;p&gt;Adipower Predator&lt;br&gt;Revealed&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot; class=&quot;link&quot;&gt;Shop now!&lt;/a&gt;'),
(188, 1, 14, 'banner-2', '&lt;h2&gt;Adidas&lt;/h2&gt;\r\n&lt;p&gt;Adipower Predator&lt;br&gt;Revealed&lt;/p&gt;\r\n&lt;a href=&quot;index.php?route=product/category&amp;amp;path=34&quot; class=&quot;link&quot;&gt;Shop now!&lt;/a&gt;'),
(177, 1, 15, 'slide-2', '&lt;div class=&quot;slide-2&quot;&gt;\r\n&lt;h2&gt;Nike Soccer Shoes&lt;br&gt;&lt;span&gt;&lt;span&gt;new&lt;/span&gt; collection&lt;/span&gt;&lt;/h2&gt;\r\n&lt;/div&gt;\r\n'),
(187, 2, 14, 'banner-1', '&lt;div class=&quot;s-desc_cnt&quot;&gt;\r\n&lt;h2&gt;Adidas&lt;/h2&gt;\r\n&lt;p&gt;Summer “BATTLE” Pack&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;a href=&quot;index.php?route=product/category&amp;amp;path=33&quot; class=&quot;link&quot;&gt;Shop now!&lt;/a&gt;\r\n'),
(187, 1, 14, 'banner-1', '&lt;div class=&quot;s-desc_cnt&quot;&gt;\r\n&lt;h2&gt;Adidas&lt;/h2&gt;\r\n&lt;p&gt;Summer “BATTLE” Pack&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;a href=&quot;index.php?route=product/category&amp;amp;path=33&quot; class=&quot;link&quot;&gt;Shop now!&lt;/a&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=458 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(456, 'module', 'tm_category_menu'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information'),
(438, 'module', 'tm_slideshow'),
(440, 'module', 'olark'),
(449, 'module', 'tm_social_list'),
(457, 'module', 'tm_newsletter_popup');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=713 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(694, 4, 'account', 'column_right', 1),
(407, 12, 'olark.50', 'footer_top', 1),
(706, 7, 'account', 'column_right', 1),
(688, 3, 'featured.28', 'column_right', 1),
(687, 3, 'bestseller.43', 'column_right', 2),
(685, 10, 'bestseller.43', 'column_right', 2),
(682, 6, 'featured.28', 'column_right', 2),
(684, 10, 'olark.50', 'footer_top', 1),
(704, 9, 'latest.69', 'column_right', 2),
(700, 13, 'olark.50', 'footer_top', 1),
(698, 5, 'featured.28', 'column_right', 2),
(691, 8, 'account', 'column_right', 1),
(681, 6, 'olark.50', 'footer_top', 1),
(686, 3, 'account', 'column_right', 1),
(415, 11, 'olark.50', 'footer_top', 1),
(697, 5, 'olark.50', 'footer_top', 1),
(420, 2, 'olark.50', 'footer_top', 1),
(703, 9, 'olark.50', 'footer_top', 1),
(711, 1, 'tm_slideshow.46', 'header_top', 1),
(680, 6, 'account', 'column_right', 1),
(683, 10, 'affiliate', 'column_right', 1),
(705, 7, 'olark.50', 'footer_top', 1),
(690, 8, 'olark.50', 'footer_top', 1),
(693, 4, 'bestseller.43', 'column_right', 2),
(696, 5, 'account', 'column_right', 1),
(699, 13, 'bestseller.43', 'column_right', 1),
(702, 9, 'account', 'column_right', 1),
(710, 1, 'featured.51', 'content_top', 1),
(709, 1, 'olark.50', 'footer_top', 1),
(708, 1, 'banner.33', 'header_top', 2),
(689, 3, 'olark.50', 'footer_top', 1),
(692, 8, 'special.67', 'column_right', 2),
(695, 4, 'olark.50', 'footer_top', 1),
(701, 13, 'latest.69', 'column_right', 2),
(707, 7, 'latest.69', 'column_right', 2),
(712, 1, 'tm_newsletter_popup.72', 'header_top', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=200 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(190, 6, 0, 'account/%'),
(191, 10, 0, 'affiliate/%'),
(192, 3, 0, 'product/category'),
(199, 1, 0, 'common/home'),
(148, 2, 0, 'product/product'),
(146, 11, 0, 'information/information'),
(198, 7, 0, 'checkout/%'),
(193, 8, 0, 'information/contact'),
(197, 9, 0, 'information/sitemap'),
(194, 4, 0, ''),
(195, 5, 0, 'product/manufacturer'),
(143, 12, 0, 'product/compare'),
(196, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(33, 'banners', 'banner', 'a:5:{s:4:"name";s:7:"banners";s:9:"banner_id";s:2:"14";s:5:"width";s:3:"874";s:6:"height";s:3:"874";s:6:"status";s:1:"1";}'),
(28, 'Featured  Aside', 'featured', 'a:6:{s:4:"name";s:15:"Featured  Aside";s:7:"product";a:8:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"30";i:3;s:2:"42";i:4;s:2:"33";i:5;s:2:"46";i:6;s:2:"32";i:7;s:2:"28";}s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(51, 'Featured Home', 'featured', 'a:6:{s:4:"name";s:13:"Featured Home";s:7:"product";a:8:{i:0;s:2:"35";i:1;s:2:"33";i:2;s:2:"28";i:3;s:2:"47";i:4;s:2:"30";i:5;s:2:"45";i:6;s:2:"48";i:7;s:2:"34";}s:5:"limit";s:1:"8";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(46, 'Tm Slideshow', 'tm_slideshow', 'a:5:{s:4:"name";s:12:"Tm Slideshow";s:9:"banner_id";s:2:"15";s:5:"width";s:4:"1748";s:6:"height";s:3:"874";s:6:"status";s:1:"1";}'),
(50, 'Olark Chat', 'olark', 'a:4:{s:4:"name";s:10:"Olark Chat";s:13:"olark_version";s:5:"2.0.0";s:13:"olark_site_id";s:16:"7830-582-10-3714";s:6:"status";s:1:"1";}'),
(71, 'TM Category Menu', 'tm_category_menu', 'a:2:{s:4:"name";s:16:"TM Category Menu";s:6:"status";s:1:"1";}'),
(43, 'Bestsellers Aside', 'bestseller', 'a:5:{s:4:"name";s:17:"Bestsellers Aside";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(48, 'Specials Home', 'special', 'a:5:{s:4:"name";s:13:"Specials Home";s:5:"limit";s:1:"4";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(66, 'BestSellers Home', 'bestseller', 'a:5:{s:4:"name";s:16:"BestSellers Home";s:5:"limit";s:1:"4";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(67, 'Specials Aside', 'special', 'a:5:{s:4:"name";s:14:"Specials Aside";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(68, 'Latest Home', 'latest', 'a:5:{s:4:"name";s:11:"Latest Home";s:5:"limit";s:1:"4";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(69, 'Latest Aside', 'latest', 'a:5:{s:4:"name";s:12:"Latest Aside";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(72, 'TM Newsletter Popup', 'tm_newsletter_popup', 'a:7:{s:4:"name";s:19:"TM Newsletter Popup";s:19:"newsletter_popup_bg";s:0:"";s:25:"newsletter_popup_bg_width";s:3:"688";s:26:"newsletter_popup_bg_height";s:3:"384";s:23:"newsletter_popup_cookie";s:1:"1";s:31:"tm_newsletter_popup_description";a:3:{i:1;a:2:{s:5:"title";s:27:"Subscribe to our newsletter";s:11:"description";s:142:"Sign up for our exclusive email list and be the first to know about new products,\r\nspecial offers, store event and other discount information.";}i:2;a:2:{s:5:"title";s:27:"Subscribe to our newsletter";s:11:"description";s:142:"Sign up for our exclusive email list and be the first to know about new products,\r\nspecial offers, store event and other discount information.";}i:3;a:2:{s:5:"title";s:27:"Subscribe to our newsletter";s:11:"description";s:142:"Sign up for our exclusive email list and be the first to know about new products,\r\nspecial offers, store event and other discount information.";}}s:6:"status";s:1:"1";}');