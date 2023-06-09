SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Fusion_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Fusion_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Fusion_db`;
-- CREATE SCHEMA IF NOT EXISTS `Fusion_db`;
USE `Fusion_db` ;


-- -----------------------------------------------------
-- Table `Fusion_db`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fusion_db`.`posts` (
`id` INT NOT NULL AUTO_INCREMENT,
`source` VARCHAR(45) NULL,
`title` LONGTEXT NULL,
`description` LONGTEXT NULL,
`link` VARCHAR(256) NULL,
`image_url` LONGTEXT NULL,
`publishing_time` INT NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `link_UNIQUE` (`link` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Fusion_db`.`tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fusion_db`.`tags` (
`id` INT NOT NULL AUTO_INCREMENT,
`text` VARCHAR(45) NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `text_UNIQUE` (`text` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Fusion_db`.`posts_tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fusion_db`.`posts_tags` (
`id` INT NOT NULL AUTO_INCREMENT,
`post_id` INT NOT NULL,
`tag_id` INT NOT NULL,
PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Fusion_db`.`scrapers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fusion_db`.`scrapers` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(45) NULL,
`link` LONGTEXT NULL,
`timeout` INT NULL,
`last_request` BIGINT NULL,
PRIMARY KEY (`id`))
ENGINE = InnoDB;


INSERT INTO scrapers(name,link,timeout,last_request) VALUES ('HabrRu','http://habrru:8010/get/news','10','0');
INSERT INTO scrapers(name,link,timeout,last_request) VALUES ('HabrEng','http://habreng:8020/get/news','60','0');
INSERT INTO scrapers(name,link,timeout,last_request) VALUES ('NewsUa','http://uanews:8030/get/news','10','0');

INSERT INTO scrapers(name,link,timeout,last_request) VALUES ('Midjourney','http://midjourney:9020/get/news','60','0');



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
