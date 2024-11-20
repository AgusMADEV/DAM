ALTER TABLE `capitulosexpertos` ADD CONSTRAINT `capitulosexpertos_capitulos` FOREIGN KEY (`capitulos_nombre`) REFERENCES `capitulos`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `capitulosexpertos` ADD CONSTRAINT `capitulosexpertos_expertos` FOREIGN KEY (`expertos_nombre`) REFERENCES `expertos`(`Identificador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
