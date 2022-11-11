<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tracker";
$connectDB = mysqli_connect($servername,$username,$password,$dbname);
if (!$connectDB){
    die("Sorry we failed to connect: ". mysqli_connect_error());
}

?>