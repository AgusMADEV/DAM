document.querySelector("#enviar").onclick = function(){
    console.log("Voy a ver si envío un mensahe")
    // Primero recojo los datos de los campos
    let nombre = document.querySelector("#nombre").value
    let email = document.querySelector("#email").value
    let asunto = document.querySelector("#asunto").value
    let mensaje = document.querySelector("#mensaje").value
    let envias = true;

    if(nombre == ""){
        document.querySelector("#ayudanombre").textContent = "Introduce un nombre"
        document.querySelector("#nombre").classList.add("tomato")
        envias = false
    }else{
        document.querySelector("#ayudanombre").textContent = ""
        document.querySelector("#nombre").classList.remove("tomato")
    }
    if(email == ""){
        document.querySelector("#ayudaemail").textContent = "Introduce un email"
        document.querySelector("#email").classList.add("tomato")
        envias = false
    }else{
        let reg = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
        if(reg.test(email)){
            document.querySelector("#ayudaemail").textContent = ""
            document.querySelector("#email").classList.remove("tomato")
        }else{
            document.querySelector("#ayudaemail").textContent = "Introduce un email VALIDO"
			document.querySelector("#email").classList.add("rojo")
        }
    }
    if(asunto == ""){
        document.querySelector("#ayudaasunto").textContent = "Introduce un asunto"
        document.querySelector("#asunto").classList.add("tomato")
        envias = false
    }else{
        document.querySelector("#ayudaasunto").textContent = ""
        document.querySelector("#asunto").classList.remove("tomato")
    }
    if(mensaje == ""){
        document.querySelector("#ayudamensaje").textContent = "Introduce un mensaje"
        document.querySelector("#mensaje").classList.add("tomato")
        envias = false
    }else{
        document.querySelector("#ayudamensaje").textContent = ""
        document.querySelector("#mensaje").classList.remove("tomato")
    }
    // Construyo lo que voy a enviar
    if(envias == true){
        let correo = {
            "nombre":nombre,
            "email":email,
            "asunto":asunto,
            "mensaje":mensaje,
        }
        console.log(correo)
    }else{
        console.warn("De momento no se envia el mensaje")
    }  
}