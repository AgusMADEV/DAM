CREATE TABLE `cine`.`proyección` 
(
    `id_proyeccion` INT(255) NOT NULL AUTO_INCREMENT ,
    `fecha_hora` DATE NOT NULL ,
    `id_pelicula` INT(255) NOT NULL ,
    `id_sala` INT(255) NOT NULL ,
    `precio` DECIMAL(10,2) NOT NULL ,
    PRIMARY KEY (`id_proyeccion`)
) ENGINE = InnoDB;