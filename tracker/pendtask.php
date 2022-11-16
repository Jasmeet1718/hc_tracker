<?php
include "conn.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css">
    <title>Pending Task</title>
</head>
<body>
    <h1 class="heading">Pending Task</h1>
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
                <select name="members" id="members">
                <?php $sql5="SELECT * FROM `veena_team`" ;
                $result5=mysqli_query($connectDB,$sql5);
                while($row5=mysqli_fetch_assoc($result5)){ ?>
                        <option value="<?php echo $row5['name'] ?>"><?php echo $row5['name'] ?></option>
               <?php }?>
               </select>
            </td>
            </tr> 
            <?php
        }
    ?>

</table>
</body>
</html>