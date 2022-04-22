-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LaAprobacion
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LaAprobacion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LaAprobacion` DEFAULT CHARACTER SET utf8 ;
USE `LaAprobacion` ;

-- -----------------------------------------------------
-- Table `LaAprobacion`.`clasesHabitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`clasesHabitacion` (
  `idClasesHabitacion` INT NOT NULL,
  `descripcion` VARCHAR(100) NOT NULL,
  `costoDiarioPersona` DECIMAL(12,4) NOT NULL,
  PRIMARY KEY (`idClasesHabitacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`decoracionHabitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`decoracionHabitacion` (
  `idDecoracionHabitacion` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idDecoracionHabitacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`habitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`habitacion` (
  `idhabitacion` INT NOT NULL,
  `numeroHabitacion` INT NOT NULL,
  `clasesHabitacion_idClasesHabitacion` INT NOT NULL,
  `decoracionHabitacion_idDecoracionHabitacion` INT NOT NULL,
  `capacidadMaxima` TINYINT NULL,
  PRIMARY KEY (`idhabitacion`),
  INDEX `fk_habitacion_clasesHabitacion_idx` (`clasesHabitacion_idClasesHabitacion` ASC) VISIBLE,
  INDEX `fk_habitacion_decoracionHabitacion1_idx` (`decoracionHabitacion_idDecoracionHabitacion` ASC) VISIBLE,
  CONSTRAINT `fk_habitacion_clasesHabitacion`
    FOREIGN KEY (`clasesHabitacion_idClasesHabitacion`)
    REFERENCES `LaAprobacion`.`clasesHabitacion` (`idClasesHabitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_habitacion_decoracionHabitacion1`
    FOREIGN KEY (`decoracionHabitacion_idDecoracionHabitacion`)
    REFERENCES `LaAprobacion`.`decoracionHabitacion` (`idDecoracionHabitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`pais` (
  `idPais` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idPais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`sectorTrabajo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`sectorTrabajo` (
  `idSectorTrabajo` INT NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`idSectorTrabajo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`empleados` (
  `idEmpleados` INT NOT NULL,
  `numeroLegajo` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `fechaNacimiento` DATE NOT NULL,
  `numeroDocumento` INT NOT NULL,
  `domicilio` VARCHAR(200) NOT NULL,
  `telefonoMovil` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `pais_idPais` INT NOT NULL,
  `sectorTrabajo_idSectorTrabajo` INT NOT NULL,
  `estado` TINYINT NOT NULL,
  PRIMARY KEY (`idEmpleados`),
  INDEX `fk_empleados_pais1_idx` (`pais_idPais` ASC) VISIBLE,
  INDEX `fk_empleados_sectorTrabajo1_idx` (`sectorTrabajo_idSectorTrabajo` ASC) VISIBLE,
  CONSTRAINT `fk_empleados_pais1`
    FOREIGN KEY (`pais_idPais`)
    REFERENCES `LaAprobacion`.`pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleados_sectorTrabajo1`
    FOREIGN KEY (`sectorTrabajo_idSectorTrabajo`)
    REFERENCES `LaAprobacion`.`sectorTrabajo` (`idSectorTrabajo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`huesped`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`huesped` (
  `idHuesped` INT NOT NULL,
  `apellido` VARCHAR(45) NULL,
  `nombre` VARCHAR(45) NULL,
  `pasaporte` VARCHAR(45) NULL,
  `fechaNacimiento` DATE NULL,
  `domicilio` VARCHAR(200) NULL,
  `telefonoMovil` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `pais_idPais` INT NOT NULL,
  PRIMARY KEY (`idHuesped`),
  INDEX `fk_huesped_pais1_idx` (`pais_idPais` ASC) VISIBLE,
  CONSTRAINT `fk_huesped_pais1`
    FOREIGN KEY (`pais_idPais`)
    REFERENCES `LaAprobacion`.`pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`formaDePago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`formaDePago` (
  `idFormaDePago` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idFormaDePago`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`check_in`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`check_in` (
  `id_check_in` INT NOT NULL,
  `fechaEntrada` DATE NULL,
  `fechaSalida` DATE NULL,
  `importe` DECIMAL(12,4) NULL,
  `habitacion_idhabitacion` INT NOT NULL,
  `formaDePago_idFormaDePago` INT NOT NULL,
  PRIMARY KEY (`id_check_in`),
  INDEX `fk_check_in_habitacion1_idx` (`habitacion_idhabitacion` ASC) VISIBLE,
  INDEX `fk_check_in_formaDePago1_idx` (`formaDePago_idFormaDePago` ASC) VISIBLE,
  CONSTRAINT `fk_check_in_habitacion1`
    FOREIGN KEY (`habitacion_idhabitacion`)
    REFERENCES `LaAprobacion`.`habitacion` (`idhabitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_check_in_formaDePago1`
    FOREIGN KEY (`formaDePago_idFormaDePago`)
    REFERENCES `LaAprobacion`.`formaDePago` (`idFormaDePago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`serviciosBasicosHabitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`serviciosBasicosHabitacion` (
  `idserviciosHabitacion` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idserviciosHabitacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`serviciosBasicosHabitacion_por_habitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`serviciosBasicosHabitacion_por_habitacion` (
  `serviciosHabitacion_idserviciosHabitacion` INT NOT NULL,
  `habitacion_idhabitacion` INT NOT NULL,
  `idServiciosBasicosHabitacion_por_habitacioncol` VARCHAR(45) NOT NULL,
  INDEX `fk_serviciosHabitacion_has_habitacion_habitacion1_idx` (`habitacion_idhabitacion` ASC) VISIBLE,
  INDEX `fk_serviciosHabitacion_has_habitacion_serviciosHabitacion1_idx` (`serviciosHabitacion_idserviciosHabitacion` ASC) VISIBLE,
  PRIMARY KEY (`idServiciosBasicosHabitacion_por_habitacioncol`),
  CONSTRAINT `fk_serviciosHabitacion_has_habitacion_serviciosHabitacion1`
    FOREIGN KEY (`serviciosHabitacion_idserviciosHabitacion`)
    REFERENCES `LaAprobacion`.`serviciosBasicosHabitacion` (`idserviciosHabitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_serviciosHabitacion_has_habitacion_habitacion1`
    FOREIGN KEY (`habitacion_idhabitacion`)
    REFERENCES `LaAprobacion`.`habitacion` (`idhabitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`serviciosExtras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`serviciosExtras` (
  `idServiciosExtras` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `costoPorHora` DECIMAL(12,4) NULL,
  PRIMARY KEY (`idServiciosExtras`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`reservas` (
  `idReservas` INT NOT NULL,
  `fechaYHora` DATETIME NULL,
  `horasReservadas` VARCHAR(45) NULL,
  `importe` DECIMAL(12,4) NULL,
  `huesped_idHuesped` INT NOT NULL,
  `formaDePago_idFormaDePago` INT NOT NULL,
  PRIMARY KEY (`idReservas`),
  INDEX `fk_reservas_huesped1_idx` (`huesped_idHuesped` ASC) VISIBLE,
  INDEX `fk_reservas_formaDePago1_idx` (`formaDePago_idFormaDePago` ASC) VISIBLE,
  CONSTRAINT `fk_reservas_huesped1`
    FOREIGN KEY (`huesped_idHuesped`)
    REFERENCES `LaAprobacion`.`huesped` (`idHuesped`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reservas_formaDePago1`
    FOREIGN KEY (`formaDePago_idFormaDePago`)
    REFERENCES `LaAprobacion`.`formaDePago` (`idFormaDePago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`serviciosExtras_has_reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`serviciosExtras_has_reservas` (
  `serviciosExtras_idServiciosExtras` INT NOT NULL,
  `reservas_idReservas` INT NOT NULL,
  `idServiciosExtras_has_reservascol` VARCHAR(45) NOT NULL,
  INDEX `fk_serviciosExtras_has_reservas_reservas1_idx` (`reservas_idReservas` ASC) VISIBLE,
  INDEX `fk_serviciosExtras_has_reservas_serviciosExtras1_idx` (`serviciosExtras_idServiciosExtras` ASC) VISIBLE,
  PRIMARY KEY (`idServiciosExtras_has_reservascol`),
  CONSTRAINT `fk_serviciosExtras_has_reservas_serviciosExtras1`
    FOREIGN KEY (`serviciosExtras_idServiciosExtras`)
    REFERENCES `LaAprobacion`.`serviciosExtras` (`idServiciosExtras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_serviciosExtras_has_reservas_reservas1`
    FOREIGN KEY (`reservas_idReservas`)
    REFERENCES `LaAprobacion`.`reservas` (`idReservas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LaAprobacion`.`check_in_por_huesped`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LaAprobacion`.`check_in_por_huesped` (
  `check_in_id_check_in` INT NOT NULL,
  `huesped_idHuesped` INT NOT NULL,
  `idCheck_in_has_huespedcol` VARCHAR(45) NOT NULL,
  INDEX `fk_check_in_has_huesped_huesped1_idx` (`huesped_idHuesped` ASC) VISIBLE,
  INDEX `fk_check_in_has_huesped_check_in1_idx` (`check_in_id_check_in` ASC) VISIBLE,
  PRIMARY KEY (`idCheck_in_has_huespedcol`),
  CONSTRAINT `fk_check_in_has_huesped_check_in1`
    FOREIGN KEY (`check_in_id_check_in`)
    REFERENCES `LaAprobacion`.`check_in` (`id_check_in`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_check_in_has_huesped_huesped1`
    FOREIGN KEY (`huesped_idHuesped`)
    REFERENCES `LaAprobacion`.`huesped` (`idHuesped`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
