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
    <a class="btn btn-danger" href="../logout.php">logout</a>
    <a class="btn btn-primary" href="./veena.php">Back</a> 
    <h1 class="heading">In queue task</h1>
    <div class="main_contanier">
        <div class="assign_box">
            <table>
    <tr>
        <th>Name</th>
        <th>Current Task</th>
        <th>Time </th>
    </tr>
<?php
$sql="SELECT * FROM `veena_team` WHERE status='0'";
$result=mysqli_query($connectDB,$sql);
$i=0;
while($row=mysqli_fetch_assoc($result)){
    $task=$row['task'];
         ?>
        <tr>
            <td><?php echo $row['name']; ?> </td>
            <td><?php echo $row['task']; ?> </td>
            <td><?php echo gmdate("H:i:s", $row['time']); ?> </p></td>
        </tr> 
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