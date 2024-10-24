CREATE TABLE `cine`.`boleto` 
(
    `id_boleto` INT(255) NOT NULL AUTO_INCREMENT ,
    `id_cliente` INT(255) NOT NULL ,
    `id_proyeccion` INT(255) NOT NULL ,
    `cantidad_boletos` INT(255) NOT NULL ,
    `total_pago` DECIMAL(65) NOT NULL ,
    PRIMARY KEY (`id_boleto`)
) ENGINE = InnoDB;