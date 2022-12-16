CREATE TABLE IF NOT EXISTS `mydb`.`addressbook` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `vorname` VARCHAR(45) NOT NULL,
  `plz` INT NOT NULL,
  `ort` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;

INSERT INTO `mydb`.`addressbook` (`id`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Müller", "Peter", 12991, "Berlin");
INSERT INTO `mydb`.`addressbook` (`id`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Ay", "Yildiz", 63325, "Langen");
INSERT INTO `mydb`.`addressbook` (`id`, `name`, `vorname`, `plz`, `ort`) VALUES (DEFAULT, "Sommer", "Petra", 70137, "Stuttgart");

describe table addressbook;