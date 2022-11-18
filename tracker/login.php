
<?php 
include_once 'conn.php';
session_start();

if(isset($_SESSION["username"]) && $_SESSION['role'] === '2'){
  header("location: veena.php");
}


if(isset($_POST["submit"])){
$username = $_POST["username"];
$password = $_POST["password"];

    $query = "SELECT * FROM user WHERE username='$username'";
    $data=mysqli_query($connectDB,$query) or die("error");
    if(mysqli_num_rows($data)>0){
      while($row=mysqli_fetch_assoc($data)){
        if($username === $row['username'] && $password === $row['password']){
              $_SESSION["username"] = $row['username'];
              $_SESSION["team"] = $row['team'];
              $_SESSION["role"] = $row['role'];
              $_SESSION["name"] = $row['name'];

              
              if($row['role'] === '0'){
                header("location: index.php");
              }else if($row['role'] === '2') {
                header("location: veena/veena.php");
              }else if($row['role'] === '9' ) {
                header("location: admin.php");
              }else if($row['role'] === '1') {
                header("location: veena/view_v.php");
              }else if($row['role'] === '4') {
                header("location: garud/garud.php");
              }else if($row['role'] === '3') {
                header("location: garud/view_g.php");
              }else if($row['role'] === '5') {
                header("location: nischay/view_n.php");
              }else if($row['role'] === '6') {
                header("location: nischay/nischay.php");
              }
              
            //   else{
            //     header("location: index.php");
            //   }

            }else{
          echo "<div>Username or Password is incorrect</div>";
        }
        }
    }else{
      echo "<div>Username or Password is incorrect</div>";
    }
}

?>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <style>
      .container {
        width: 300px;
        height: 150px;
        padding: 10px;
        border: 1px solid black;
      }

      /* Style all input fields */
      input {
        width: 55%;
        padding: 6px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-top: 6px;
        margin-bottom: 16px;
      }
    </style>
  </head>

  <body>
    <p style="text-align: center; width: 300px; height: 5px; font-size: 20px">
      <strong> Login</strong>
    </p>

    <div class="container">
      <form action="login.php" method="POST">
        <label for="usrname">Username: &nbsp;</label>
        <input type="text" id="usrname" name="username" required /><br />

        <label for="psw">Password: &nbsp;</label>
        <input type="password" id="psw" name="password" required />
        <br /><br />
        <button type="submit" name="submit">Login</button>
      </form>
    </div>
  </body>
</html>
