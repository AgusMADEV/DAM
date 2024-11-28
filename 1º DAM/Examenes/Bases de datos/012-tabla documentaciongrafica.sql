CREATE TABLE `basededatosexamen`.`documentaciongrafica` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `categoria_nombre` INT NOT NULL , 
    `imagen` VARCHAR(255) NOT NULL , 
    `piedefoto` VARCHAR(255) NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
