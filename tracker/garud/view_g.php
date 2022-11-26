<?php
include "../conn.php";
session_start();
if(!$_SESSION["username"]){
    header("location: ../login.php");
}
error_reporting(E_ERROR | E_PARSE); 

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garud</title>

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

        .tables {
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
<?php if($_SESSION["role"]==='4' || $_SESSION["role"]==='3' || $_SESSION["role"]==='9'){
        if($_SESSION["role"]==='4' || $_SESSION["role"]==='9'){
            ?> <button><a href="./garud.php">Back</a></button> 
            <?php
        }
        else if($_SESSION["role"]==='3'){ ?> <button><a href="../logout.php">Logout</a></button> <?php }
        
    $mail_id=$_SESSION["username"] ?>
    <div class="box">
        <h1 class="heading">Garud Team</h1>
        <table class="tables">
            <tr>
                <th>Task assigned</th>
                <th>Assets Link</th>
                <th>Countdown ETA</th>
                <th>Time after ETA/deviation</th>
            </tr>
        <?php 
        $sqlv="SELECT * FROM garud_team WHERE mail_id='$mail_id' AND status='1'";
        $resultv=mysqli_query($connectDB,$sqlv);
        $i=0;
        while($rowv=mysqli_fetch_assoc($resultv)){
            $task=$rowv['task'];
            $assign_time=$rowv['assign_time'];
            $submit_id=$rowv['id'];
            $tt=explode("--",$task);
        $task_name2=$tt[0];
        $temp_tbd2=$tt[1];
            $sql17="SELECT * FROM assign_task WHERE assign_to='Garud' AND task_name='$task_name2' AND temp_tbd='$temp_tbd2'";
        $result17=mysqli_query($connectDB,$sql17);
        $row17=mysqli_fetch_assoc($result17);
        $assets=$row17['assets'];
        ?>
        
            <tr>
                <td><?php echo $task ?></td>
                <td>
                <?php 
                    $ttt=explode(",",$assets);
                    for ($i=0;$i<count($ttt);$i++){ 
                        $link=explode(">>",$ttt[$i]);
                        $linkof=$link[0];
                        $url=$link[1];
                        ?>
                        <a href="<?php echo $url ?>"><?php echo $linkof ?></a>
                        <?php
                    } ?>
                </td>
                <td id="timer1-<?php echo $i ?>">00:00:00</td>
                <td id="timer2-<?php echo $i ?>">00:00:00</td>
                <td><a href="prev_ads_g.php?id=<?php echo $submit_id ?>"><button name="deviation">Submit</button></a></td>
            </tr>
        <?php 
        ?>
            <script>
        var countDownDate<?php echo $i?> = new Date("<?php echo $rowv['assign_time'];?>").getTime();
        var newtime<?php echo $i?>=countDownDate<?php echo $i?>+(<?php echo $rowv['time'];?>*1000);
        var x<?php echo $i?> = setInterval(function() {
            var now<?php echo $i?> = new Date().getTime();
            var distance<?php echo $i?> = newtime<?php echo $i?> - now<?php echo $i?>;
            if (distance<?php echo $i?> <= 0) {
                distance<?php echo $i?>*=-1;
                document.getElementById("timer2-<?php echo $i ?>").innerHTML =new Date(distance<?php echo $i ?>).toISOString().slice(11, 19);
            document.getElementById("timer2-<?php echo $i ?>").style.color = "red";
        } else {
            document.getElementById("timer1-<?php echo $i ?>").innerHTML =new Date(distance<?php echo $i ?>).toISOString().slice(11, 19);
        }
    }, 1000);
    
    </script> 

            
            <?php
            $i++;
    }
    
    ?>
        </table>
    </div>

    <div class="box2">
        <h2>Task in queue</h2>
        <table class="tables">
            <tr>
                <th>Task pending</th>
                <th>Assets Link</th>
                <th>Time given</th>
                <th>click to start</th>
            </tr>
            
            <?php $sqlvp="SELECT * FROM garud_team WHERE mail_id='$mail_id' AND status='0'";
        $resultvp=mysqli_query($connectDB,$sqlvp);
        $j=0;
        while($rowvp=mysqli_fetch_assoc($resultvp)){
           ?> <form method="post"> <?php
            $taskp=$rowvp['task'];
            $timep=$rowvp['time'];
            $idp=$rowvp['id'];
            $sername=$_SESSION['name'];
            $tt=explode("--",$taskp);
        $task_name=$tt[0];
        $temp_tbd=$tt[1];
            $sql1718="SELECT * FROM assign_task WHERE assign_to='Garud' AND task_name='$task_name' AND temp_tbd='$temp_tbd'";
        $result1718=mysqli_query($connectDB,$sql1718);
        $row1718=mysqli_fetch_assoc($result1718);
        $assets=$row1718['assets'];
        ?>
            <tr>
                <td><?php echo $taskp ?></td>
                <td>
                <?php 
                    $tttt=explode(",",$assets);
                    for ($i=0;$i<count($tttt);$i++){ 
                        $link=explode(">>",$tttt[$i]);
                        $linkof=$link[0];
                        $url=$link[1];
                        ?>
                        <a href="<?php echo $url ?>"><?php echo $linkof ?></a>
                        <?php
                    } ?>
                </td>
                <td><?php echo gmdate("H:i:s", $timep)  ?></td>
                <td><button type="submit" name="start<?php echo $idp ?>">Start</button></td>
                </form>
                <?php 
                $str="start".$idp;
                if(isset($_POST[$str])){
                    $sql100="SELECT * FROM `garud_team` WHERE name='$sername'";
                $result100=mysqli_query($connectDB,$sql100);
                $u="";
                while($row100=mysqli_fetch_assoc($result100)){
                    $u.=$row100["status"].",";
                }
                if(strpos($u, "1") !== false){
                    ?> <script>alert("Complete your on going task")</script> <?php
                 }
                 else{
                     $sqlu="UPDATE `garud_team` SET `status`='1' WHERE id=$idp";
                 $resultu=mysqli_query($connectDB,$sqlu);
                 if($resultu){
                    header("location: view_g.php");
                 }
                 }
            }
                ?>
            </tr>
       <?php } ?> 

        </table>

    </div>

    <?php } else if($_SESSION["role"] == '0') {
            header("location: ../index.php");
        } else if($_SESSION["role"] == '1') {
            header("location: ../veena/view_v.php");
        } else if($_SESSION["role"] == '2') {
            header("location: ../veena/veena.php");    
        } else if($_SESSION["role"] == '5') {
            header("location: ../nischay/view_n.php");
        } else if($_SESSION["role"] == '6') {
            header("location: ../nischay/nischay.php");
        } else if($_SESSION["role"] == '7') {
            header("location: ../lakshya/view_l.php");
        } 
         ?>
    
</body>


</html>