<?php
include "conn.php";
$id=$_GET['id'];
if(isset($_POST['id'])) {
    $id=$_GET['id'];
}
error_reporting(E_ERROR | E_PARSE);
if(isset($_POST['send'])){
    $sql10="SELECT * FROM `tracker_data` WHERE id = $id LIMIT 1";
      $result10=mysqli_query($connectDB,$sql10);
      $row10=mysqli_fetch_assoc($result10);
    $campaign_name=$row10['campaign_name'];
    $tempmade=$row10['tempmade'];
    $str_arr100=explode(",",$tempmade);
    $sql11="SELECT * FROM `hc_templates`";
    $result11=mysqli_query($connectDB,$sql11);
    while($row11=mysqli_fetch_assoc($result11)){
        
        if(strpos($tempmade, $row11['template']  )!== false){
             $time_req_veena= $row11['time_req_veena']; 
        }
    }
    
    $template=$row11['template'];

    $resultmin= mysqli_query($connectDB,"SELECT MIN(time) AS minimum FROM veena_team");

$rowmin = mysqli_fetch_assoc($resultmin); 

$minimum = $rowmin['minimum'];
$sqlven="SELECT * FROM veena_team";
$resultven=mysqli_query($connectDB,$sqlven); 
while($row=mysqli_fetch_assoc($resultven)){
    if ($row["task"]==""){
        $free = $row["name"];
    } else{
        if ($row['time']==$minimum){
            $free = $row["name"];
        }
    }
}; 
    $sqlv= " UPDATE `veena_team` SET `task` = '$campaign_name',`time`='$time_req_veena' WHERE name='$free' LIMIT 1 ";
    $resultv=mysqli_query($connectDB,$sqlv);
    if($resultv){
        echo $i;
    }
    else{
        echo "Failed: ".mysqli_error($connectDB);
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
    <form action="" method="post">
    <?php 
      $sql="SELECT * FROM `tracker_data` WHERE id=$id LIMIT 1";
      $result=mysqli_query($connectDB,$sql);
      $row=mysqli_fetch_assoc($result);
      $campaign_name = $row['campaign_name'];
    //   $time_req = $row['time_req'];
      $tempmade=$row['tempmade'];
      ?><button onclick="location='./'">Back</button> <?php
    ?> 
    <br>
    <div>
        <?php $str_arr = explode(",",$tempmade);?>
        <h4>You have choosen the following <?php echo count($str_arr)-1 ?> templates :- </h4>
        <?php 
        $i=0;
        while ($i+1<count($str_arr)){
            ?> <ul>
                <li><?php echo $str_arr[$i]?></li>
            </ul> <?php 
            $i++;
        } 
        ?>
        <br><button type="submit" name="send">
            Send mail
        </button>
        </form>
    </div>
    
</body>
</html>