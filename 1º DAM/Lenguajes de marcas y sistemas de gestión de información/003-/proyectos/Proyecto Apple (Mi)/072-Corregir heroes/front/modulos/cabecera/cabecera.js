// Carga elementos en el menú principal con las categorías
fetch("../back/?tabla=categorias")                                                                                                        // Cargo un endpoint en el back
.then(function(response) {                                                                                                                      // Cuando obtenga respuesta
    return response.json();                                                                                                                         // La convierto en json
})
.then(function(datos) {                                                                                                                             // Y cuando reciba datos
    console.log(datos);
    let cabecera = document.querySelector("header nav ul");                                                   // Selecciona la cabecera
    let plantilla = document.querySelector("#elementomenu");                                                // Tomo una plantilla template
    
    datos.forEach(function(dato) {                                                                                                          // Para cada dato recibido
        let instancia = plantilla.content.cloneNode(true);                                                                  // Creo una instancia
        let enlace = instancia.querySelector("a");                                                                                // Selecciono el enlace interior
        
        enlace.textContent = dato.nombre;                                                                                             // Le pongo el atributo de texto
        enlace.setAttribute("href", "categoria.php?cat=" + dato.Identificador);                        // Le digo a que página debe ir         
        enlace.setAttribute("cat", dato.Identificador);                                                                         // Le pongo una atributo personalizado (categoria)
        // Usa addEventListener para manejar el evento de mouseover
        enlace.addEventListener("mouseover", function() {                                                               // Cuando pase por encima de esa categoria
            console.log("Vamos a ver que hay en esta categoria");
            console.log(this.textContent)
            let tituloseccion = this.textContent                                                                                               // Cargo el título de la categoría 
            fetch("../back/?busca=productos&campo=categorias_nombre&dato="+this.getAttribute("cat"))            // Fetch para obtener productos por categoria
            .then(function(response) {                                                                                                                                                      // Cuando obtenga respuesta
					return response.json();                                                                                                                                                     // La convierto en json
				})
				.then(function(datos) {                                                                                                                                                         // Y cuando reciba datos
				    console.log(datos);
                    document.querySelector("#categoria").textContent = tituloseccion                                                            // Pongo el título de la categoría
                    document.querySelector("#productos").innerHTML = ""                                                                                      // Vacío los productos
                    datos.forEach(function(dato){                                                                                                                                       // Para cada uno de los productos
                    document.querySelector("#productos").innerHTML += "<li><a href='producto.php?prod="+dato.Identificador+"'>"+dato.titulo+"</a></>"                                               // Los pongo en el listado
                    })
					})
            });
        
        cabecera.appendChild(instancia);
    });
})
.catch(function(error) {
    console.error("Error al cargar las categorías:", error);
});