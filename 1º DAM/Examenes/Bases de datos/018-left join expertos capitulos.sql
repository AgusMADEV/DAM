SELECT

capitulos.Numerador,
capitulos.titulo,
expertos.nombre

FROM `capitulosexpertos`
LEFT JOIN expertos 
ON capitulosexpertos.expertos_nombre = expertos.Identificador
LEFT JOIN capitulos
ON capitulosexpertos.capitulos_nombre = capitulos.Identificador