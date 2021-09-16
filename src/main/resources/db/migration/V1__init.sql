CREATE DATABASE IF NOT EXISTS `study`
USE `study`;

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
        `id` bigint NOT NULL AUTO_INCREMENT,
        `created` datetime NOT NULL,
        `updated` datetime NOT NULL,
        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
        `order_id` bigint NOT NULL,
        `count` int NOT NULL DEFAULT '1',
        `product_id` bigint DEFAULT NULL,
        KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
    KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
    CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
    CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `created` datetime NOT NULL,
    `name` varchar(100) NOT NULL,
    `price` int NOT NULL,
    `updated` datetime DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
    `id` bigint NOT NULL AUTO_INCREMENT,
    `email` varchar(200) NOT NULL,
    `loginid` varchar(100) NOT NULL,
    `name` varchar(50) NOT NULL,
    `password` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;