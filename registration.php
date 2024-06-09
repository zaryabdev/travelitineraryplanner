<?php
session_start();
if (isset($_SESSION["user"])) {
   header("Location: index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="px-5 py-5 p-lg-0 mt-5">
      <div class="d-flex justify-content-center">
        <div class="col-12 col-md-9 col-lg-7 min-h-lg-screen d-flex flex-column justify-content-center py-lg-16 px-lg-20 position-relative">
          <div class="row">
            <div class="col-lg-10 col-md-9 col-xl-7 mx-auto">
              <div class="text-center mb-12">
                <!-- <a class="d-inline-block" href="#">
                                <img src="https://preview.webpixels.io/web/img/logos/clever-primary-sm.svg" class="h-12" alt="...">

                        </a> -->
                <span class="d-inline-block d-lg-block h1 mb-lg-6 me-3">👋</span>
                <h1 class="ls-tight font-bolder h2">
                  Register Now!
                </h1>
                <p class="mt-2">Let's build someting great</p>
              </div>
              <form action="registration.php" method="post" method="post">
                <div class="mb-5">
                  <label class="form-label" for="fullname" >Full Name</label>
                  <input type="fullname" class="form-control" id="fullname" name="fullname" placeholder="Your Full Name">
                </div>
                <div class="mb-5">
                  <label class="form-label" for="email" >Email address</label>
                  <input type="email" class="form-control" id="email" name="email"  placeholder="Your email address">
                </div>
                <div class="mb-5">
                  <label class="form-label" for="password">Password</label>
                  <input type="password" class="form-control" id="password" name="password" placeholder="Password" autocomplete="current-password">
                </div>
                <div class="mb-5">
                  <label class="form-label" for="repeat_password">Repeat Password</label>
                  <input type="password" class="form-control" id="repeat_password" name="repeat_password" placeholder="Repeat Password" >
                </div>
                <div>
                  <div class="row mb-3">
                  <?php
                        if (isset($_POST["submit"])) {
                        $fullName = $_POST["fullname"];
                        $email = $_POST["email"];
                        $password = $_POST["password"];
                        $passwordRepeat = $_POST["repeat_password"];

                        $passwordHash = password_hash($password, PASSWORD_DEFAULT);

                        $errors = array();

                        if (empty($fullName) OR empty($email) OR empty($password) OR empty($passwordRepeat)) {
                            array_push($errors,"All fields are required");
                        }
                        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                            array_push($errors, "Email is not valid");
                        }
                        if (strlen($password)<8) {
                            array_push($errors,"Password must be at least 8 charactes long");
                        }
                        if ($password!==$passwordRepeat) {
                            array_push($errors,"Password does not match");
                        }
                        require_once "database.php";
                        $sql = "SELECT * FROM users WHERE email = '$email'";
                        $result = mysqli_query($conn, $sql);
                        $rowCount = mysqli_num_rows($result);
                        if ($rowCount>0) {
                            array_push($errors,"Email already exists!");
                        }
                        if (count($errors)>0) {
                            foreach ($errors as  $error) {
                                echo "<div class='alert alert-danger mt-3'>$error</div>";
                            }
                        }else{

                            $sql = "INSERT INTO users (full_name, email, password) VALUES ( ?, ?, ? )";
                            $stmt = mysqli_stmt_init($conn);
                            $prepareStmt = mysqli_stmt_prepare($stmt,$sql);
                            if ($prepareStmt) {
                                mysqli_stmt_bind_param($stmt,"sss",$fullName, $email, $passwordHash);
                                mysqli_stmt_execute($stmt);
                                echo "<div class='alert alert-success mt-3'>You are registered successfully.</div>";
                            }else{
                                die("Something went wrong");
                            }
                        }


                        }
                    ?>
                    <input type="submit" value="Sign Up" name="submit" class="btn btn-primary w-full mx-2">
                  </div>
                </div>
              </form>
              <div class="my-6 mt-3">
                <small>Already Registered?</small>
                <a href="login.php" class="text-warning text-sm font-semibold">Login Here</a>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>

    <!-- <div class="container">

        <form action="registration.php" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="fullname" placeholder="Full Name:">
            </div>
            <div class="form-group">
                <input type="emamil" class="form-control" name="email" placeholder="Email:">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Password:">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="repeat_password" placeholder="Repeat Password:">
            </div>
            <div class="form-btn">
                <input type="submit" class="btn btn-primary" value="Register" name="submit">
            </div>
        </form>
        <div>
        <div><p>Already Registered <a href="login.php">Login Here</a></p></div>
      </div>
    </div> -->
</body>
</html>