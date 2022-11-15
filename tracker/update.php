<?php

include "conn.php";
$id=$_GET['id'];
if(isset($_POST['id'])) {
    $id=$_GET['id'];
}
error_reporting(E_ERROR | E_PARSE);
date_default_timezone_set('Asia/Kolkata');
$time = date('Y-m-d H:i:s');
if(isset($_POST['submit'])){
    $campaign_name=$_POST['campaign_name'];
    $client_name=$_POST['client_name'];
    $agency_name=$_POST['agency_name'];
    $start_date=$_POST['start_date'];
    $current_date=date("Y-m-d H:i:s");
    $diff = (strtotime($start_date) - strtotime($current_date));
    $client_vertical=$_POST['client_vertical'];
    $templates=$_POST['templates'];
    $temp="";  
    foreach($templates as $tem1)  
    {  
       $temp.= $tem1.",";  
    }  
        $sql= " UPDATE `tracker_data` SET `create_time` = '$current_date',`campaign_name` = '$campaign_name' , `client_name` = '$client_name' , `agency_name` = '$agency_name' , `start_date` = '$start_date' , `client_vertical` = '$client_vertical' , `templates` = '$temp' , `time_left` = '$diff'  WHERE id=$id LIMIT 1 ";
      
        if ($diff<=0){
            echo '<script>alert("Check the date you entered")</script>';
        }
        else{
        $result=mysqli_query($connectDB,$sql);
        if($result){
             header("location: select.php?id=$id");
        }
    }
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
    <title>Tracker</title>
</head>
<body>
<style>
        .dropdown-menu{ max-height:250px; overflow:auto;margin-bottom:30px; }
        form{
            margin-left:50px;
        }
    </style>
    <h1 class="heading">HC Tracker</h1>
    <?php 
      $sql="SELECT * FROM `tracker_data` WHERE id=$id LIMIT 1";
      $result=mysqli_query($connectDB,$sql);
      $row=mysqli_fetch_assoc($result);
      $templates=$row['templates'];
    ?>
    <form action="" method="post">
        <label for="campaign_name">Enter Campaign name: </label> <input name="campaign_name" type="text" value="<?php echo $row['campaign_name']?>"><br><br>
        <label for="client_name">Enter Client name: </label> <input name="client_name" type="text" value="<?php echo $row['client_name']?>"><br><br>
        <label for="agency_name">Enter Agency name: </label> <input name="agency_name" type="text" value="<?php echo $row['agency_name']?>"><br><br>
        <label for="start_date">Enter Campaign start date: </label> <input name="start_date" type="datetime-local" value="<?php echo $row['start_date']?>"><br><br>
        <label for="client_vertical">Enter Client Vertical: </label> <input name="client_vertical" type="text" value="<?php echo $row['client_vertical']?>"><br><br>
        <label for="templates">Select templates: </label>
        <?php $sqlc="SELECT DISTINCT `type` FROM hc_templates";
        $resultc=mysqli_query($connectDB,$sqlc); 
        ?> <select name="templates[]" id="templates_drop" multiple="multiple"> <?php
        while($row=mysqli_fetch_assoc($resultc))
        {
            if (strpos($templates,  $row['type'] !== false )) { 
                ?><option selected value="<?php echo $row['type'] ?>"><?php echo $row['type'] ?></option><?php
            }else{
                ?> <option value="<?php echo $row['type'] ?>"><?php echo $row['type'] ?></option> <?php
            }
        }
        ?>
</select>
<br><br>
        <button type="submit" name="submit">Submit</button>
    </form>

    <script>
let $select = $('#templates_drop').multiselect({
  //includeSelectAllOption: false,
  enableFiltering: true,
  includeFilterClearBtn: true,
  enableCaseInsensitiveFiltering: true
  
});
    </script>
</body>
</html>


