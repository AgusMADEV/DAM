ALTER TABLE `direcciones` ADD CONSTRAINT `direcciones a empleados` FOREIGN KEY (`empleados_nombre`) REFERENCES `empleados`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
