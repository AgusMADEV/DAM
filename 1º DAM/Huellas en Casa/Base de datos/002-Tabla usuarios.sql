CREATE TABLE `huellasencasa`.`usuarios` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `Nombre` VARCHAR(255) NOT NULL , 
    `Apellidos` VARCHAR(255) NOT NULL , 
    `Email` VARCHAR(255) NOT NULL , `Telefono` INT NOT NULL , 
    `Direccion` VARCHAR(255) NOT NULL , 
    `Fecharegistro` DATE NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
