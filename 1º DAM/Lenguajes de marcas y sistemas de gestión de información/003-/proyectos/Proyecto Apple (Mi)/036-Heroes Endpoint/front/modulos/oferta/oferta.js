fetch("../back/oferta.php")                             // Cargo un endpoint en el back                               
.then(function(response){                               // Cuando obtenga respuesta                                    
    return response.json()                              // La convierto en Json
})  
.then(function(datos){                                  // Y cuando reciba datos
    let texto = document.querySelector("#oferta p")     // Selecciono el texto
    texto.textContent = datos[0].texto                  // Y le pongo el texto del Json
})