<?php
    include('connect_to_bd.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lab1</title>
    
    <link href="stl.css" rel="stylesheet" type="text/css">
</head>
</body>
<div class="wrapper">
       
    <select name="comp_cpu" id="comp_cpu">
        <?php
            $sqlSelect = "SELECT * FROM processor";
            foreach($dbh->query($sqlSelect) as $cell){
                echo "<option>";
                print_r($cell['name']);
                echo "</option>";
            }    
        ?>
    </select>
    <input class="button btn" type="button" value="Get information" onclick="getText()">
    

       
           <select name="soft" id="soft">
           <?php
                $sqlSelect = "SELECT * FROM software";
                foreach($dbh->query($sqlSelect) as $cell){
                    echo "<option>";
                    print_r($cell['name']);
                    echo "</option>";
                }    
            ?>
           </select>
           <input class="button btn" type="button" value="Get information" onclick="getXML()">
   

      
           <input class="button btn" name="warranty" id="warranty"  type="button" value="Get computers out of warranty" onclick="getJSON()">
    

   </div>

<div id="res">
    
</div>
<script src = "func_ajax.js"></script>
</body>
</html>

