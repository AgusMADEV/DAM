document.querySelector("#muestrasignup").onclick = function(){
    document.querySelector("#contienelogin").style.display = "none";
    document.querySelector("#contienesignup").style.display = "block";
}

// ⏳ Verificar si el usuario ya está logueado al cargar la página
document.addEventListener("DOMContentLoaded", function () {
    if (localStorage.getItem("usuario")) {
        ocultarLogin();
    }
});

// ✅ Función para ocultar el login y mostrar el juego
function ocultarLogin() {
    document.querySelector("#login").style.display = "none";
}

document.querySelector("#iniciarsesion").onclick = function(){
    const url = 'back/siennaback.php?router=login'; 
    const datos = {
        usuario: document.querySelector("#usuario").value,
        contrasena: document.querySelector("#contrasena").value
    };

    fetch(url, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(datos)
    })
    .then(response => response.text()) // Convert to text instead of JSON to debug
    .then(responseText => {
        console.log('Raw Response:', responseText);
        try {
            const data = JSON.parse(responseText);
            console.log('Parsed Response:', data);
            if (data.resultado === "ok") {  // 🔹 CORREGIDO: antes era data.respuesta
                localStorage.setItem("usuario", datos.usuario); // 🔹 Guarda el usuario en localStorage
                ocultarLogin();
            } else {
                alert("Usuario o contraseña incorrectos");
            }
        } catch (error) {
            console.error('JSON Parse Error:', error);
        }
    })
    .catch(error => {
        console.error('Fetch Error:', error);
    });
};

