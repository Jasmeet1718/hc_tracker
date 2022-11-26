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

if(isset($_POST['submit'])){

    $sql10="SELECT * FROM `tracker_data` WHERE id = $id LIMIT 1";
    $result10=mysqli_query($connectDB,$sql10);
    $row10=mysqli_fetch_assoc($result10);
  $campaign_name=$row10['campaign_name'];
  $tempmade=$row10['tempmade'];

  $ttt=explode("," , $tempmade);
  for ($i=0; $i<((count($ttt))-1);$i++){
    $sql11="SELECT * FROM `hc_templates` WHERE `template` = '$ttt[$i]' LIMIT 1";
    $result11=mysqli_query($connectDB,$sql11);
    $row11=mysqli_fetch_assoc($result11);
    $time_req_veena=$row11["time_req_veena"];
    $sql_assign="INSERT INTO `assign_task`(`task_name`,`temp_tbd`,`assign_to`,`time_v`,`status_v`) VALUES ('$campaign_name','$ttt[$i]','Veena','$time_req_veena','0')";
    $result_assign=mysqli_query($connectDB,$sql_assign);
    } 
    if($result_assign){
        header("location:index.php");
    }
}
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
    <form method="post">
      <button><a href="./">Back</a></button> 
    <br>
    <div>
        <h4>You have selected the following templates:- </h4>
        <?php
        $sql10="SELECT * FROM `tracker_data` WHERE id = $id LIMIT 1";
        $result10=mysqli_query($connectDB,$sql10);
        $row10=mysqli_fetch_assoc($result10);
            $temps=$row10["tempmade"]; 
            $tt=explode(",",$temps);
            ?>
            <ul>
            <?php
            
            for ($i=0; $i<((count($tt))-1);$i++){
                ?> <li>
                    <?php echo $tt[$i] ?>
                </li><?php
            
            }
            ?>
            </ul>     
        <br>
        <button type="submit" name="submit">
            Send mail
        </button>
        </form>
    </div>
    
</body>
</html>