window.onload = function(){
    console.log("Java Script operativo")
    fetch("http://localhost:5000/personajes")
    .then(function(response){
        return response.json()
    })
    .then(function(datos){
        console.log(datos)
        let contenedor = document.querySelector(".capitulos")
        datos.forEach(function(dato){
            contenedor.innerHTML += `
            <article>
                <p class="icono"><img src="img/capitulos.webp"></p>
                <h5>`+dato.Nombre+`</h5>
                <p>`+dato.Raza+`</p>
            </article>
        `
        })
    })
}