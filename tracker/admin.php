<?php
include "conn.php";

session_start();

if(!$_SESSION["username"] || $_SESSION["role"] !== '9'){
  header("location: login.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
  <link rel="stylesheet" href="style.css">
    
    <title>Admin</title>
</head>
<body>
    <button><a href="logout.php">logout</a></button>
<h1 class="heading">HC tracker - Admin page</h1>
    <div class="box">
        <div class="admin-box">
        <a class="btn btn-success ad-btn" href="./index.php">Gati</a><br>
        <a class="btn btn-success ad-btn" href="veena/veena.php">Veena</a><br>
        <a class="btn btn-success ad-btn">Garud</a><br>
        <a class="btn btn-success ad-btn">Nischay</a><br>
        <a class="btn btn-success ad-btn">Lakshya</a><br>
            <a class="btn btn-danger ad-btn" href="./tracker_update">Add/edit templates </a>
        </div>
    </div>
</body>
</html>