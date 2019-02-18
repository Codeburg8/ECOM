-- --------------------------------------------------------
-- Host:                         207.148.119.28
-- Server version:               5.7.22-0ubuntu18.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
SET SQL_SAFE_UPDATES = 0;

-- Dumping database structure for ecom
DROP DATABASE IF EXISTS `ecom`;
CREATE DATABASE IF NOT EXISTS `ecom` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ecom`;

-- Dumping structure for table ecom.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `inserted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table ecom.categories: ~5 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `inserted_at`, `updated_at`, `status`) VALUES
	(1, 'Grocery', '2019-01-17 08:11:34', '2019-01-17 02:41:33', 1),
	(2, 'Men\'s Fashion', '2019-01-17 08:15:11', '2019-01-17 08:15:14', 1),
	(3, 'Women\'s Fashion', '2019-01-17 08:15:09', '2019-01-17 08:15:15', 1),
	(4, 'Home, Kitchen, Pets', '2019-01-17 08:15:12', '2019-01-17 08:15:16', 1),
	(5, 'TV, Appliances, Electronics', '2019-01-17 08:15:13', '2019-01-17 08:15:17', 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table ecom.order_products
DROP TABLE IF EXISTS `order_products`;
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `inserted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- Dumping data for table ecom.order_products: ~27 rows (approximately)
DELETE FROM `order_products`;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` (`id`, `order_id`, `name`, `description`, `price`, `quantity`, `subtotal`, `inserted_at`, `updated_at`) VALUES
	(11, 15, 'Container - Hngd Cll Blk 7x7x3', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 68, 1, 68, '2019-01-17 17:27:46', NULL),
	(12, 15, 'Quiche Assorted', 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis duinameidid', 72, 1, 72, '2019-01-17 17:27:46', NULL),
	(13, 15, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 81, 1, 81, '2019-01-17 17:27:46', NULL),
	(14, 16, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 81, 3, 242, '2019-01-17 17:44:31', NULL),
	(15, 16, 'Container - Hngd Cll Blk 7x7x3', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 68, 1, 68, '2019-01-17 17:44:31', NULL),
	(16, 16, 'Quiche Assorted', 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 72, 1, 72, '2019-01-17 17:44:32', NULL),
	(19, 0, 'Container - Hngd Cll Blk 7x7x3', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 68, 1, 68, '2019-01-18 03:07:36', NULL),
	(20, 0, 'Crawfish', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', 93, 1, 93, '2019-01-18 03:07:36', NULL),
	(21, 0, 'Sprouts - Onion', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 44, 1, 44, '2019-01-18 03:07:36', NULL),
	(22, 0, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 81, 3, 243, '2019-01-18 03:07:36', NULL),
	(23, 0, 'Container - Hngd Cll Blk 7x7x3', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 68, 1, 68, '2019-01-18 03:08:17', NULL),
	(24, 0, 'Crawfish', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', 93, 1, 93, '2019-01-18 03:08:17', NULL),
	(25, 0, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 81, 3, 243, '2019-01-18 03:08:17', NULL),
	(26, 0, 'Sprouts - Onion', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 44, 1, 44, '2019-01-18 03:08:17', NULL),
	(27, 18, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 81, 1, 81, '2019-01-18 03:08:36', NULL),
	(28, 18, 'Sprouts - Onion', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 44, 1, 44, '2019-01-18 03:08:36', NULL),
	(29, 18, 'Quiche Assorted', 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 72, 1, 72, '2019-01-18 03:08:36', NULL),
	(30, 19, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 81, 2, 162, '2019-01-18 03:09:14', NULL),
	(31, 19, 'Sprouts - Onion', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 44, 1, 44, '2019-01-18 03:09:14', NULL),
	(36, 20, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 81, 1, 81, '2019-01-18 03:13:38', NULL),
	(37, 20, 'Sprouts - Onion', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 44, 1, 44, '2019-01-18 03:13:38', NULL),
	(38, 20, 'Sprouts - Onion', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 44, 1, 44, '2019-01-18 03:13:38', NULL),
	(43, 21, 'Bread Cranberry Foccacia', 'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin', 38, 1, 38, '2019-01-18 03:20:37', NULL),
	(44, 21, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 81, 1, 81, '2019-01-18 03:20:37', NULL),
	(45, 21, 'Crawfish', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', 93, 2, 186, '2019-01-18 03:20:37', NULL),
	(46, 21, 'Container - Hngd Cll Blk 7x7x3', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 68, 1, 68, '2019-01-18 03:20:37', NULL),
	(47, 21, 'Olives - Stuffed', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 81, 3, 243, '2019-01-18 03:20:37', NULL);
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;

-- Dumping structure for table ecom.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT '0.00',
  `category_id` int(11) DEFAULT '0',
  `inserted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Dumping data for table ecom.products: ~100 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `inserted_at`, `updated_at`, `status`) VALUES
	(1, 'Container - Hngd Cll Blk 7x7x3', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 68.40, 1, '2019-01-17 02:50:18', NULL, 1),
	(2, 'Chips Potato Salt Vinegar 43g', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 80.78, 1, '2019-01-17 02:50:19', NULL, 1),
	(3, 'Quiche Assorted', 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 72.04, 1, '2019-01-17 02:50:19', NULL, 1),
	(4, 'Sprouts - Onion', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 44.44, 1, '2019-01-17 02:50:19', NULL, 1),
	(5, 'Bread Cranberry Foccacia', 'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin', 37.90, 1, '2019-01-17 02:50:19', NULL, 1),
	(6, 'Crawfish', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', 92.93, 1, '2019-01-17 02:50:19', NULL, 1),
	(7, 'Cheese - Le Cheve Noir', 'duis bibendum felis sed interdum venenatis turpis enim blandit mi', 98.11, 1, '2019-01-17 02:50:19', NULL, 1),
	(8, 'Soup - Campbells, Beef Barley', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus', 89.69, 1, '2019-01-17 02:50:19', NULL, 1),
	(9, 'Pasta - Shells, Medium, Dry', 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 42.09, 1, '2019-01-17 02:50:20', NULL, 1),
	(10, 'Plate Foam Laminated 9in Blk', 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', 91.21, 1, '2019-01-17 02:50:20', NULL, 1),
	(11, 'Syrup - Monin - Passion Fruit', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 18.81, 1, '2019-01-17 02:50:20', NULL, 1),
	(12, 'Cake - Lemon Chiffon', 'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 64.25, 1, '2019-01-17 02:50:20', NULL, 1),
	(13, 'Cream - 35%', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', 50.86, 1, '2019-01-17 02:50:20', NULL, 1),
	(14, 'Beans - Kidney White', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 65.02, 1, '2019-01-17 02:50:20', NULL, 1),
	(15, 'Gingerale - Schweppes, 355 Ml', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien', 73.33, 1, '2019-01-17 02:50:20', NULL, 1),
	(16, 'Olives - Stuffed', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 80.86, 1, '2019-01-17 02:50:20', NULL, 1),
	(17, 'Flour - Masa De Harina Mexican', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', 88.58, 1, '2019-01-17 02:50:21', NULL, 1),
	(18, 'Compound - Passion Fruit', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', 64.92, 1, '2019-01-17 02:50:21', NULL, 1),
	(19, 'Quiche Assorted', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque', 70.90, 1, '2019-01-17 02:50:21', NULL, 1),
	(20, 'Papadam', 'donec ut dolor morbi vel lectus in quam fringilla rhoncus', 15.84, 1, '2019-01-17 02:50:21', NULL, 1),
	(21, 'Beef - Tenderloin', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', 54.71, 1, '2019-01-17 02:50:21', NULL, 1),
	(22, 'Tomatoes - Plum, Canned', 'integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum', 58.01, 1, '2019-01-17 02:50:21', NULL, 1),
	(23, 'Bread - Focaccia Quarter', 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', 69.77, 1, '2019-01-17 02:50:21', NULL, 1),
	(24, 'Heavy Duty Dust Pan', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', 32.59, 1, '2019-01-17 02:50:22', NULL, 1),
	(25, 'Beer - Corona', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', 36.49, 1, '2019-01-17 02:50:22', NULL, 1),
	(26, 'Soup - Beef Conomme, Dry', 'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla', 50.50, 1, '2019-01-17 02:50:22', NULL, 1),
	(27, 'Huck Towels White', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 23.84, 1, '2019-01-17 02:50:22', NULL, 1),
	(28, 'Grapes - Red', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', 62.00, 1, '2019-01-17 02:50:22', NULL, 1),
	(29, 'Jolt Cola - Red Eye', 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero', 84.97, 1, '2019-01-17 02:50:22', NULL, 1),
	(30, 'Tomatoes - Roma', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien', 59.38, 1, '2019-01-17 02:50:22', NULL, 1),
	(31, 'Wine - Periguita Fonseca', 'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', 73.53, 1, '2019-01-17 02:50:22', NULL, 1),
	(32, 'Lobster - Live', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet', 27.35, 1, '2019-01-17 02:50:23', NULL, 1),
	(33, 'Soup - French Can Pea', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus', 74.78, 1, '2019-01-17 02:50:23', NULL, 1),
	(34, 'Smirnoff Green Apple Twist', 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', 69.02, 1, '2019-01-17 02:50:23', NULL, 1),
	(35, 'Burger Veggie', 'suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', 81.04, 1, '2019-01-17 02:50:23', NULL, 1),
	(36, 'Sausage - Chorizo', 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', 79.60, 1, '2019-01-17 02:50:23', NULL, 1),
	(37, 'Wine - Two Oceans Cabernet', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', 62.06, 1, '2019-01-17 02:50:23', NULL, 1),
	(38, 'Lychee - Canned', 'quis orci eget orci vehicula condimentum curabitur in libero ut', 26.55, 1, '2019-01-17 02:50:23', NULL, 1),
	(39, 'Raisin - Dark', 'dapibus duis at velit eu est congue elementum in hac habitasse', 52.42, 1, '2019-01-17 02:50:23', NULL, 1),
	(40, 'Bagel - Plain', 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', 55.19, 1, '2019-01-17 02:50:24', NULL, 1),
	(41, 'Lemonade - Kiwi, 591 Ml', 'luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', 35.29, 1, '2019-01-17 02:50:24', NULL, 1),
	(42, 'Chocolate Bar - Reese Pieces', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin', 73.15, 1, '2019-01-17 02:50:24', NULL, 1),
	(43, 'Calypso - Lemonade', 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', 66.20, 1, '2019-01-17 02:50:24', NULL, 1),
	(44, 'Sherry - Dry', 'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla', 84.21, 1, '2019-01-17 02:50:24', NULL, 1),
	(45, 'Grapes - Green', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', 14.13, 1, '2019-01-17 02:50:24', NULL, 1),
	(46, 'Vinegar - Cider', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', 91.97, 1, '2019-01-17 02:50:24', NULL, 1),
	(47, 'Icecream - Dstk Cml And Fdg', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 36.24, 1, '2019-01-17 02:50:25', NULL, 1),
	(48, 'Bread - White Epi Baguette', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', 58.51, 1, '2019-01-17 02:50:25', NULL, 1),
	(49, 'Compound - Pear', 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', 49.30, 1, '2019-01-17 02:50:25', NULL, 1),
	(50, 'Oil - Canola', 'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante', 75.77, 1, '2019-01-17 02:50:25', NULL, 1),
	(51, 'Soap - Pine Sol Floor Cleaner', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa', 93.09, 1, '2019-01-17 02:50:25', NULL, 1),
	(52, 'Pepper - Green Thai', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', 75.62, 1, '2019-01-17 02:50:25', NULL, 1),
	(53, 'Vermouth - Sweet, Cinzano', 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', 38.31, 1, '2019-01-17 02:50:25', NULL, 1),
	(54, 'Red Cod Fillets - 225g', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo', 39.49, 1, '2019-01-17 02:50:25', NULL, 1),
	(55, 'Sauce - Hp', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', 81.12, 1, '2019-01-17 02:50:26', NULL, 1),
	(56, 'Glaze - Apricot', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 41.33, 1, '2019-01-17 02:50:26', NULL, 1),
	(57, 'Table Cloth 62x120 White', 'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 14.95, 1, '2019-01-17 02:50:26', NULL, 1),
	(58, 'Cheese - Feta', 'potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla', 16.94, 1, '2019-01-17 02:50:26', NULL, 1),
	(59, 'Straws - Cocktale', 'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', 43.74, 1, '2019-01-17 02:50:26', NULL, 1),
	(60, 'Yoplait Drink', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', 46.72, 1, '2019-01-17 02:50:26', NULL, 1),
	(61, 'Myers Planters Punch', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', 15.01, 1, '2019-01-17 02:50:26', NULL, 1),
	(62, 'Ecolab - Hobart Washarm End Cap', 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', 57.25, 1, '2019-01-17 02:50:27', NULL, 1),
	(63, 'Cheese - Perron Cheddar', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia', 88.81, 1, '2019-01-17 02:50:27', NULL, 1),
	(64, 'Wine - Segura Viudas Aria Brut', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', 69.14, 1, '2019-01-17 02:50:27', NULL, 1),
	(65, 'Eggroll', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 55.92, 1, '2019-01-17 02:50:27', NULL, 1),
	(66, 'Croissant, Raw - Mini', 'quam sapien varius ut blandit non interdum in ante vestibulum ante', 13.57, 1, '2019-01-17 02:50:27', NULL, 1),
	(67, 'Buttons', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', 71.83, 1, '2019-01-17 02:50:27', NULL, 1),
	(68, 'Mikes Hard Lemonade', 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', 95.28, 1, '2019-01-17 02:50:27', NULL, 1),
	(69, 'Sour Cream', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 58.18, 1, '2019-01-17 02:50:27', NULL, 1),
	(70, 'Fond - Chocolate', 'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum', 24.06, 1, '2019-01-17 02:50:28', NULL, 1),
	(71, 'Pastry - Baked Scones - Mini', 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', 19.60, 1, '2019-01-17 02:50:28', NULL, 1),
	(72, 'Cookies - Amaretto', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', 88.38, 1, '2019-01-17 02:50:28', NULL, 1),
	(73, 'Potatoes - Instant, Mashed', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede', 11.08, 1, '2019-01-17 02:50:28', NULL, 1),
	(74, 'Irish Cream - Butterscotch', 'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla', 78.94, 1, '2019-01-17 02:50:28', NULL, 1),
	(75, 'Brandy - Orange, Mc Guiness', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', 40.54, 1, '2019-01-17 02:50:28', NULL, 1),
	(76, 'Flour - All Purpose', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', 42.53, 1, '2019-01-17 02:50:28', NULL, 1),
	(77, 'Wine - Chateau Aqueria Tavel', 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', 76.01, 1, '2019-01-17 02:50:28', NULL, 1),
	(78, 'Goldschalger', 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam', 23.16, 1, '2019-01-17 02:50:29', NULL, 1),
	(79, 'Savory', 'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum', 48.01, 1, '2019-01-17 02:50:29', NULL, 1),
	(80, 'Thyme - Lemon, Fresh', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', 25.47, 1, '2019-01-17 02:50:29', NULL, 1),
	(81, 'Pail - 15l White, With Handle', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', 91.62, 1, '2019-01-17 02:50:29', NULL, 1),
	(82, 'Yogurt - Strawberry, 175 Gr', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 87.22, 1, '2019-01-17 02:50:29', NULL, 1),
	(83, 'Truffle Shells - White Chocolate', 'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla', 10.17, 1, '2019-01-17 02:50:29', NULL, 1),
	(84, 'Lemon Balm - Fresh', 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 51.31, 1, '2019-01-17 02:50:29', NULL, 1),
	(85, 'Veal - Loin', 'ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', 50.14, 1, '2019-01-17 02:50:30', NULL, 1),
	(86, 'Island Oasis - Mango Daiquiri', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', 85.41, 1, '2019-01-17 02:50:30', NULL, 1),
	(87, 'Cheese - Brie, Triple Creme', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 81.98, 1, '2019-01-17 02:50:30', NULL, 1),
	(88, 'Cumin - Ground', 'eu sapien cursus vestibulum proin eu mi nulla ac enim in', 46.45, 1, '2019-01-17 02:50:30', NULL, 1),
	(89, 'Chocolate - Mi - Amere Semi', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo', 72.83, 1, '2019-01-17 02:50:30', NULL, 1),
	(90, 'Limes', 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque', 91.88, 1, '2019-01-17 02:50:30', NULL, 1),
	(91, 'Squid Ink', 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna', 41.50, 1, '2019-01-17 02:50:30', NULL, 1),
	(92, 'Greens Mustard', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', 55.74, 1, '2019-01-17 02:50:30', NULL, 1),
	(93, 'Pear - Asian', 'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 73.58, 1, '2019-01-17 02:50:31', NULL, 1),
	(94, 'Pork - Hock And Feet Attached', 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', 97.90, 1, '2019-01-17 02:50:31', NULL, 1),
	(95, 'Chicken Breast Halal', 'maecenas leo odio condimentum id luctus nec molestie sed justo', 74.27, 1, '2019-01-17 02:50:31', NULL, 1),
	(96, 'Soup - Campbells Chili', 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', 16.75, 1, '2019-01-17 02:50:31', NULL, 1),
	(97, 'Wine - Port Late Bottled Vintage', 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', 84.71, 1, '2019-01-17 02:50:31', NULL, 1),
	(98, 'Beef - Kobe Striploin', 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 49.73, 1, '2019-01-17 02:50:31', NULL, 1),
	(99, 'Tart - Butter Plain Squares', 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', 10.16, 1, '2019-01-17 02:50:31', NULL, 1),
	(100, 'Marzipan 50/50', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna', 87.08, 1, '2019-01-17 02:50:32', NULL, 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table ecom.sales_orders
DROP TABLE IF EXISTS `sales_orders`;
CREATE TABLE IF NOT EXISTS `sales_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `total` float NOT NULL,
  `is_approved` int(1) NOT NULL DEFAULT '0' COMMENT '1 - approved , 0 - not approved, 2 - rejected',
  `user_id` int(11) NOT NULL,
  `inserted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 - order place, 2 - order cancel',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table ecom.sales_orders: ~7 rows (approximately)
DELETE FROM `sales_orders`;
/*!40000 ALTER TABLE `sales_orders` DISABLE KEYS */;
INSERT INTO `sales_orders` (`id`, `order_date`, `total`, `is_approved`, `user_id`, `inserted_at`, `updated_at`, `status`) VALUES
	(15, '2019-01-17', 221.22, 0, 11, '2019-01-17 17:26:48', NULL, 0),
	(16, '2019-01-17', 382.78, 1, 11, '2019-01-17 17:44:29', '2019-01-18 01:33:47', 1),
	(17, '2019-01-18', 310.74, 0, 11, '2019-01-18 01:49:22', NULL, 0),
	(18, '2019-01-18', 197.26, 0, 11, '2019-01-18 03:08:36', NULL, 1),
	(19, '2019-01-18', 206, 2, 11, '2019-01-18 03:09:14', '2019-01-18 03:26:34', 1),
	(20, '2019-01-18', 169.44, 2, 11, '2019-01-18 03:09:44', '2019-01-18 03:25:15', 1),
	(21, '2019-01-18', 615.58, 0, 11, '2019-01-18 03:10:58', '2019-01-18 03:20:36', 1);
/*!40000 ALTER TABLE `sales_orders` ENABLE KEYS */;

-- Dumping structure for table ecom.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `inserted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table ecom.users: ~12 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `username`, `password`, `first_name`, `last_name`, `inserted_at`, `updated_at`, `status`) VALUES
	(1, 'rhaywood0@amazonaws.com', 'rhaywood0', 'PsGlu985fax', 'Renee', 'Haywood', '2019-01-17 02:55:28', NULL, 1),
	(2, 'icuss1@pbs.org', 'icuss1', 'zwID9gT', 'Ines', 'Cuss', '2019-01-17 02:55:28', NULL, 1),
	(3, 'preckus2@delicious.com', 'preckus2', 'j3kaXr', 'Porty', 'Reckus', '2019-01-17 02:55:28', NULL, 1),
	(4, 'poliddy3@sciencedaily.com', 'poliddy3', 'dKsDZ1M', 'Pyotr', 'O\' Liddy', '2019-01-17 02:55:29', NULL, 1),
	(5, 'aivanilov4@redcross.org', 'aivanilov4', 'zMLCZHhCgr8', 'Avis', 'Ivanilov', '2019-01-17 02:55:29', NULL, 1),
	(6, 'gdenisard5@dion.ne.jp', 'gdenisard5', 'xztcqgr', 'Garrot', 'Denisard', '2019-01-17 02:55:29', NULL, 1),
	(7, 'jdemcak6@devhub.com', 'jdemcak6', 'leOIkHAlLeb', 'Justen', 'Demcak', '2019-01-17 02:55:29', NULL, 1),
	(8, 'djeffryes7@buzzfeed.com', 'djeffryes7', 'Rgyifdlc0PrO', 'Donnie', 'Jeffryes', '2019-01-17 02:55:29', NULL, 1),
	(9, 'bsaward8@ox.ac.uk', 'bsaward8', 'EMpW7P', 'Brigida', 'Saward', '2019-01-17 02:55:29', NULL, 1),
	(10, 'anizet9@amazon.de', 'anizet9', 'f0Fs7e4odZ', 'Adriena', 'Nizet', '2019-01-17 02:55:29', NULL, 1),
	(11, 'test@gmail.com', 'test', 'test', 'Tim', 'Cock', '2019-01-17 14:25:12', NULL, 1),
	(12, 'admin@gmail.com', 'admin', 'admin', 'admin', 'admin', '2019-01-18 01:00:32', NULL, 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
