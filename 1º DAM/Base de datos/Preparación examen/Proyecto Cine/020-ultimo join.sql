SELECT 
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

FROM boleto

LEFT JOIN cliente
ON cliente.id_cliente = boleto.id_cliente

LEFT JOIN proyeccion
ON proyeccion.id_proyeccion = boleto.id_proyeccion

LEFT JOIN pelicula
on pelicula.id_pelicula = proyeccion.id_pelicula

LEFT JOIN sala
on sala.id_sala = proyeccion.id_sala
;