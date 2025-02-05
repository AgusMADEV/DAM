function difumina(cabecera){                                                // Cuando entro
    console.log("Has entrado")
    document.querySelector("main").classList.add("difuminado")                    // Le añado una clase css
    document.querySelector("header").classList.add("grande")
    cabecera.style.background = "rgba(255,255,255,1)"                           // Le pongo color solido al fondo
}