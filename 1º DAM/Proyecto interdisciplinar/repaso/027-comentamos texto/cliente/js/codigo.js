window.onload = function(){                                                 // Cuando la página cargue, se ejecuta esta función
    console.log("Java Script operativo")                                    // Comprobamos que el JavaScript funciona
    fetch("http://localhost:5000/personajes")                               // Pedimos lista de personajes al servidor  
    .then(function(response){
        return response.json()                                              // Pedimos que nos lo devuelva en (JSON)
    })
    .then(function(datos){
        console.log(datos)                                                  // Mostramos los datos en la consola para comprobar que funciona
        let contenedor = document.querySelector(".capitulos")               // Buscamos en el HTML dónde vamos a poner los datos
        datos.forEach(function(dato){                                       // Para cada personaje que nos llega, creamos un bloque en el HTML
            contenedor.innerHTML += `
            <article>
                <p class="icono"><img src="img/capitulos.webp"></p>
                <h5>`+dato.Nombre+`</h5>
                <p>`+dato.Raza+`</p>
            </article>
        `
        })
    })
    .catch(function (error) {
        console.error("Hubo un error al traer los datos:", error)                   // Si algo falla, mostramos el error en la consola
    })
}