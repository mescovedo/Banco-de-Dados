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
-- Table `mydb`.`departamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`departamento` ;

CREATE TABLE IF NOT EXISTS `mydb`.`departamento` (
  `Numeração` INT NOT NULL,
  PRIMARY KEY (`Numeração`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`enfermeiros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`enfermeiros` ;

CREATE TABLE IF NOT EXISTS `mydb`.`enfermeiros` (
  `Registro` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Registro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`pacientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`pacientes` ;

CREATE TABLE IF NOT EXISTS `mydb`.`pacientes` (
  `idPacientes` INT NOT NULL,
  `CPF` VARCHAR(45) NULL DEFAULT NULL,
  `Nome` VARCHAR(45) NULL DEFAULT NULL,
  `Data_Nascimento` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idPacientes`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`gravidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`gravidade` ;

CREATE TABLE IF NOT EXISTS `mydb`.`gravidade` (
  `Estágio` INT NOT NULL,
  `Pacientes_idPacientes` INT NOT NULL,
  PRIMARY KEY (`Pacientes_idPacientes`),
  INDEX `fk_Gravidade_Pacientes1_idx` (`Pacientes_idPacientes` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`medicação`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`medicação` ;

CREATE TABLE IF NOT EXISTS `mydb`.`medicação` (
  `Nome` VARCHAR(45) NOT NULL,
  `Gravidade_Estágio` INT NOT NULL,
  PRIMARY KEY (`Nome`),
  INDEX `fk_Medicação_Gravidade1_idx` (`Gravidade_Estágio` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`médicos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`médicos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`médicos` (
  `Registro` INT NOT NULL,
  `Nome` VARCHAR(45) NULL DEFAULT NULL,
  `Especialidade` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Registro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`plantão`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`plantão` ;

CREATE TABLE IF NOT EXISTS `mydb`.`plantão` (
  `Dia_da_Semana` INT NOT NULL,
  `Departamento_Numeração` INT NOT NULL,
  `Turno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Dia_da_Semana`, `Turno`,`Departamento_Numeração`),
  INDEX `fk_Plantão_Departamento1_idx` (`Departamento_Numeração` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`plantão_enfermeiro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`plantão_enfermeiro` ;

CREATE TABLE IF NOT EXISTS `mydb`.`plantão_enfermeiro` (
  `Dia_da_Semana` INT NOT NULL,
  `Departamento_Numeração` INT NOT NULL,
  `Turno` VARCHAR(45) NOT NULL,
  `Enfermeiros_Registro` INT NOT NULL,
  PRIMARY KEY (`Dia_da_Semana`, `Departamento_Numeração`,`Enfermeiros_Registro`),
  INDEX `fk_table2_Enfermeiros1_idx` (`Enfermeiros_Registro` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`plantão_médico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`plantão_médico` ;

CREATE TABLE IF NOT EXISTS `mydb`.`plantão_médico` (
   `Dia_da_Semana` INT NOT NULL,
  `Departamento_Numeração` INT NOT NULL,
  `Turno` VARCHAR(45) NOT NULL,
  `Médicos_Registro` INT NOT NULL,
  PRIMARY KEY (`Dia_da_Semana`, `Departamento_Numeração`,`Médicos_Registro`),
  INDEX `fk_table1_Médicos1_idx` (`Médicos_Registro` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`quarto social`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`quarto_social` ;

CREATE TABLE IF NOT EXISTS `mydb`.`quarto_social` (
  `Nª_da_Sala` INT NOT NULL,
  `Departamento_Numeração` INT NOT NULL,
  `Pacientes_idPacientes` INT NOT NULL,
  PRIMARY KEY (`Departamento_Numeração`,`Pacientes_idPacientes`),
  INDEX `fk_Quarto Social_Departamento1_idx` (`Departamento_Numeração` ASC) VISIBLE,
  INDEX `fk_Quarto Social_Pacientes1_idx` (`Pacientes_idPacientes` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`responsável`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`responsável` ;

CREATE TABLE IF NOT EXISTS `mydb`.`responsável` (
  `Nome` VARCHAR(45) NOT NULL,
  `Pacientes_idPacientes` INT NOT NULL,
  PRIMARY KEY (`Nome`, `Pacientes_idPacientes`),
  INDEX `fk_Responsável_Pacientes1_idx` (`Pacientes_idPacientes` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`telefone_paciente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`telefone_paciente` ;

CREATE TABLE IF NOT EXISTS `mydb`.`telefone_paciente` (
  `idTelefone` VARCHAR(45) NOT NULL,
  `Pacientes_idPacientes` INT NOT NULL,
  PRIMARY KEY (`idTelefone`, `Pacientes_idPacientes`),
  INDEX `fk_Telefone_Paciente_Pacientes_idx` (`Pacientes_idPacientes` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`telefone_responsável`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`telefone_responsável` ;

CREATE TABLE IF NOT EXISTS `mydb`.`telefone_responsável` (
  `idTelefone_Responsável`  VARCHAR(45) NOT NULL,
  `Responsável_Nome` INT NOT NULL,
  PRIMARY KEY (`idTelefone_Responsável`, `Responsável_Nome`),
  INDEX `fk_Telefone_Responsável_Responsável1_idx` (`Responsável_Nome` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`uti`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`uti` ;

CREATE TABLE IF NOT EXISTS `mydb`.`uti` (
  `Nª_da_Sala` INT NOT NULL,
  `Departamento_Numeração` INT NOT NULL,
  `Pacientes_idPacientes` INT NOT NULL,
  PRIMARY KEY (`Departamento_Numeração`,`Pacientes_idPacientes`),
  INDEX `fk_UTI_Departamento1_idx` (`Departamento_Numeração` ASC) VISIBLE,
  INDEX `fk_UTI_Pacientes1_idx` (`Pacientes_idPacientes` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `mydb`.`Obitos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Obitos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Obitos` (
  `Causa_Obito` VARCHAR(45) NOT NULL,
  `Data_Obito` DATETIME NOT NULL,
  `Pacientes_idPacientes` INT NOT NULL,
  PRIMARY KEY (`Pacientes_idPacientes`),
  INDEX `fk_UTI_Pacientes1_idx` (`Pacientes_idPacientes` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `mydb`.`Equipamentos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Equipamentos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Equipamentos` (
  `N_Ventiladores` INT NOT NULL,
  `Departamento_Numeração` INT NOT NULL,
  PRIMARY KEY (`Departamento_Numeração`),
  INDEX `fk_UTI_Departamento1_idx` (`Departamento_Numeração` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
