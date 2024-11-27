CREATE TABLE `huellasencasa`.`ubicaciones` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `Ciudad` VARCHAR(255) NOT NULL , 
    `Provincia` VARCHAR(255) NOT NULL , 
    `Direccion` VARCHAR(255) NOT NULL , 
    `Latitud` FLOAT NOT NULL , 
    `Longitud` FLOAT NOT NULL , 
    `Descripcion` TEXT NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
