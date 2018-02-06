-- MySQL Script generated by MySQL Workbench
-- Tue Feb  6 10:09:25 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema reservation
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema reservation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `reservation` DEFAULT CHARACTER SET utf8 ;
USE `reservation` ;

-- -----------------------------------------------------
-- Table `reservation`.`T_ROOMS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reservation`.`T_ROOMS` (
  `ID_ROOM` INT NOT NULL AUTO_INCREMENT,
  `ROOMNAME` VARCHAR(45) NULL,
  `ROOMNUMBER` INT NULL,
  `ROOMPLACE` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_ROOM`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reservation`.`T_RESERVATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reservation`.`T_RESERVATION` (
  `ID_RESERVATION` INT NOT NULL AUTO_INCREMENT,
  `RESERVATIONDATE` DATETIME NULL,
  `T_ROOMS_ID_ROOM` INT NOT NULL,
  PRIMARY KEY (`ID_RESERVATION`, `T_ROOMS_ID_ROOM`),
  INDEX `fk_T_RESERVATION_T_ROOMS_idx` (`T_ROOMS_ID_ROOM` ASC),
  CONSTRAINT `fk_T_RESERVATION_T_ROOMS`
    FOREIGN KEY (`T_ROOMS_ID_ROOM`)
    REFERENCES `reservation`.`T_ROOMS` (`ID_ROOM`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
