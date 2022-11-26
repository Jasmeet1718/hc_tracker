<?php
include "../conn.php";
session_start();
if(!$_SESSION["username"]){
  header("location: login.php");
}

$id=$_GET['id'];
if(isset($_POST['id'])) {
    $id=$_GET['id'];
}
error_reporting(E_ERROR | E_PARSE);
date_default_timezone_set('Asia/Kolkata'); // india time setting 
$time = date('Y-m-d H:i:s');

    if(isset($_POST["submit"])){
        $input1=$_POST['input1'];
        $assets=$_POST['assets-0'];
        $tt=explode(",",$input1);
        for ($i=0;$i<count($tt);$i++){
            $assets.=",".$_POST[$tt[$i]]; 
        }
        // echo $assets;
        $sql101="SELECT * FROM `veena_team` WHERE id = $id";
            $result101=mysqli_query($connectDB,$sql101);
            $row101=mysqli_fetch_assoc($result101);
            $task=$row101["task"];
            $tt=explode("--",$task);
            $task_name=$tt[0];
            $temp_tbd=$tt[1];
            $member=$row101["name"];
            $assign_time=$row101["assign_time"];
            $final_time=date("Y-m-d H:i:s");
            $deviation=strtotime($final_time)-strtotime($assign_time)-$row101["time"];
            if ($deviation<0){
                $deviation=0;
            }
        $sql="UPDATE `assign_task` SET `deviation_v`='$deviation',`status_v`='2',`member`='$member',`assign_time`='$assign_time',`assets`='$assets' WHERE `task_name`='$task_name' AND `temp_tbd`='$temp_tbd' AND `assign_to`='Veena'";
        $result=mysqli_query($connectDB,$sql);
        $sqld="DELETE FROM `veena_team` WHERE id=$id";
        $resultd=mysqli_query($connectDB,$sqld);
        if($result){
            
        }
    
        $assign="SELECT * FROM `hc_templates` WHERE `template`='$temp_tbd'";
        $result_assign=mysqli_query($connectDB,$assign);
        $team=mysqli_fetch_assoc($result_assign);
        $development_assign=$team["development_assign"];
        $time_req_dev=$team["time_req_dev"];
    
        $sqlg="INSERT INTO `assign_task`(`task_name`, `temp_tbd`, `assign_to`, `time_v`, `status_v`,`assign_time`,`assets`) VALUES ('$task_name','$temp_tbd','$development_assign','$time_req_dev','0','$time','$assets')";
        $resultg=mysqli_query($connectDB,$sqlg);
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assets</title>
    <style>
        .box {
            padding: 70px 0;
            text-align: center;
            font-size: 25px;
        }

        /* .submit{
            position: absolute;
            top: 185px;
            left: 658px;
        } */
        .back{
            position: absolute;
            top: 185px;
            left: 830px;
        }
    </style>
</head>

<body>
    <?php 
        $sql="SELECT * FROM veena_team WHERE id='$id'";
        $result=mysqli_query($connectDB,$sql);
        $row=mysqli_fetch_assoc($result);
         ?>
    <div class="box">
        <form action="" method="post">
        <div class="text">You have completed <span style="color:red"><?php echo $row["task"] ?></span></div>
        <div class="text">please share the link for assets</div>
        <input name="assets-0" type="text" placeholder="Please put asset link">
        <div id="asi"></div>
        <input type="hidden" id="test1" name="input1" >
        <br>
        <button style="margin-top:30px" name="submit" class="submit">submit</button>
        </form>
        <button style="margin-top:30px"><a href="view_v.php">back</a></button>
        <button id="add" style="margin-top:30px" onclick="adint()" >Add input</button>
    </div>


    <script>
var j=1;
function adint(){
    var assets = document.createElement('input');
           assets.type = 'text';
           assets.placeholder = 'DCO:url';
            assets.name = "col"+j;
           assets.id = "col"+j;
    document.getElementById("asi").appendChild(assets);

    j++;
    var clients = document.getElementById('asi');
let children = clients.children;
var values = [];
for(var i = 0;i<=children.length-1;i++)
{
    values.push(children[i].name);
}
console.log(values);
document.getElementById('test1').value=values;
}
    </script>
</body>

</html>
