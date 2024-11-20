CREATE TABLE `dragonball`.`planetas` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT ,
    `Nombre` VARCHAR(255) NOT NULL ,
    `Tipo` VARCHAR(255) NOT NULL ,
    `Poblacion` INT NOT NULL ,
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
