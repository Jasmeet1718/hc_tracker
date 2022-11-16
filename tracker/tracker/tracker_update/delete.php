<?php
include "../conn.php";
    $sno=$_GET['sno'];
    $sql="DELETE FROM `hc_templates` WHERE sno=$sno";
    $result=mysqli_query($connectDB,$sql);
    if ($result){
        header("location:index.php");
    }
?>