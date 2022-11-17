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
    <title>Veena</title>

    <style>
        .box {
            text-align: center;
            justify-content: center;
            align-items: center;
        }
        .box2 {
            text-align: center;
            justify-content: center;
            align-items: center;
            margin-top: 80px;
        }

        td,
        th {
            border: 2px solid #dddddd;
            padding: 8px;
        }

        .table {
            margin-left: auto;
            margin-right: auto;
        }

        .submit {
            position: absolute;
            right: 300px;
            top: 160px;
        }
    </style>
</head>

<body>
    <?php if($_SESSION["role"]==='2'){
         ?> <button><a href="./veena.php">Back</a></button> 
        <?php }
       else if($_SESSION["role"]==='1'){ ?> <button><a href="./logout.php">Logout</a></button> <?php } 
    $mail_id=$_SESSION["username"] ?>
    <div class="box">
        <h1 class="heading">Veena Team</h1>
        <table class="table">
            <tr>
                <th>Task assigned</th>
                <th>Countdown ETA</th>
                <th>Time after ETA/deviation</th>
            </tr>
        <?php 
        $sqlv="SELECT * FROM veena_team WHERE mail_id='$mail_id' AND status='1'";
        $resultv=mysqli_query($connectDB,$sqlv);
        $i=0;
        while($rowv=mysqli_fetch_assoc($resultv)){
            $task=$rowv['task'];
            $assign_time=$rowv['assign_time'];
        ?>
        
            <tr>
                <td><?php echo $task ?></td>
                <td id="timer1-<?php echo $i ?>">00:00:00</td>
                <td id="timer2-<?php echo $i ?>">00:00:00</td>
            </tr>
            <script>
        var countDownDate<?php echo $i?> = new Date("<?php echo $rowv['assign_time'];?>").getTime();
        var newtime<?php echo $i?>=countDownDate<?php echo $i?>+(<?php echo $rowv['time'];?>*1000);
        var x<?php echo $i?> = setInterval(function() {
            var now<?php echo $i?> = new Date().getTime();
            var distance<?php echo $i?> = newtime<?php echo $i?> - now<?php echo $i?>  ;
            
            if (distance<?php echo $i?> <= 0) {
                distance<?php echo $i?>*=-1;
                document.getElementById("timer2-<?php echo $i ?>").innerHTML =new Date(distance<?php echo $i ?>).toISOString().slice(11, 19);
            document.getElementById("timer2-<?php echo $i ?>").style.color = "red";
        } else {
            document.getElementById("timer1-<?php echo $i ?>").innerHTML =new Date(distance<?php echo $i ?>).toISOString().slice(11, 19);
        }
    }, 1000);dt.getDay()
    </script> 
            
            <?php
            $i++;
    }
    ?>
        </table>

        <a href="asset_v.php"> <button class="submit">Submit</button></a>
    </div>

    <div class="box2">
        <h2>Task in queue</h2>
        <table class="table">
            <tr>
                <th>Task pending</th>
                <th>Time given</th>
                <th>click to start</th>
            </tr>
            <form method="post">
            <?php $sqlvp="SELECT * FROM veena_team WHERE mail_id='$mail_id' AND status='0'";
        $resultvp=mysqli_query($connectDB,$sqlvp);
        $j=0;
        while($rowvp=mysqli_fetch_assoc($resultvp)){
            $taskp=$rowvp['task'];
            $timep=$rowvp['time'];
            $idp=$rowvp['id'];
        ?>
            <tr>
                <td><?php echo $taskp ?></td>
                <td><?php echo gmdate("H:i:s", $timep)  ?></td>
                
                <td><button name="start<?php echo $idp ?>">Start</button></td>
                </form>
                <?php 
                $str="start".$idp;
                if(isset($_POST[$str])){
                    
                    $sqlu="UPDATE `veena_team` SET `status`='1' WHERE id=$idp";
                    $resultu=mysqli_query($connectDB,$sqlu);
                }
                ?>
            </tr>
       <?php } ?> 

        </table>

    </div>
    
</body>


</html>