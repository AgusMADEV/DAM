ALTER TABLE `personajes` ADD CONSTRAINT `personajesaplanetas` FOREIGN KEY (`id_planetaorigen`) REFERENCES `planetas`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
