CREATE TABLE `basededatosexamen`.`bibliografia` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `imagen` VARCHAR(255) NOT NULL , 
    `titulo` VARCHAR(255) NOT NULL , 
    `experto_nombre` INT NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
