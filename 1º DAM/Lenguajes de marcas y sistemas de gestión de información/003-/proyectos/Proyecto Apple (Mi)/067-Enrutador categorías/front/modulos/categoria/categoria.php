<main>
	<?php 
		include "modulos/bloque/bloque.php"; 
		$bloque1 = new BloqueCompleto(
			"Titulo bloque 1");
		echo $bloque1->getBloque();

		$bloque2 = new BloqueCaja(
			"Titulo bloque 2",
			"Subtitulo bloque 2");
		echo $bloque2->getBloque();

		$bloque3 = new BloqueCaja(
			"Titulo bloque 3",
			"Subtitulo bloque 3",
			"texto bloque 3");
		echo $bloque3->getBloque();

		$bloque4 = new BloqueCaja(
			"Titulo bloque 4",
			"Subtitulo bloque 4",
			"texto bloque 4",
			"",
			"",
			[
				"background"=>"LightPink",
				"border-radius"=>"25px"
			]
		);
		echo $bloque4->getBloque();

	?>
</main>
<script>
	<?php include "categoria.js"?>
</script>
<style>
	<?php include "categoria.css"?>
</style>