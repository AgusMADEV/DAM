<?php

    $servidor = "localhost";                                                // Defino el servidor
    $usuario = "evoluciona";                                             // Defino el usuario con permiso
    $contrasena = "evoluciona";                                          // Defino la contraseña de ese usuario
    $base = "evoluciona";                                                // Defino la base de datos

    $conexion = new mysqli(
        $servidor,
        $usuario,
        $contrasena,
        $base
    );                                                                      // Creo una conexión de tipo MySQL

?>