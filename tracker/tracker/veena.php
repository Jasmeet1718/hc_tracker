<?php
include "conn.php";

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
    <link rel="stylesheet" href="style.css" />
    <title>Task Assign Page</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
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
    <button><a href="logout.php">logout</a></button>
    <?php if($_SESSION["role"] == '9') { ?>
    <a class="btn btn-primary" href="./admin.php">Back</a>
    <?php } ?>
    <h1 class="heading">HC Tracker - Veena</h1>
    <div class="main_contanier">
        <div class="assign_box">
            <div class="task_btn">
                <a href="pendtask.php"><button>Pending Task</button></a> 
                <button>Ongoing Task</button>
                <a href="completev.php"><button>Completed Task</button></a> 
                <button>View your Task</button>
            </div>
            <table>
    <tr>
        <th>Name</th>
        <th>Current Task</th>
        <th>Time Left (in seconds)</th>
    </tr>
<?php
$sql="SELECT * FROM `veena_team`";
$result=mysqli_query($connectDB,$sql);
$i=0;
while($row=mysqli_fetch_assoc($result)){
    $task=$row['task'];
    $sql1="SELECT * FROM `tracker_data`";
    $result1=mysqli_query($connectDB,$sql1);
    while($row1=mysqli_fetch_assoc($result1)){
      if($row1['campaign_name']==$task){
         ?>
        <tr>
            <td><?php echo $row['name']; ?> </td>
            <td><?php echo $row['task']; ?> </td>
            <td style="display:flex;"><p id="demo<?php echo $i ?>"> </p><button style="margin-left:15px;" id="stop<?php echo $i ?>">stop</button></td>
        </tr>
    <script>
        var countDownDate<?php echo $i?> = new Date("<?php echo $row1['create_time'];?>").getTime();
        var newtime<?php echo $i?>=countDownDate<?php echo $i?>+(<?php echo $row['time'];?>*1000);
        var x<?php echo $i?> = setInterval(function() {
            var now = new Date().getTime();
            var distance<?php echo $i?> = newtime<?php echo $i?> - now  ;
            
            if (distance<?php echo $i?> <= 0) {
                distance<?php echo $i?>*=-1;
                if (distance<?php echo $i?> === 0){
                    alert("Time is up submit the project soon");
                }
            };
            document.getElementById("demo<?php echo $i ?>").innerHTML = new Date(distance<?php echo $i?>).toISOString().slice(11, 19);
        }, 1000);
 
 
        document.getElementById("stop<?php echo $i ?>").addEventListener("click",() => {
        clearInterval(x<?php echo $i?>);
            x<?php echo $i?> = 0;
        })
    </script> 
<?php
    }}
     $i++;
}
?>
</table>
        </div>
    </div>
    <?php } ?>
</body>
</html>



        <!-- if($_SESSION["username"] == $row['mail_id']){} -->