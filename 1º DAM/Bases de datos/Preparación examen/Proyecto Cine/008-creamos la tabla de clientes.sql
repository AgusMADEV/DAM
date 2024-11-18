CREATE TABLE `cine`.`cliente` 
(
    `id_cliente` INT(255) NOT NULL AUTO_INCREMENT ,
    `nombre` VARCHAR(255) NOT NULL ,
    `email` VARCHAR(255) NOT NULL ,
    `telefono` VARCHAR(255) NOT NULL ,
    `fecha_nacimiento` VARCHAR(255) NOT NULL ,
    PRIMARY KEY (`id_cliente`)
) ENGINE = InnoDB;