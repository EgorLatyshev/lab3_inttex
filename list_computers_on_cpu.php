<?php
    include "connect_to_bd.php"; 
    $cpu = $_REQUEST['comp_cpu'];
   
    $sqlSelect = $dbh->prepare(
    "SELECT * FROM computer inner join processor on FID_Processor = ID_Pocessor 
        WHERE processor.name=:cpu"
    );
    
    $sqlSelect->execute(array(':cpu' => $cpu));
    
    $rez1 =  "<table border ='1'>";
    $rez1 = $rez1 . "<tr><th>Netname</th><th>Motherboard</th><th>RAM_capacity</th><th>HDD_capacity</th><th>Monitor</th><th>Vendor</th><th>Guarantee</th></tr>";
    while ($cell = $sqlSelect->fetch()) {
        $Netname = $cell['netname'];
        $Motherboard = $cell['motherboard'];
        $RAM_capacity = $cell['RAM_capacity'];
        $HDD_capacity = $cell['HDD_capacity'];
        $Monitor = $cell['monitor'];
        $Vendor = $cell['vendor'];
        $Guarantee = $cell['guarantee'];
        $rez1 = $rez1 . "<tr><td>$Netname</td><td>$Motherboard</td><td>$RAM_capacity</td><td>$HDD_capacity</td><td>$Monitor</td><td>$Vendor</td><td>$Guarantee</td></tr>";
    }
    $rez1 = $rez1 . "</table>";
    echo $rez1;
 
