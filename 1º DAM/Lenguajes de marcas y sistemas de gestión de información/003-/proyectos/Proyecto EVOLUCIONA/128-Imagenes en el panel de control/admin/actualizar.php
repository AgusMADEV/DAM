<?php

// Este archivo actualiza los campos que vienen del formulario

include "config/config.php";                                       // Traigo la conexión a la base de datos

$peticion = "
    UPDATE ".$_GET['tabla']."
    SET ".$_GET['columna']." = '".$_GET['contenido']."'
    WHERE Identificador = ".$_GET['identificador']."
";                                                          // Arranco una peticion

$resultado = $conexion->query($peticion);

?>