document.querySelector("#enviar").onclick = function(){
    console.log("Voy a ver si envío un mensahe")
    // Primero recojo los datos de los campos
    let nombre = document.querySelector("#nombre").value
    let email = document.querySelector("#email").value
    let asunto = document.querySelector("#asunto").value
    let mensaje = document.querySelector("#mensaje").value

    if(nombre == ""){
        document.querySelector("#ayudanombre").textContent = "Introduce un nombre"
        document.querySelector("#nombre").classList.add("tomato")
    }else{
        document.querySelector("#ayudanombre").textContent = ""
        document.querySelector("#nombre").classList.remove("tomato")
    }
    if(email == ""){
        document.querySelector("#ayudaemail").textContent = "Introduce un email"
        document.querySelector("#email").classList.add("tomato")
    }else{
        document.querySelector("#ayudaemail").textContent = ""
        document.querySelector("#email").classList.remove("tomato")
    }
    if(asunto == ""){
        document.querySelector("#ayudaasunto").textContent = "Introduce un asunto"
        document.querySelector("#asunto").classList.add("tomato")
    }else{
        document.querySelector("#ayudaasunto").textContent = ""
        document.querySelector("#asunto").classList.remove("tomato")
    }
    if(mensaje == ""){
        document.querySelector("#ayudamensaje").textContent = "Introduce un mensaje"
        document.querySelector("#mensaje").classList.add("tomato")
    }else{
        document.querySelector("#ayudamensaje").textContent = ""
        document.querySelector("#mensaje").classList.remove("tomato")
    }
    // Construyo lo que voy a enviar
    let correo = {
        "nombre":nombre,
        "email":email,
        "asunto":asunto,
        "mensaje":mensaje,
    }
    console.log(correo)
}