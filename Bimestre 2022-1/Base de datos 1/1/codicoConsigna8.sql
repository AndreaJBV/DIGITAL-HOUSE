-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema playground
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema playground
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `playground` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `playground` ;

-- -----------------------------------------------------
-- Table `playground`.`carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playground`.`carrera` (
  `idcarrera` INT NOT NULL,
  `titulo` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`idcarrera`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `playground`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playground`.`categorias` (
  `idcategoria` INT NOT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`idcategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `playground`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playground`.`usuarios` (
  `idusuario` INT NOT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `apellido` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `categoria` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  INDEX `categoria` (`categoria` ASC) VISIBLE,
  CONSTRAINT `usuarios_ibfk_1`
    FOREIGN KEY (`categoria`)
    REFERENCES `playground`.`categorias` (`idcategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `playground`.`usuarios_carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `playground`.`usuarios_carrera` (
  `id` INT NOT NULL,
  `usuario` INT NULL DEFAULT NULL,
  `carrera` INT NULL DEFAULT NULL,
  `fechainscripcion` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `usuario` (`usuario` ASC) VISIBLE,
  INDEX `carrera` (`carrera` ASC) VISIBLE,
  CONSTRAINT `usuarios_carrera_ibfk_1`
    FOREIGN KEY (`usuario`)
    REFERENCES `playground`.`usuarios` (`idusuario`),
  CONSTRAINT `usuarios_carrera_ibfk_2`
    FOREIGN KEY (`carrera`)
    REFERENCES `playground`.`carrera` (`idcarrera`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
