-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema kanban
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema kanban
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kanban` DEFAULT CHARACTER SET utf8 ;
USE `kanban` ;

-- -----------------------------------------------------
-- Table `kanban`.`Conta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kanban`.`Conta` (
  `email` VARCHAR(255) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE INDEX `senha_UNIQUE` (`senha` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kanban`.`Quadro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kanban`.`Quadro` (
  `codigo` VARCHAR(4) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `limite_cartoes` INT NOT NULL,
  `Conta_email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`codigo`, `Conta_email`),
  UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC) VISIBLE,
  INDEX `fk_Quadro_Conta_idx` (`Conta_email` ASC) VISIBLE,
  CONSTRAINT `fk_Quadro_Conta`
    FOREIGN KEY (`Conta_email`)
    REFERENCES `kanban`.`Conta` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kanban`.`Cartao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kanban`.`Cartao` (
  `codigo` VARCHAR(4) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `coluna` VARCHAR(255) NOT NULL,
  `Quadro_codigo` VARCHAR(4) NOT NULL,
  `Quadro_Conta_email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`codigo`, `Quadro_codigo`, `Quadro_Conta_email`),
  UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC) VISIBLE,
  INDEX `fk_Cartao_Quadro1_idx` (`Quadro_codigo` ASC, `Quadro_Conta_email` ASC) VISIBLE,
  CONSTRAINT `fk_Cartao_Quadro1`
    FOREIGN KEY (`Quadro_codigo` , `Quadro_Conta_email`)
    REFERENCES `kanban`.`Quadro` (`codigo` , `Conta_email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
