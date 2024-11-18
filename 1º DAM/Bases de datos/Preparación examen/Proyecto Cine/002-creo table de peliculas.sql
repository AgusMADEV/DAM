CREATE TABLE `cine`.`pelicula` 
(
    `id_pelicula` INT(255) NOT NULL AUTO_INCREMENT ,
    `titulo` VARCHAR(255) NOT NULL ,
    `duracion` INT(255) NOT NULL , 
    `genero` VARCHAR(255) NOT NULL ,
    `clasificacion` VARCHAR(10) NOT NULL ,
    PRIMARY KEY (`id_pelicula`)
) ENGINE = InnoDB;