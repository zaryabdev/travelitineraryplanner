<?php
session_start();
if (!isset($_SESSION["user"])) {
   header("Location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link href="https://unpkg.com/@webpixels/css@1.2.6/dist/index.css" rel="stylesheet">
    <title>User Dashboard</title>
</head>
<body>
<div>
<?php include 'navbar.php' ?>
  <section class="position-relative pt-48 pb-40 bg-dark bg-cover bg-size--cover" style="background-image:url(https://images.unsplash.com/photo-1549082984-1323b94df9a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80)">
    <!-- Overlay -->
    <span class="position-absolute top-0 start-0 w-full h-full bg-dark opacity-80"></span>
    <!-- Content -->
    <div class="container-lg max-w-screen-xl position-relative overlap-10 text-center text-lg-start pt-5 pb-5 pt-lg-6">
      <div class="row row-grid align-items-center">
        <div class="col-lg-8 text-center text-lg-start">
          <!-- Title -->
          <h1 class="ls-tight font-bolder display-5 text-white mb-5">
            We built incredible web products for designers & developers
          </h1>
          <!-- Text -->
          <p class="lead text-white text-opacity-75 mb-10 w-lg-2/3">
            For over 5 years, we pride ourselves on our commitment to excellence, as well as our ability to deliver for our customers.
          </p>
          <!-- Buttons -->
          <div class="mt-10 mx-n2">
            <a href="#" class="btn btn-lg btn-primary shadow-sm mx-2 px-lg-8">
              Get started
            </a>
            <a href="#" class="btn btn-lg btn-neutral mx-2 px-lg-8">
              Learn more
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
<?php include 'features.php' ?>
<script type="text/javascript" src="js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>