CREATE TABLE `bandainamco`.`empleados`
 (
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `nombre` VARCHAR(255) NOT NULL , 
    `apellidos` VARCHAR(255) NOT NULL , 
    `email` VARCHAR(255) NOT NULL , 
    `telefono` VARCHAR(255) NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
