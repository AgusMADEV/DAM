<style>
    #botonreserva{
        border: none;
        background: lightpink;
        padding: 5px;
        border-radius: 20px;
        width: 80px;
        color: white;
    }
</style>
<?php
    if(isset($_GET['prod'])){
        echo '
            <a href="tienda.php?prod='.$_GET['prod'].'">
                <button id="botonreserva">
                    RESERVA
                </button>
            </a>
        ';
    }
?>