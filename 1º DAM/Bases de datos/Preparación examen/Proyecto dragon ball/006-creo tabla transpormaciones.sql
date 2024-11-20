CREATE TABLE `dragonball`.`transpormaciones`
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT ,
    `Nombre` VARCHAR(255) NOT NULL , 
    `Descripcion` TEXT NOT NULL , 
    `Poderincrementado` INT NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
