CREATE TABLE `dragonball`.`personajestransformaciones` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `id_personaje` INT NOT NULL , 
    `id_transformacion` INT NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
