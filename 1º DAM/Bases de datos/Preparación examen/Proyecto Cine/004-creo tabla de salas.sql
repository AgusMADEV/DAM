CREATE TABLE `cine`.`sala` 
(
    `id_sala` INT(255) NOT NULL AUTO_INCREMENT ,
    `nombre` VARCHAR(255) NOT NULL ,
    `capacidad` INT(255) NOT NULL , 
    `tipo` VARCHAR(50) NOT NULL ,
    `ubicacion` VARCHAR(100) NOT NULL ,
    PRIMARY KEY (`id_sala`)
) ENGINE = InnoDB;