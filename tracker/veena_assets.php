<?php
include "conn.php";
session_start();

if(!$_SESSION["username"]){
  header("location: login.php");
}
error_reporting(E_ERROR | E_PARSE);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Upload assets</title>
</head>
<body>
<h1 class="heading">HC tracker - Veena</h1>
<br>
<label for="assets">Please upload the assets for the Creative</label> <input name="assets" type="text"> 
</body>
</html>