<?php
include "../conn.php";
$sno=$_GET['sno'];

if(isset($_POST['submit'])){
    $template=$_POST['template'];
    $time_req_veena=$_POST['time_req_veena'];
    $time_req_dev=$_POST['time_req_dev'];
    $time_req=$_POST['time_req'];
    $type=$_POST['type'];
    $development_assign=$_POST['development_assign'];

    $sql="UPDATE `hc_templates` SET `template`='$template',`time_req_veena`='$time_req_veena',`time_req_dev`='$time_req_dev',`time_req`='$time_req',`type`='$type',`development_assign`='$development_assign' WHERE sno=$sno";
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
    <title>HC templates-edit</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav class="navbar navbar-light justify-content-center fs-3 mb-5" style="background-color:#2096f3;color:#fff">
HC templates-edit
</nav>

<div class="container">
    <div class="text-center mb-4">
        <h3>
            Edit Template
        </h3>
        <p class="text-muted">
            Click Update after changing any information
        </p>
    </div>
<?php 
$sql="SELECT * FROM `hc_templates` WHERE sno=$sno LIMIT 1";
$result=mysqli_query($connectDB,$sql);
$row=mysqli_fetch_assoc($result);
?>
    <div class="container d-flex justify-content-center">
        <form action="" method="post" style="width:50vw;min-width:300px;">
            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">Template</label>
                    <input type="text" class="form-control" name="template" value="<?php echo $row['template']?>">
                </div>
                <div class="col">
                    <label class="form-label">Time Require</label>
                    <input type="text" class="form-control" name="time_req" value="<?php echo $row['time_req']?>">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">Time required by Veena team(seconds)</label>
                    <input type="text" class="form-control" name="time_req_veena" value="<?php echo $row['time_req_veena']?>">
                </div>
                <div class="col">
                    <label class="form-label">Time required by Development team(seconds)</label>
                    <input type="text" class="form-control" name="time_req_dev" value="<?php echo $row['time_req_dev']?>">
                </div>
            </div>
            <div class="row mb-3">
            <div class="col">
                <label class="form-label">Type</label>
                <input type="text" class="form-control" name="type"  value="<?php echo $row['type']?>">
            </div>
                <div class="col">
                    <label class="form-label">Development team(Garud/Nischay)</label>
                    <input type="text" class="form-control" name="development_assign" value="<?php echo $row['development_assign']?>">
                </div>
            </div>
            <div>
                <button type="submit" class="btn btn-success" name="submit">Update</button>
                <a href="index.php" class="btn btn-danger">Cancel</a>
            </div>
        </form>
    </div>

</div>

    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>