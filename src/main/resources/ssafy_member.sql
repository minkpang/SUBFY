-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema happyhouse
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema happyhouse
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `happyhouse` DEFAULT CHARACTER SET utf8 ;
USE `happyhouse` ;

-- -----------------------------------------------------
-- Table `happyhouse`.`ssafy_member`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `happyhouse`.`ssafy_member` ;

CREATE TABLE IF NOT EXISTS `happyhouse`.`ssafy_member` (
  `userid` VARCHAR(16) NOT NULL,
  `username` VARCHAR(20) NOT NULL,
  `userpwd` VARCHAR(16) NOT NULL,
  `gender`  VARCHAR(6) NOT NULL,
  `email` VARCHAR(50) NULL,
  `address` VARCHAR(100) NULL,
  `joindate` TIMESTAMP NULL DEFAULT current_timestamp,
  PRIMARY KEY (`userid`))
ENGINE = InnoDB;

INSERT INTO ssafy_member (userid, username, userpwd, gender, email, address)
VALUES('admin', '관리자', 'admin', 'male', 'admin@ssafy.com','서울시 역삼동');

INSERT INTO ssafy_member (userid, username, userpwd, gender, email, address)
VALUES('ssafy', '김싸피', 'ssafy', 'female', 'ssafy@ssafy.com','대전시 덕명동');

INSERT INTO ssafy_member (userid, username, userpwd, gender, email, address)
VALUES('ssafy22', '홍싸피', 'ssaf2y', 'male', 'ssafy2@ssafy.com','서울시 성수동');

commit;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

select * from ssafy_member;
