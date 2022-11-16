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
  $tempmade=$_POST['tempmade'];
    
    // $temp1="";  
    foreach($tempmade as $tem2)  
    { 
        {$temp1.=$tem2.",";}  
        $sqlF=" UPDATE `tracker_data` SET `tempmade` = '$temp1' WHERE id=$id LIMIT 1 ";
       
        $resultF=mysqli_query($connectDB,$sqlF);
        
        $sql11="SELECT * FROM `hc_templates` WHERE `template` = '$tem2' LIMIT 1";
    $result11=mysqli_query($connectDB,$sql11);
    $row11=mysqli_fetch_assoc($result11);
    $time_req_veena=$row11["time_req_veena"];
    $sql_assign="INSERT INTO `assign_task`(`task_name`,`temp_tbd`,`assign_to`,`time_v`,`status_v`) VALUES ('$campaign_name','$tem2','Veena','$time_req_veena','0')";
    $result_assign=mysqli_query($connectDB,$sql_assign);
    } 
    if($result_assign){
        header("location: endpage.php?id=$id");
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
    <title>templates</title>
</head>
<body>
<h1 class="heading">HC Tracker</h1>
    
    <?php 
      $sql="SELECT * FROM `tracker_data` WHERE id=$id LIMIT 1";
      $result=mysqli_query($connectDB,$sql);
      $row=mysqli_fetch_assoc($result);
      $sql1="SELECT * FROM `hc_templates`";
      $result1=mysqli_query($connectDB,$sql1);
      ?><button onclick="location='./update.php?id=<?php echo $row['id']?>'">Back</button> <?php
    ?>
    <br>
    <div>
        <h4>Please select the templates you want to choose from :- </h4>
        <form action="" method="post">
        <?php 
        while ($row1 = mysqli_fetch_array($result1)){
            if (strpos($row['templates'], $row1['type']) !== false ){
                if ($row1['time_req']<=$row['time_left']) { 
                    if (strpos($row['tempmade'], $row1['template'] !== false)){
                        ?><input checked type="checkbox" name="tempmade[]" value="<?php echo $row1['template']; ?>"><?php echo $row1['template'];?><br>
                    <?php }
                    else{
                    ?> <input type="checkbox" name="tempmade[]" value="<?php echo $row1['template']; ?>"><?php echo $row1['template']; ?><br> <?php
                }
            }
        }
    } 
        ?>
        <br><button type="submit" name="submit">
            check
        </button>

        </form>
    </div>
    
</body>
</html>