-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `cedula` INT NOT NULL,
  `nombreCliente` VARCHAR(20) NOT NULL,
  `apellidoCliente` VARCHAR(20) NOT NULL,
  `celular` VARCHAR(15) NOT NULL,
  `email` VARCHAR(20) NULL,
  `direccionResidencia` VARCHAR(30) NOT NULL,
  `ciudad` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`cedula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `cedula` INT NOT NULL,
  `nombreEmpleado` VARCHAR(20) NOT NULL,
  `apellidoEmpleado` VARCHAR(20) NOT NULL,
  `celular` VARCHAR(15) NOT NULL,
  `email` VARCHAR(20) NULL,
  `direciconResidencia` VARCHAR(30) NOT NULL,
  `ciudad` VARCHAR(20) NOT NULL,
  `antiguedad` VARCHAR(20) NOT NULL,
  `tipoDeSangre` VARCHAR(10) NOT NULL,
  `tipoEmpleado` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`cedula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Paquete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Paquete` (
  `idPaquete` INT NOT NULL,
  `tipoPaquete` VARCHAR(25) NOT NULL,
  `peso` FLOAT NOT NULL,
  `valorDeclarado` INT NOT NULL,
  PRIMARY KEY (`idPaquete`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Envio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Envio` (
  `numeroGuia` INT NOT NULL,
  `ciudadOrigen` VARCHAR(20) NOT NULL,
  `ciudadDestino` VARCHAR(20) NOT NULL,
  `direccionDestino` VARCHAR(25) NOT NULL,
  `nombrePersonaRecibe` VARCHAR(15) NOT NULL,
  `celularPersonaRecibe` VARCHAR(15) NOT NULL,
  `horaEntrega` DATE NOT NULL,
  `estadoEnvio` VARCHAR(20) NOT NULL,
  `valorEnvio` INT NOT NULL,
  `Paquete_idPaquete` INT NOT NULL,
  `Cliente_cedula` INT NOT NULL,
  PRIMARY KEY (`numeroGuia`),
  INDEX `fk_Envio_Paquete1_idx` (`Paquete_idPaquete` ASC),
  INDEX `fk_Envio_Cliente1_idx` (`Cliente_cedula` ASC),
  CONSTRAINT `fk_Envio_Paquete1`
    FOREIGN KEY (`Paquete_idPaquete`)
    REFERENCES `mydb`.`Paquete` (`idPaquete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Envio_Cliente1`
    FOREIGN KEY (`Cliente_cedula`)
    REFERENCES `mydb`.`Cliente` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
