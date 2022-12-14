CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cat_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))  
ENGINE = InnoDB;

INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Peter", "braun");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Gustav", "schwarz");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Anneliese", "braun");

-- kittens
CREATE TABLE IF NOT EXISTS `mydb`.`kittens` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `kitten_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  `cats_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_kittens_cats_idx` (`cats_id` ASC),
  CONSTRAINT `fk_kittens_cats`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Tigerchen", "weiß", 1);
INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Entchen", "grau", 1);
INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Berserker", "weiß", 1);

select * from mydb.kittens;
select * from mydb.cats;
