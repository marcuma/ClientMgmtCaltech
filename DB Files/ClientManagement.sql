SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema client_management
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `client_management` DEFAULT CHARACTER SET utf8 ;
USE `client_management` ;

-- -----------------------------------------------------
-- Table `client_management`.`client`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `client_management`.`client` ;

CREATE TABLE IF NOT EXISTS `client_management`.`client` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `client_management`.`client_meeting`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `client_management`.`client_meeting` ;

CREATE TABLE IF NOT EXISTS `client_management`.`client_meeting` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `topic` VARCHAR(255) NULL,
  `num_people` INT NULL,
  `start_datetime` DATETIME NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `client_id`
    FOREIGN KEY (`id`)
    REFERENCES `client_management`.`client` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
