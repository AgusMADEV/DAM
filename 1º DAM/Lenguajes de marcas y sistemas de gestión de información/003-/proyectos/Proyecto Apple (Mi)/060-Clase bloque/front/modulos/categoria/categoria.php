<main>
	<?php 
		include "modulos/bloque/bloque.php"; 
		$bloque1 = new BloqueCompleto(
			"Titulo bloque 1",
			"Subtitulo bloque 1",
			"texto bloque 1",
			"",
			"");
		echo $bloque1->getBloque();

		$bloque2 = new BloqueCaja(
			"Titulo bloque 2",
			"Subtitulo bloque 2",
			"texto bloque 2",
			"",
			"");
		echo $bloque2->getBloque();

		$bloque3 = new BloqueCaja(
			"Titulo bloque 3",
			"Subtitulo bloque 3",
			"texto bloque 3",
			"",
			"");
		echo $bloque3->getBloque();
	?>
</main>
<script>
	<?php include "categoria.js"?>
</script>
<style>
	<?php include "categoria.css"?>
</style>