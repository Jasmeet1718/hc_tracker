<?php
include "../conn.php";

session_start();

if(!$_SESSION["username"]){
  header("location: login.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../style.css" />
    <title>Task Assign Page</title>
    <style>
        table{
            width: 100%;
            margin: 20px 0;
        }

        table, th, td {
            border: 1px solid black;
            padding:5px;
            /* width:auto; */
        }
    th,td{
        padding:10px;
    }
    </style>
</head>
<body>
    <?php if($_SESSION["role"] == '2' || $_SESSION["role"] == '9') { ?>
    <button><a href="../logout.php">logout</a></button>
    <?php if($_SESSION["role"] == '9') { ?>
    <a class="btn btn-primary" href="../admin.php">Back</a>
    <?php } ?>
    <h1 class="heading">HC Tracker - Veena</h1>
    <div class="main_contanier">
        <div class="assign_box">
            <div class="task_btn">
                <a href="yettoassign_v.php"><button>Yet to assign Task</button></a> 
                <a href="queue_v.php"><button>In queue Task</button></a> 
                <button>Ongoing Task</button>
                <a href="complete_v.php"><button>Completed Task</button></a> 
                <a href="view_v.php"><button>View your Task</button></a>
            </div>
            <table>
    <tr>
        <th>Name</th>
        <th>Current Task</th>
        <th>Time </th>
    </tr>
<?php
$sql="SELECT * FROM `veena_team` WHERE status='1'";
$result=mysqli_query($connectDB,$sql);
$i=0;
while($row=mysqli_fetch_assoc($result)){
    $task=$row['task'];
         ?>
        <tr>
            <td><?php echo $row['name']; ?> </td>
            <td><?php echo $row['task']; ?> </td>
            <td><p id="demo<?php echo $i?>"> </p></td>
        </tr>
    <script>
        var countDownDate<?php echo $i?> = new Date("<?php echo $row['assign_time'];?>").getTime();
        var newtime<?php echo $i?>=countDownDate<?php echo $i?>+(<?php echo $row['time'];?>*1000);
        var x<?php echo $i?> = setInterval(function() {
            var now<?php echo $i?> = new Date().getTime();
            var distance<?php echo $i?> = newtime<?php echo $i?> - now<?php echo $i?>  ;
            
            if (distance<?php echo $i?> <= 0) {
                distance<?php echo $i?>*=-1;
                document.getElementById("demo<?php echo $i ?>").style.color = "red"
            };
            var days=new Date(distance<?php echo $i?>).toISOString().slice(08, 10)-1;
            if (days=="0"){
                document.getElementById("demo<?php echo $i?>").innerHTML =  new Date(distance<?php echo $i?>).toISOString().slice(11, 19);
            }
            else if (days=="01"){
                document.getElementById("demo<?php echo $i?>").innerHTML = days + " Day and " + new Date(distance<?php echo $i?>).toISOString().slice(11, 19);
            }
            else {
                document.getElementById("demo<?php echo $i?>").innerHTML = days + " Days and " + new Date(distance<?php echo $i?>).toISOString().slice(11, 19);
            }
        }, 1000);
    </script> 
<?php
     $i++;
}
?>
</table>
        </div>
    </div>
    <?php } else if($_SESSION["role"] == '0') {
            header("location: ../index.php");
        } else if($_SESSION["role"] == '1') {
            header("location: view_v.php");
        } else if($_SESSION["role"] == '3') {
            header("location: ../garud/view_g.php");
        } else if($_SESSION["role"] == '4') {
            header("location: ../garud/garud.php");
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