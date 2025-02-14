window.onload = function(){
    console.log("Java Script está vivo")
    fetch("http://localhost:5000/documentaciongrafica")
    .then(function(response){
        return response.json()
    })
    .then(function(datos){
        console.log(datos)
        let contenedor = document.querySelector(".contenedor")
        datos.forEach(function(dato){
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
        `
        })
    })
}