-- MySQL Script generated by MySQL Workbench
-- Seg 22 Mai 2017 12:58:18 BRT
-- Model: instalacoes Full    Version: 2.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema instalacoes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema instalacoes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `instalacoes` ;
USE `instalacoes` ;

-- -----------------------------------------------------
-- Table `instalacoes`.`Metodo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`Metodo` (
  `idMetodo` INT NOT NULL,
  `tipo` VARCHAR(4) NULL,
  `descricao` VARCHAR(120) NULL,
  PRIMARY KEY (`idMetodo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instalacoes`.`Materiais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`Materiais` (
  `idMaterial` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idMaterial`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instalacoes`.`Isolante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`Isolante` (
  `idIsolante` INT NOT NULL,
  `idMaterialIsolante` INT NOT NULL,
  PRIMARY KEY (`idIsolante`),
  INDEX `fk_Isolante_Materiais1_idx` (`idMaterialIsolante` ASC),
  CONSTRAINT `fk_Isolante_Materiais1`
    FOREIGN KEY (`idMaterialIsolante`)
    REFERENCES `instalacoes`.`Materiais` (`idMaterial`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instalacoes`.`Cabos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`Cabos` (
  `idCabo` INT NOT NULL,
  `idMaterialCabo` INT NOT NULL,
  `diametro` FLOAT NULL,
  INDEX `fk_Cabos_Materiais1_idx` (`idMaterialCabo` ASC),
  PRIMARY KEY (`idCabo`),
  CONSTRAINT `fk_Cabos_Materiais1`
    FOREIGN KEY (`idMaterialCabo`)
    REFERENCES `instalacoes`.`Materiais` (`idMaterial`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instalacoes`.`CapacidadeConducao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`CapacidadeConducao` (
  `idCapacidade` INT NOT NULL AUTO_INCREMENT,
  `idMetodo` INT NOT NULL,
  `idCabo` INT NOT NULL,
  `idIsolante` INT NOT NULL,
  `n2Conector` INT NULL,
  `n3Conector` INT NULL,
  INDEX `fk_CapacidadeConducao_Metodo1_idx` (`idMetodo` ASC),
  INDEX `fk_CapacidadeConducao_Cabos1_idx` (`idCabo` ASC),
  INDEX `fk_CapacidadeConducao_Isolante1_idx` (`idIsolante` ASC),
  PRIMARY KEY (`idCapacidade`),
  CONSTRAINT `fk_CapacidadeConducao_Metodo1`
    FOREIGN KEY (`idMetodo`)
    REFERENCES `instalacoes`.`Metodo` (`idMetodo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CapacidadeConducao_Cabos1`
    FOREIGN KEY (`idCabo`)
    REFERENCES `instalacoes`.`Cabos` (`idCabo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CapacidadeConducao_Isolante1`
    FOREIGN KEY (`idIsolante`)
    REFERENCES `instalacoes`.`Isolante` (`idIsolante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instalacoes`.`Correcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`Correcao` (
  `idCorrecao` INT NOT NULL,
  `tipo` VARCHAR(10) NULL,
  PRIMARY KEY (`idCorrecao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instalacoes`.`K1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`K1` (
  `idTipo` INT NOT NULL,
  `temperatura` INT NULL,
  `pvc` FLOAT NULL,
  `epr_xlpe` FLOAT NULL,
  INDEX `fk_K1_Correcao1_idx` (`idTipo` ASC),
  CONSTRAINT `fk_K1_Correcao1`
    FOREIGN KEY (`idTipo`)
    REFERENCES `instalacoes`.`Correcao` (`idCorrecao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instalacoes`.`K2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`K2` (
  `idResTermica` INT NOT NULL,
  `fatorCorrecao` FLOAT NULL,
  PRIMARY KEY (`idResTermica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instalacoes`.`K3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `instalacoes`.`K3` (
  `idK3` INT NOT NULL,
  `descricao` VARCHAR(60) NULL,
  `n1` FLOAT NULL,
  `n2` FLOAT NULL,
  `n3` FLOAT NULL,
  `n4` FLOAT NULL,
  `n5` FLOAT NULL,
  `n6` FLOAT NULL,
  `n7` FLOAT NULL,
  `n8` FLOAT NULL,
  `n9` FLOAT NULL,
  `n12` FLOAT NULL,
  `n16` FLOAT NULL,
  `n20` FLOAT NULL,
  PRIMARY KEY (`idK3`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
