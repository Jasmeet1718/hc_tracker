<?php
include "conn.php";

session_start();
if(!$_SESSION["username"]){
  header("location: login.php");
}

$id=$_GET['id'];
if(isset($_POST['id'])) {
    $id=$_GET['id'];
}
error_reporting(E_ERROR | E_PARSE);
if(isset($_POST['send'])){
    
    
};


?>

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Send mail</title>
</head>
<body>
<h1 class="heading">Send mail</h1>
    <form action="" method="post">
      <button onclick="location='../'">Back</button> 
    <br>
    <div>
        <h4>You have selected the following templates:- </h4>
        <?php
        $sql10="SELECT * FROM `tracker_data` WHERE id = $id LIMIT 1";
        $result10=mysqli_query($connectDB,$sql10);
        $row10=mysqli_fetch_assoc($result10);
      $campaign_name=$row10['campaign_name'];
      $sql11="SELECT * FROM `assign_task` WHERE task_name='$campaign_name'";
      $result11=mysqli_query($connectDB,$sql11);
          while($row11=mysqli_fetch_assoc($result11)){
            ?>
            <ul>
                <li>
                    <?php echo $row11["temp_tbd"] ?>  
                </li>
            </ul>
            <?php
        }
        ?>
        <br><button type="submit" name="send">
            Send mail
        </button>
        </form>
    </div>
    
</body>
</html>