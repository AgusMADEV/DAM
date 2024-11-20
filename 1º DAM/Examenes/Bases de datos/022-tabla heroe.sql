CREATE TABLE `basededatosexamen`.`heroe` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `titulo` VARCHAR(255) NOT NULL , 
    `subtitulo` VARCHAR(255) NOT NULL , 
    `texto` TEXT NOT NULL , 
    `contenidovisual` VARCHAR(255) NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
