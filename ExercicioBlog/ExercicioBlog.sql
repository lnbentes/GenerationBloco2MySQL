-- MySQL Script generated by MySQL Workbench
-- Wed Mar 23 11:16:31 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ExercicioBlog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ExercicioBlog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ExercicioBlog` DEFAULT CHARACTER SET utf8 ;
USE `ExercicioBlog` ;

-- -----------------------------------------------------
-- Table `ExercicioBlog`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ExercicioBlog`.`tb_temas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ExercicioBlog`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ExercicioBlog`.`tb_usuario` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ExercicioBlog`.`tb_postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ExercicioBlog`.`tb_postagem` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `texto` VARCHAR(255) NOT NULL,
  `data` DATE NULL,
  `temas_id` BIGINT NULL,
  `usuario_id` BIGINT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_postagem_tb_temas_idx` (`temas_id` ASC) VISIBLE,
  INDEX `fk_tb_postagem_table11_idx` (`usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagem_tb_temas`
    FOREIGN KEY (`temas_id`)
    REFERENCES `ExercicioBlog`.`tb_temas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagem_table11`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `ExercicioBlog`.`tb_usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;