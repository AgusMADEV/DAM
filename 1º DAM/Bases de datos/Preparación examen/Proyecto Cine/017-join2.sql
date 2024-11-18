SELECT 
cliente.nombre,
cliente.email,
cliente.telefono,
boleto.total_pago,
boleto.cantidad_boletos

FROM boleto

LEFT JOIN cliente
ON cliente.id_cliente = boleto.id_cliente
;