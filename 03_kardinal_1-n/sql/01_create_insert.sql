-- Tabelle cats
CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL,
  `cat_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;

INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Angela", "alpina-weiß");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Rupert", "braun");
INSERT INTO `mydb`.`cats` (`id`, `cat_name`, `fur_color`) VALUES (DEFAULT, "Heinz", "schwarz");

-- Tabelle kittens
CREATE TABLE IF NOT EXISTS `mydb`.`kittens` (
  `id` INT NOT NULL,
  `kitten_name` VARCHAR(45) NOT NULL,
  `fur_color` VARCHAR(45) NOT NULL,
  `cats_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_kittens_cats_idx` (`cats_id` ASC),
  CONSTRAINT `fk_kittens_cats`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Tigerchen", "braun", 1);
INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Pumelchen", "weiß", 1);
INSERT INTO `mydb`.`kittens` (`id`, `kitten_name`, `fur_color`, `cats_id`) VALUES (DEFAULT, "Berserker", "schwarz", 1);

select * from mydb.kittens;

