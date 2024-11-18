window.onload = function(){
    console.log("Javascript está preparado para la acción")
    fetch("http://localhost:5000/damearticulos")
    .then(function(response){
        return response.json()
    })
    .then(function(datos){
        console.log(datos)
    })
}