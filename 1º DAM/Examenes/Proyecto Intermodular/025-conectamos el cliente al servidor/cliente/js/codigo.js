window.onload = function(){
    console.log("Java Script está vivo")
    fetch("http://localhost:5000/documentaciongrafica")
    .then(function(response){
        return response.json()
    })
    .then(function(datos){
        console.log(datos)
    })
}