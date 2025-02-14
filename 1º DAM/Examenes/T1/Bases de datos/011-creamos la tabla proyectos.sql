CREATE TABLE `basededatosexamen`.`proyecto` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `titulo` VARCHAR(255) NOT NULL , 
    `texto` TEXT NOT NULL , 
    `imagen` VARCHAR(255) NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
