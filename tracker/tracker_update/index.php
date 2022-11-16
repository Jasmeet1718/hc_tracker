<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HC templates</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav class="navbar navbar-light justify-content-center fs-3 mb-5" style="background-color:#2096f3;color:#fff">
HC templates
</nav>

<div class="container">
    <a href="add_new.php" class="btn btn-dark mb-3">Add New</a><a href="../admin.php" style="margin-left:10px;" class="btn btn-dark mb-3">Back</a>
    <table class="table table-hover text-center">
  <thead class="table-dark">
    <tr>
      <th scope="col">Sno</th>
      <th scope="col">Template</th>
      <th scope="col">Time required(seconds)</th>
      <th scope="col">Type</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <?php
    include "../conn.php";
        $sql="SELECT * FROM `hc_templates`";
        $result=mysqli_query($connectDB,$sql);
        while($row=mysqli_fetch_assoc($result)){
            ?>

      <tr>
       <td><?php echo $row['sno']?></td>
       <td><?php echo $row['template']?></td>
       <td><?php echo $row['time_req']?></td>
       <td><?php echo $row['type']?></td>
      <td>
        <a href="edit.php?sno=<?php  echo $row['sno']?>" class="link-dark"><i class="fa-solid fa-pen-to-square fs-5 me-3"></i></a>
        <a href="delete.php?sno=<?php  echo $row['sno']?>" class="link-dark"><i class="fa-solid fa-trash fs-5"></i></a>
      </td>
    </tr>
    <?php
        }
    ?>
    
    
  </tbody>
</table>
</div>

    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>