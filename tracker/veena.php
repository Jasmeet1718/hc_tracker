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
         ?><tr>
        <td><?php echo $row['name']; ?> </td>
    <td><?php echo $row['task']; ?> </td>
    <td><p id="demo<?php echo $i ?>"> </p><button id="stop<?php echo $i ?>">stop</button></td> 
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
</script> <?php
      }
    }
     $i++;
}
?>
</table>


</body>
</html>