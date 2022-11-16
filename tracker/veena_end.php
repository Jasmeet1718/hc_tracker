<?php
include "conn.php";
    $id=$_GET['id'];
    $sql="UPDATE `veena_team` SET `task`='' ,`time`='0' WHERE id=$id LIMIT 1";
    $result=mysqli_query($connectDB,$sql);
    
?>