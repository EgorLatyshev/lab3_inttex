<?php
    include "connect_to_bd.php";
    
    $sqlSelect = $dbh->prepare(
    "SELECT * FROM computer 
        WHERE guarantee < ?"
    );
    
    $sqlSelect->execute([date("Y-m-d")]);
    
    $cell = $sqlSelect->fetchAll(PDO::FETCH_OBJ);
    echo json_encode($cell);
