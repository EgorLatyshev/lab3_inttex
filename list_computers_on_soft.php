    <?php
    include "connect_to_bd.php";
    header('Content-Type: text/xml');
    header('Cache-Control: no-cache, must-revalidate');
    $soft = $_GET['soft'];
    $sqlSelect = $dbh->prepare(
    "SELECT * FROM computer 
        inner join computer_software  
            on ID_Computer = FID_Computer 
        inner join software
            on FID_Software = ID_Software   WHERE software.name=:soft"
    );
    
    $sqlSelect->execute(array(':soft' => $soft));
    $rez2 = '<?xml version="1.0" encoding="UTF-8"?>';
    $rez2 = $rez2 . "<root>";


    while ($cell = $sqlSelect->fetch()) {
        $Netname = $cell['netname'];
        $Motherboard = $cell['motherboard'];
        $RAM_capacity = $cell['RAM_capacity'];
        $HDD_capacity = $cell['HDD_capacity'];
        $Monitor = $cell['monitor'];
        $Vendor = $cell['vendor'];
        $Guarantee = $cell['guarantee'];
        $rez2 = $rez2 . "<row><netname>$Netname</netname><motherboard>$Motherboard</motherboard><RAM_capacity>$RAM_capacity</RAM_capacity> <HDD_capacity>$HDD_capacity</HDD_capacity><monitor>$Monitor</monitor><vendor>$Vendor</vendor><guarantee>$Guarantee</guarantee>";
    }
    $rez2 = $rez2 . "</root>";
    echo $rez2;
