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
    <link rel="stylesheet" href="../style.css">
    <title>Completed Task</title>
</head>
<body>
<button>
    <?php if($_SESSION["role"]==='6' || $_SESSION["role"]==='9'){ ?>
    <a href="./nischay.php">Back</a></button>
    <h1 class="heading">Completed Task</h1>
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
    </tr>

    <?php 
        $sql="SELECT * FROM `assign_task` WHERE status_v = '2' AND assign_to='Nischay' ";
        $result=mysqli_query($connectDB,$sql);
        while($row=mysqli_fetch_assoc($result)){
            ?>
            <tr class="tbrow">
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
                <?php echo gmdate("H:i:s", $row['deviation_v']);   ?>
                </td>
                <td>
                <?php echo  $row['member'];  ?>
                </td>
                <td>
                <?php echo $row['previews'];  ?>
                </td>
                <td>
                <?php echo $row['adtags'];  ?>
                </td>
            </tr> 
            <?php
        }
    ?>

</table>
<div id="pagination"></div>
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

<script>
    var items = $("#table_id .tbrow");
  console.log(items.length)
  var numItems = items.length;
    var perPage = 10;
    items.slice(perPage).hide();

    console.log($('#pagination'));
    $('#pagination').pagination({
        items: numItems,
        itemsOnPage: perPage,
        prevText: "",
        nextText: "",
        onPageClick: function (pageNumber) {
            var showFrom = perPage * (pageNumber - 1);
            var showTo = showFrom + perPage;
            items.hide().slice(showFrom, showTo).show();
            }
        });
</script>
</body>
</html>