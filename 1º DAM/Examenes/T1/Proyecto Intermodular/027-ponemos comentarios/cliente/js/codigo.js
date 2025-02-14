window.onload = function(){                                                                 // En le momento que la ventana carga, llamamos a la funcion
    console.log("Java Script está vivo")                                                    // Imprimimos un mensaje en la consola para saber que JS está en uso
    fetch("http://localhost:5000/documentaciongrafica")                                     // Conectamos y pedimos la lista de la tabla documentaciongrafica
    .then(function(response){                                                       
        return response.json()                                                              // Se nos devuelve la informacion en JSON
    })
    .then(function(datos){                                                                  
        console.log(datos)                                                                  // Pedimos los datos y decimos que los imprima la consola en modo de Array
        let contenedor = document.querySelector(".contenedor")                              // Buscamos donde vamos a poner los datos en el HTML
        datos.forEach(function(dato){                                                       // En cada dato de documentaciongrafica le damos un contenedor
            contenedor.innerHTML += `
            <article>
                <div class="blog">
                    <h2>`+dato.documentaciongraficacategorias_Nombrecategoria+`</h2>
                    <div class="articulos">
                        <div class="noticia">
                            <img src=`+dato.Imagen+`>                                      
                            <h4>`+dato.Texto+`</h4>
                        </div>
                    </div>
                    <nav class="separador"></nav>
                    <div class="paginas">
                        <nav>
                            <ul>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li class="siguiente"><a href="#">Siguente</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </article>   
        `                                                                                   // Ponemos el bloque de css en el que queremos añadir los datos
        })
    })
}