<?php
include "../conn.php";
if(isset($_POST['submit'])){
    $template=$_POST['template'];
    $time_req=$_POST['time_req'];
    $type=$_POST['type'];

    $sql="INSERT INTO `hc_templates`(`template`, `time_req`, `type`) VALUES ('$template','$time_req','$type')";
    $result=mysqli_query($connectDB,$sql);

    if($result){
        header("Location: index.php");
    }
    else{
        echo "Failed: ".mysqli_error($conn);
    }
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HC templates add</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav class="navbar navbar-light justify-content-center fs-3 mb-5" style="background-color:#2096f3;color:#fff">
HC templates - Add data
</nav>

<div class="container">
    <div class="text-center mb-4">
        <h3>
            Add New template
        </h3>
        <p class="text-muted">
            Fill the form to add new template
        </p>
    </div>

    <div class="container d-flex justify-content-center">
        <form action="" method="post" style="width:50vw;min-width:300px;">
            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">Template</label>
                    <input type="text" class="form-control" name="template">
                </div>
                <div class="col">
                    <label class="form-label">Time Required (seconds)</label>
                    <input type="text" class="form-control" name="time_req" >
                </div>
            </div>
            <div class="mb-3">
                <label class="form-label">Type</label>
                <input type="text" class="form-control" name="type" >
            </div>
            <div>
                <button type="submit" class="btn btn-success" name="submit">Save</button>
                <a href="index.php" class="btn btn-danger">Cancel</a>
            </div>
        </form>
    </div>

</div>

    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>