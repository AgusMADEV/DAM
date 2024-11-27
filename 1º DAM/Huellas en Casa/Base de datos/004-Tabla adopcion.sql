CREATE TABLE `huellasencasa`.`adopcion` 
(
    `Identificador` INT(255) NOT NULL AUTO_INCREMENT , 
    `Id_animal` INT(255) NOT NULL , 
    `Id_usuario_adopta` INT(255) NOT NULL , 
    `Fehaadopcion` DATE NOT NULL , PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;
