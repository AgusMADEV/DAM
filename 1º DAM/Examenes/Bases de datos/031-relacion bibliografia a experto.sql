ALTER TABLE `bibliografia` ADD CONSTRAINT `bibliografiaaexperto` FOREIGN KEY (`experto_nombre`) REFERENCES `expertos`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
