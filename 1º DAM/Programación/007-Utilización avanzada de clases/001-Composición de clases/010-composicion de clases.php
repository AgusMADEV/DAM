<?php
	class Direccion{
		private $calle;
		private $numero;
		private $codigopostal;
		private $poblacion;
		private $pais;
		public function __construct(
									$nuevacalle,
									$nuevonumero,
									$nuevocodigopostal,
									$nuevapoblacion,
									$nuevopais
		){
			$this->calle = $nuevacalle;
			$this->numero = $nuevonumero;
			$this->codigopostal = $nuevocodigopostal;
			$this->poblacion = $nuevapoblacion;
			$this->pais = $nuevopais;
		}
	}
	class Persona{
		// Propiedades, son variables del objeto
			private $nombre;
			private $apellidos;
			private $edad;
			private $telefonos;
			private $direccion;
		
		// Métodos
			// Método constructor, le da valores iniciales al objeto
				public function __construct(
											$nuevonombre,
											$nuevosapellidos,
											$nuevaedad,
											$nuevostelefonos,
											Direccion $nuevadireccion
										){
					$this->nombre = $nuevonombre;
					$this->apellidos = $nuevosapellidos;
					$this->edad = $nuevaedad;
					$this->edad = $nuevaedad;
					$this->telefonos = $nuevostelefonos;
					$this->direccion = $nuevadireccion;
				}
			// Métodos set y get - leen y escriben valores a las propiedades 
				public function setNombre($nuevonombre){
					$this->nombre = $nuevonombre;
				}
				public function getNombre(){
					return $this->nombre;
				}
			// Métodos libres
				public function saluda(){
					return "Hola que haces";
				}
	}
	$direccion1 = new Direccion(
		"Calle de Agustin",
		1,
		03130,
		"Santa Pola",
		"España"
		);
	$persona1 = new Persona(
		"Agustin",
		"Morcillo Aguado",
		25,
		[123456,345678],
		$direccion1
		);
	echo "<br>";
	var_dump($persona1);
?>
