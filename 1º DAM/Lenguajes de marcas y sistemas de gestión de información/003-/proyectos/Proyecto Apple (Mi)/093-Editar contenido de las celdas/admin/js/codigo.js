console.log("Hola")

let celdas = document.querySelectorAll("td")                    // Selecciono todas las celdas

celdas.forEach(function(celda){                                             // Para cada una de las celdas
    celda.ondblclick = function(){                                              // Cuando hago doble click en la celda
        console.log("Has hecho doble click")
        this.setAttribute("contenteditable","true")                 // Ahora podemos editar la celda
        this.classList.add("celdaactiva")                                   // Añado una clase a la celda
        this.focus()                                                                            // Mete el foco dentro de la celda
    }
    celda.onblur = function(){                                                  // Cuando salgo de la celda
        this.setAttribute("contenteditable","false")             // La celda ya no es editable  
        this.classList.remove("celdaactiva")                         // Elimino la clase a la celda
    }
})