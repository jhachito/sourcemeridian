CREATE DATABASE `source`;

USE `source`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `u` int NOT NULL,
  `techniques` mediumtext,
  `items` mediumtext,
  `n_items` int DEFAULT NULL,
  `ratings` mediumtext,
  `n_ratings` int DEFAULT NULL,
  PRIMARY KEY (`u`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `recipe`;

CREATE TABLE `recipe` (
  `id` int NOT NULL,
  `i` int NOT NULL,
  `name_tokens` mediumtext,
  `ingredient_tokens` mediumtext,
  `steps_tokens` mediumtext,
  `techniques` mediumtext,
  `calorie_level` int DEFAULT NULL,
  `ingredient_ids` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_un` (`i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `recipe` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `interaction`;

CREATE TABLE `interaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `u` int DEFAULT NULL,
  `i` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interaction_FK_1` (`u`),
  KEY `recipe_id_FK` (`recipe_id`),
  KEY `u_FK` (`i`),
  CONSTRAINT `interaction_FK_1` FOREIGN KEY (`u`) REFERENCES `users` (`u`),
  CONSTRAINT `u_FK` FOREIGN KEY (`i`) REFERENCES `recipe` (`i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `interaction` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `raw_interaction`;

CREATE TABLE `raw_interaction` (
  `user_id` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `review` mediumtext,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `raw_interaction` WRITE;
UNLOCK TABLES;




DROP TABLE IF EXISTS `raw_recipes`;

CREATE TABLE `raw_recipes` (
  `id` int NOT NULL,
  `name` mediumtext,
  `minutes` int DEFAULT NULL,
  `contributor_id` int DEFAULT NULL,
  `submitted` varchar(100) DEFAULT NULL,
  `tags` mediumtext,
  `nutrition` mediumtext,
  `n_steps` int DEFAULT NULL,
  `steps` mediumtext,
  `description` mediumtext,
  `ingredients` mediumtext,
  `n_ingredients` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `raw_recipes` WRITE;
UNLOCK TABLES;