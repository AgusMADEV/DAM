<style>
    #paginador {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 10px;
    margin-top: 20px;
}

#paginador a {
    text-decoration: none;
}

#paginador button {
    background: #ab5dda;
    border: 2px solid #ab5dda;
    font-size: 20px;
    color: whitesmoke;
    width: 45px;
    height: 45px;
    border-radius: 50%;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

#paginador button:hover {
    background: #ecc8fa;
    color: #ab5dda;
    border-color: #ab5dda;
    transform: scale(1.1);
}

#paginador button:disabled {
    background: #ddd;
    color: #aaa;
    cursor: not-allowed;
    border: 2px solid #ccc;
}

</style>

<div id="paginador">
    <a href="?tabla=<?php echo $_GET['tabla']?>&pagina=0">
        <button title="Primera página">««</button>
    </a>
    <a href="?tabla=<?php echo $_GET['tabla']?>&pagina=anterior">
        <button title="Página anterior">«</button>
    </a>
    <a href="?tabla=<?php echo $_GET['tabla']?>&pagina=siguiente">
        <button title="Página siguiente">»</button>
    </a>
</div>
