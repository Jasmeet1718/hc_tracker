<?php
include "../conn.php";
session_start();
if(!$_SESSION["username"]){
    header("location: login.php");
}
error_reporting(E_ERROR | E_PARSE); //warning hat jaati hai 
date_default_timezone_set('Asia/Kolkata'); // india time setting 
$time = date('Y-m-d H:i:s');

$sql100="SELECT * FROM `assign_task` WHERE status_v = '0' ";
        $result100=mysqli_query($connectDB,$sql100);
        while($row100=mysqli_fetch_assoc($result100)){
            $id100='submit'.$row100['id'];
            $id101=$row100['id'];
if(isset($_POST[$id100])){
    $sql101="SELECT * FROM `assign_task` WHERE id = $id101 ";
        $result101=mysqli_query($connectDB,$sql101);
        $row101=mysqli_fetch_assoc($result101);
        $task101=$row101['task_name']."-".$row101['temp_tbd'];
        $time_v=$row101['time_v'];
    $members=$_POST['members'];
    $sql300="SELECT * FROM `user` WHERE team='Veena' AND name='$members' LIMIT 1" ;
                $result300=mysqli_query($connectDB,$sql300);
                $row300=mysqli_fetch_assoc($result300);
                $username=$row300['username'];
                $current_date=date("Y-m-d H:i:s");
    $sql_assign="INSERT INTO `veena_team`(`name`,`task`,`time`,`mail_id`,`status`,`assign_time`) VALUES ('$members','$task101','$time_v','$username','0','$current_date')";
    $result_assign=mysqli_query($connectDB,$sql_assign);
    $sql_as="UPDATE `assign_task` SET `status_v`='1' WHERE id='$id101'";
    $result_as=mysqli_query($connectDB,$sql_as);
}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../style.css">
    <title>Yet to assign Task</title>
</head>
<body>
    <?php if($_SESSION["role"]==='6' || $_SESSION["role"]==='9'){ ?>
    <button><a href="./nischay.php">Back</a></button>
    <h1 class="heading">Yet to assign Task</h1>
    <style>
        table{
            width: 80%;
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
<table>
    <tr>
        <th>
            Task name 
        </th>
        <th>
            Template 
        </th>
        <th>
            Time given 
        </th>
        <th>
            Members  
        </th>
    </tr>

    <?php 
        $sql="SELECT * FROM `assign_task` WHERE status_v = '0' ";
        $result=mysqli_query($connectDB,$sql);
        while($row=mysqli_fetch_assoc($result)){
            ?>
            <tr>
                <td>
                    <?php echo $row['task_name'] ?>
                </td>
                <td>
                    <?php echo $row['temp_tbd'] ?>
                </td>
                <td>
                <?php echo gmdate("H:i:s", $row['time_v']);   ?>
                </td>
                <td> 
                    <form action="" method="post">
                <select name="members" id="members">
                <?php $sql5="SELECT * FROM `user` WHERE team='Veena'" ;
                $result5=mysqli_query($connectDB,$sql5);
                while($row5=mysqli_fetch_assoc($result5)){ ?>
                        <option value="<?php echo $row5['name'] ?>"><?php echo $row5['name'] ?></option>
               <?php }?>
               </select>
               <button type="submit" name="submit<?php echo $row['id'] ?>">Submit</button>
               </form>
            </td>
            </tr> 
            <?php
        }
    ?>

</table>
<?php } else if($_SESSION["role"] == '0') {
            header("location: ../index.php");
        } else if($_SESSION["role"] == '1') {
            header("location: view_v.php");
        } else if($_SESSION["role"] == '3') {
            header("location: ../garud/view_g.php");
        } else if($_SESSION["role"] == '2') {
            header("location: ../veena/veena.php");
        } else if($_SESSION["role"] == '5') {
            header("location: ../nischay/view_n.php");
        } else if($_SESSION["role"] == '4') {
            header("location: ../garud/garud.php");
        } else if($_SESSION["role"] == '7') {
            header("location: ../lakshya/view_l.php");
        }
        ?>
</body>
</html>