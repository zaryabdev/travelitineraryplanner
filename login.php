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
    <title>Login Form</title>
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
                  Welcome back!
                </h1>
                <p class="mt-2">Let's build someting great</p>
              </div>
              <form action="login.php" method="post">
                <div class="mb-5">
                  <label class="form-label" for="email">Email address</label>
                  <input type="email" class="form-control" id="email" name="email"  placeholder="Your email address">
                </div>
                <div class="mb-5">
                  <label class="form-label" for="password">Password</label>
                  <input type="password" class="form-control" id="password" name="password" placeholder="Password" autocomplete="current-password">
                </div>
                <div class="mb-5">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="check_example" id="check_example">
                    <label class="form-check-label" for="check_example">
                      Keep me logged in
                    </label>
                  </div>
                </div>
                <div>
                  <div class="row">
                    <input type="submit" value="Sign in" name="login" class="btn btn-primary w-full mx-2">
                    <?php
                      if (isset($_POST["login"])) {
                        $email = $_POST["email"];
                        $password = $_POST["password"];
                          require_once "database.php";
                          $sql = "SELECT * FROM users WHERE email = '$email'";
                          $result = mysqli_query($conn, $sql);
                          $user = mysqli_fetch_array($result, MYSQLI_ASSOC);
                          if ($user) {
                              if (password_verify($password, $user["password"])) {
                                  session_start();
                                  $_SESSION["user"] = "yes";
                                  header("Location: index.php");
                                  die();
                              }else{
                                  echo "<div class='alert alert-danger mt-3'>Password does not match</div>";
                              }
                          }else{
                              echo "<div class='alert alert-danger mt-3'>Email does not match</div>";
                          }
                      }
                    ?>
                  </div>
                </div>
              </form>
              <div class="my-6 mt-3">
                <small>Don't have an account?</small>
                <a href="registration.php" class="text-warning text-sm font-semibold">Sign up</a>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
</body>
</html>