-- Siempre es un SELECT
SELECT
-- Le indico las columnas que necesito ver en pantalla
cliente.nombre,
cliente.email,
cliente.telefono,
boleto.total_pago,
boleto.cantidad_boletos,
proyeccion.fecha_hora,
pelicula.titulo,
pelicula.genero,
sala.tipo,
sala.ubicacion
-- Esta es la tabla inicial (teoricamente la que está más a la derecha)
FROM boleto
-- A continuacion indicamos los cruces de tabla de derecha a izquierda
LEFT JOIN cliente
ON cliente.id_cliente = boleto.id_cliente

LEFT JOIN proyeccion
ON proyeccion.id_proyeccion = boleto.id_proyeccion

LEFT JOIN pelicula
on pelicula.id_pelicula = proyeccion.id_pelicula

LEFT JOIN sala
on sala.id_sala = proyeccion.id_sala
-- Adicinalmente indico condiciones como por ejemplo filtrado de peliculas
WHERE pelicula.id_pelicula = 5
;