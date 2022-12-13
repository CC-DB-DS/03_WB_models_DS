CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- Inserts
INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (DEFAULT, "Grizabella", 21);
INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (DEFAULT, "Alonso", 32);

-- Anzeige
SELECT * FROM mydb.cats;