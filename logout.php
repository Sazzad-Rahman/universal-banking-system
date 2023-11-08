<?php
    session_start();
    session_destroy();
    echo "<h1>LOGGING OUT...</h1>";
    header("Refresh: 1; URL=index.php");
?>