ALTER TABLE `personajestransformaciones` ADD CONSTRAINT `personajestransformaciones_personajes` FOREIGN KEY (`id_personaje`) REFERENCES `personajes`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `personajestransformaciones` ADD CONSTRAINT `personajestransformaciones_transformaciones` FOREIGN KEY (`id_transformacion`) REFERENCES `transformaciones`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
