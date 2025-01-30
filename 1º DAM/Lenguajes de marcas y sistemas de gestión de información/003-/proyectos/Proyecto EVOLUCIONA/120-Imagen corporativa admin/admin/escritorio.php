<!DOCTYPE html>
<html>
    <head>
    <?php include "inc/cabeza.php"?>
    </head>
    <body>
        <header><h1><img src="img/logo.svg" id="logo">Evoluciona | DarkSlateBlue</h1></header>
        <main>
            <nav>
                <ul>
                    <li class="destacado">Tablas:</li>
                    <?php include "inc/menu.php"?>
                    <li class="destacado">Documentos:</li>
                    <?php include "inc/listadodocumentos.php"?>
                </ul>
            </nav>
            <section>
                <?php include "inc/tabla.php"?>
                <?php include "inc/documentos.php"?>
                <?php include "inc/documento.php"?>
                <?php include "inc/formulario.php"?>         
            </section>
        </main>
        <script src = "js/codigo.js"></script>
    </body>
</html>