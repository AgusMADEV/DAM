window.onload = function(){
    console.log("Java Script operativo")
    fetch("http://localhost:5000/personajes")
    .then(function(response){
        return response.json()
    })
    .then(function(datos){
        console.log(datos)
    })
}