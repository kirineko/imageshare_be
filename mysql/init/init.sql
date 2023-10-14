CREATE DATABASE IF NOT EXISTS imageshare default character set utf8mb4 collate utf8mb4_general_ci;
use imageshare;

CREATE TABLE IF NOT EXISTS `image` (
    `id` int NOT NULL AUTO_INCREMENT,
    `image_url` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
    `image_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
    `upload_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;