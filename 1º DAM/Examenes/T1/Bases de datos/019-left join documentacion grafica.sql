SELECT 

documentaciongrafica.piedefoto AS Nombre,
documentaciongraficacategorias.categorias

FROM `documentaciongrafica` 

LEFT JOIN documentaciongraficacategorias
ON documentaciongrafica.categoria_nombre = documentaciongraficacategorias.Identificador