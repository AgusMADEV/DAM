window.onload = function(){													// Cuando la ventana haya cargado
	console.log("Javascript está preparado para la acción")

	////////////////////////////// PROCESO EL FORMULARIO ///////////////////////////////
	
	let boton = document.querySelector("#propuestas button")			// Selecciono el boton del formulario
	
	boton.onclick = function(){												// Cuando haga click en el boton
		console.log("vamos a guardar un mensaje")							// Lanzo un mensaje por pantalla
		let nombre = document.querySelector("#contactonombre").value
		let email = document.querySelector("#contactoemail").value
		let asunto = document.querySelector("#contactoasunto").value
		let texto = document.querySelector("#contactotexto").value
		console.log(nombre,email,asunto,texto)
		let mensajejson = {
			"nombre":nombre,
			"email":email,
			"asunto":asunto,
			"texto":texto
		}
		console.log(mensajejson)
		fetch("http://localhost:5000/insertamensaje",{
		  method: 'POST',
		  headers: {
			 'Content-Type': 'application/json'
		  },
		  body: JSON.stringify(mensajejson) 
		})
		.then(function(response){
			return response.json()
		})
		.then (function(){
			document.querySelector("#contactonombre").value = ""
			document.querySelector("#contactoemail").value = ""
			document.querySelector("#contactoasunto").value = ""
			document.querySelector("#contactotexto").value = ""
			document.querySelector("#feedbackmail").style.display = "block"
			document.querySelector("#feedbackmail").classList.add("animado");
		})
	}
	
}