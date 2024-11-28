CREATE TABLE `dragonball`.`personajes` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT ,
    `Nombre` VARCHAR(255) NOT NULL ,
    `Raza` VARCHAR(255) NOT NULL ,
    `Poder` INT(255) NOT NULL ,
    `id_planetaorigen` INT(255) NOT NULL ,
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
