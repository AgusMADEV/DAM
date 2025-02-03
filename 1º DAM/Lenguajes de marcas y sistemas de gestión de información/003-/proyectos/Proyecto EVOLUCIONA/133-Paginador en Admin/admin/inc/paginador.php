<style>
    #paginador button{
        background: none;
        border: none;
        font-size: 25px;
        color: #ab5dda;
    }
</style>

<div id="paginador">
    <a href="?tabla=<?php echo $_GET['tabla']?>&pagina=0">
        <button><<</button>
    <a href="?tabla=<?php echo $_GET['tabla']?>&pagina=anterior">
        <button><</button>
    <a href="?tabla=<?php echo $_GET['tabla']?>&pagina=siguiente">
        <button>></button>
</div>