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
    <link rel="stylesheet" href="style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link href="https://unpkg.com/@webpixels/css@1.2.6/dist/index.css" rel="stylesheet">
    <title>Movies</title>
</head>
<body>
    <?php include 'navbar.php' ?>
    <section class="position-relative pt-48 pb-40 bg-dark bg-cover bg-size--cover" style="background-image:url(https://images.unsplash.com/photo-1549082984-1323b94df9a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80)">
    <!-- Overlay -->
    <span class="position-absolute top-0 start-0 w-full h-full bg-dark opacity-80"></span>
    <!-- Content -->
    <div class="container-lg max-w-screen-xl position-relative overlap-10 text-center text-lg-start pt-5 pb-5 pt-lg-6">
      <div class="row row-grid align-items-center">
        <div class="col-lg-8 text-center text-lg-start">
        <h1 class="ls-tight font-bolder display-5 text-white mb-5">
        Stay somewhere great
        </h1>
        <form action="movie-search.php" method="POST">
            <div class="row">
                <div class="col">
                    <div class="autocomplete">
                        <input type="text" id="search-bar" class="form-control" name="search" autocomplete="off" placeholder="Movie search..." minlength="2">
                    </div>

                </div>
                <div class="col-auto">
                <input type="submit" class="btn btn-md btn-primary shadow-sm mx-2 px-lg-8" name="submit-search" value="Search">
            </div>
           </div>
        </form>
    </div>
  </section>
      <div id="listing" class="row row-cols-2 row-cols-md-4 p-5 g-4"></div>
</div>

<script type="text/javascript" src="js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<script type="text/javascript">
	$(document).ready(function(){

		$("#search-bar").keyup(function(){
		var movie = $(this).val();

		if(movie != ''){
			$.ajax({
				url: "load-movie.php",
				method: "POST",
				data: {movie: movie},
				success: function(data){
					// console.log(data);
					$("#listing").fadeIn("fast").html(data);
				}
			});
		} else {
			$("#listing").fadeOut();
		}
	});

	$(document).on('click','#listing #add-to-cart',function(){

        if(window.localStorage!==undefined) {
        let text = $(this).text().trim();
        console.log(text);
        try {
        let moviesStr = localStorage.getItem("shared-data");
        let arr = [];
        if(moviesStr){
            arr = JSON.parse(moviesStr)
        }
        arr.push(text)

        localStorage.setItem("shared-data", JSON.stringify(arr));

        } catch (error) {
            console.log(error);

        }

    } else {
        alert("Storage Failed. Try refreshing");
    }

		// $('#search-bar').val($(this).text());
		// $('#listing').fadeOut();
	});

  });
</script>
</body>
</html>