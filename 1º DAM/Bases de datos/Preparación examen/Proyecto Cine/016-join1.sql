SELECT *
FROM boleto
LEFT JOIN cliente
ON cliente.id_cliente = boleto.id_cliente
;