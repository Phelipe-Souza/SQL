-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_RH2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_RH2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_RH2` DEFAULT CHARACTER SET utf8 ;
USE `db_RH2` ;

-- -----------------------------------------------------
-- Table `db_RH2`.`tb_funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_RH2`.`tb_funcionario` (
  `id_funcionario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `sexo` ENUM('F', 'M') NULL,
  `idade` INT NULL,
  `salario` DECIMAL(10) NULL,
  PRIMARY KEY (`id_funcionario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_RH2`.`tb_cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_RH2`.`tb_cargo` (
  `id_cargo` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `setor` VARCHAR(45) NULL,
  `tb_funcionario_id_funcionario` INT NOT NULL,
  PRIMARY KEY (`id_cargo`, `tb_funcionario_id_funcionario`),
  CONSTRAINT `fk_tb_cargo_tb_funcionario`
    FOREIGN KEY (`tb_funcionario_id_funcionario`)
    REFERENCES `db_RH2`.`tb_funcionario` (`id_funcionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
