<?php
include "conn.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Send mail</title>
</head>
<body>
    <style>
        table, th, td {
  border: 1px solid black;
  padding:5px;
  width:auto;
}
th,td{
    
    padding:10px;
}
    </style>
<h1 class="heading">HC tracker - Veena</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Current Task</th>
        <th>Time Left</th>
    </tr>
<?php
$sql="SELECT * FROM `veena_team`";
$result=mysqli_query($connectDB,$sql);

while($row=mysqli_fetch_assoc($result)){
    
    ?>
    <tr>
        <td><?php echo $row['name']; ?> </td>
    <td><?php echo $row['task']; ?> </td>
    <td><?php echo $row['time']; ?> </td>
    </tr>
    <?php
}
?>
</table>
</body>
</html>
