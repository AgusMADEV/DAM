CREATE TABLE `huellasencasa`.`animales` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `Nombre` VARCHAR(255) NOT NULL , 
    `Especie` VARCHAR(255) NOT NULL , 
    `Raza` VARCHAR(255) NOT NULL , 
    `Sexo` VARCHAR(255) NOT NULL , 
    `Tamaño` VARCHAR(255) NOT NULL , 
    `Edadestimada` VARCHAR(255) NOT NULL , 
    `Fechareporte` DATE NOT NULL , 
    `Descripcion` TEXT NOT NULL , 
    `Contenidovisual` VARCHAR(255) NOT NULL , 
    `Id_ubicacion` INT(255) NOT NULL , 
    `Id_usuario_reporta` INT(255) NOT NULL , 
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
