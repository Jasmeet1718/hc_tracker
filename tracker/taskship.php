<?php
include "conn.php";
session_start();
if(!$_SESSION["username"]){
  header("location: login.php");
}

error_reporting(E_ERROR | E_PARSE);
date_default_timezone_set('Asia/Kolkata'); // india time setting 
$time = date('Y-m-d H:i:s');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task to ship</title>

    <style>
        h3{
            text-align: center;
        }

        table{
            width: 80%;
            margin: 20px auto;
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
   <h3>Task To Ship</h3>
   <table>
        <thead>
            <tr>
                <th>Task Name</th>
                <th>Previews</th>
                <th>Adtags</th>
            </tr>
        </thead>
   <?php 
        $sql="SELECT * FROM `assign_task` WHERE status_v = '0' AND assign_to='Gati'";
        $result=mysqli_query($connectDB,$sql);
        while($row=mysqli_fetch_assoc($result)){
            ?>
                <tbody>
                    <tr>
                        <td><?php echo $row['task_name']; ?>--<?php echo $row['temp_tbd']; ?></td>
                        <td><a href="<?php echo $row['previews']; ?>">URL</a></td>
                        <td><a href="<?php echo $row['adtags']; ?>">URL</a></td>
                        <form method="post">
                            <td><button type="submit" name="submit-<?php echo $row['id']; ?>">Shipped</button></td>
                        </form>
                    </tr>
                </tbody>
            <?php
            if(isset($_POST['submit-'.$row["id"]])){
                $name=$_SESSION['name'];
                $id=$row['id'];
                $sqls="UPDATE `assign_task` SET `deviation_v`='NA',`status_v`='2',`member`='$name' WHERE `id`='$id' AND `assign_to`='Gati'";
                $results=mysqli_query($connectDB,$sqls);
            }
        }
   ?>
    </table>
</body>

</html>
