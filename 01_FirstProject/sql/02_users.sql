CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC))
ENGINE = InnoDB;

-- Struktur
DESCRIBE mydb.users;

-- Inserts
INSERT INTO `mydb`.`users` (`user_name`) VALUES ("Arnold");


-- Inhalte
SELECT * FROM mydb.users;
