<main>
	<?php 
		include "modulos/bloque/bloque.php"; 
		
		$conexion = mysqli_connect(
			"localhost", 
			"proyectoapple", 
			"proyectoapple", 
			"proyectoapple"
		);

		$peticion = "
		SELECT *
		FROM bloquesproductos
		WHERE productos_titulo = ".$_GET['prod']."
		;";
		// echo $peticion
		$resultado = mysqli_query($conexion, $peticion);

		while($fila = mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
			if($fila['tipobloque_tipo'] == "1"){
				$bloque = new BloqueCompleto($fila['titulo'],$fila['subtitulo']);
			echo $bloque->getBloque();
			}else if($fila['tipobloque_tipo'] == "2"){
				$bloque = new BloqueCaja($fila['titulo'],$fila['subtitulo']);
			echo $bloque->getBloque();
			}
		}

	?>
</main>
<script>
	<?php include "producto.js"?>
</script>
<style>
	<?php include "producto.css"?>
</style>