-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fitnessclubsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fitnessclubsdb` ;

-- -----------------------------------------------------
-- Schema fitnessclubsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fitnessclubsdb` DEFAULT CHARACTER SET utf8 ;
USE `fitnessclubsdb` ;

-- -----------------------------------------------------
-- Table `aurora_gym`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aurora_gym` ;

CREATE TABLE IF NOT EXISTS `aurora_gym` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `programs` VARCHAR(45) NULL,
  `street` VARCHAR(45) NULL,
  `twentyfour_hour` TINYINT NULL,
  `image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS gymner@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'gymner'@'localhost' IDENTIFIED BY 'gymner';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gymner'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `aurora_gym`
-- -----------------------------------------------------
START TRANSACTION;
USE `fitnessclubsdb`;
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (1, 'Vasa Fitness', 'Basketball', '16921 E Quincy Ave', 0, 'https://lh3.googleusercontent.com/p/AF1QipN85RTJh-R5wlxwmOqV7MdlJq8VzbdTS9w8z754=w231-h165-n-k-no-nu');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (2, 'Chuze Fitness', 'Sauna', '779 Peoria St', 0, 'https://lh3.googleusercontent.com/p/AF1QipM2KfA7fXAMHbxjuK6FQmsHz5tRz1f8kXqLSps=w231-h231-n-k-no-nu');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (3, 'Powwerhouse Gym', 'Personal', '15270 E Hampden Ave', 1, 'https://lh3.googleusercontent.com/p/AF1QipMosAXaQ96_CZ1zAephQ6bRT2cyRDkI4KVIt9AM=w231-h165-n-k-no-nu');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (4, 'Anytime Fitness', 'Personal', '5458 S Parker Rd', 1, 'https://lh3.googleusercontent.com/gps-cs-s/AC9h4npjfGKP9Bj60870cZRdhTyJnv18k2aTeMnTT1BkxkixG40o_Gv0owyE2u_1YeOFBIoNoofLLY-kU76VZOPkjFMSVSF0tptyKHkqzPGUs_z_pov5behw4tO2hzmY16BTEWM3b9HqYw=w231-h165-n-k-no-nu');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (5, 'TwentyFourHour Fitness', 'Swimming', '512 S Chambers Rd', 0, 'https://lh3.googleusercontent.com/p/AF1QipMY59w3lS3XIxIbu9Z28gj14qJwuyaWc70LCtrM=w231-h165-n-k-no-nu');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (6, 'Colorado\'s Pro ', 'Personal', '1961  S Havana St', 0, 'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nqrpKEetfNYAEhn0mIjYC7nEaSr0KbCUN6aEJtLhclQ3MDNRSLMnpUmtulIV98iRs0OzucvrHApc2cKgNasssN01mnspF2JSJNvGnhU4DFGgpZ2UI576uoJhfvitwoKAAe0ZFs8Hw=w231-h231-n-k-no-nu');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (7, 'Orange Theory', 'Personal', '4211 S Buckley Rd', 0, 'https://cdn.prod.website-files.com/6337e6fca669d8aab6498d20/6761d4e6da0819ef7390958f_workout-strength-section.webp');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (8, 'Achieve Gymnastics', 'Kids', '3460 S Fairplay Way', 0, 'https://lh3.googleusercontent.com/gps-cs-s/AC9h4noVfa2flWe9AAanBNKXD2Cwp_jlTxIW62iFw443dChUe8zuF5YBfYbj8SvjdoOQoV4dn-BHr_ZwIX83eYcfcOUeGirPtBiG1t0XvXiDVemDsGKHHfWg-kiCvoNrZ3rv5EYI-lK0=w231-h165-n-k-no-nu');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (9 , 'Reclaim Fitness', 'Zumba', '13801 E Exposition Av', 1, 'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nr0M0QTmFEJMZDaXUtHpjVZ4ICdzgZ--752JUJhyOtnikLZw9bCcEvAoKceITBmZ0QuPsOOMJREj2Eu9c0-T81dD2LXfDnqgOVZ1_JFLn0MxWXjDjXModIqloMR7Ki7MVyzDBA=w231-h231-n-k-no-nu');
INSERT INTO `aurora_gym` (`id`, `name`, `programs`, `street`, `twentyfour_hour`, `image_url`) VALUES (10, ' Planet Fitness', 'Spa', '13730 E Mississippi Ave', 0, 'https://lh3.googleusercontent.com/p/AF1QipNCYY_5JDZj_ecDcZh181hgxY3EZqpExlcRwt0o=w231-h165-n-k-no-nu');

COMMIT;

