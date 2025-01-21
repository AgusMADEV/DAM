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
		FROM bloques
		WHERE categorias_nombre = ".$_GET['cat']."
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
	<?php include "categoria.js"?>
</script>
<style>
	<?php include "categoria.css"?>
</style>