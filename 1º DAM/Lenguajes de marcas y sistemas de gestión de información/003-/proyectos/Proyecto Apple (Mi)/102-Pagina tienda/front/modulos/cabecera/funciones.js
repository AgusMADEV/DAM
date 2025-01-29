function difumina(cabecera){                                                // Cuando entro
    console.log("Has entrado")
    document.querySelector("main").classList.add("difuminado")                    // Le añado una clase css
    cabecera.style.background = "rgba(255,255,255,1)"                           // Le pongo color solido al fondo
}