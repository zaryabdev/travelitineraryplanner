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

    <title>User Dashboard</title>
</head>
<body>
    <div class="container">
        <h1>Welcome to Dashboard</h1>
        <a href="logout.php" class="btn btn-warning">Logout</a>
        <form action="movie-search.php" method="POST">
		<div class="autocomplete">
			<input type="text" id="movie-box" name="search" autocomplete="off" placeholder="Movie search..." minlength="2">
		</div>
		<input type="submit" name="submit-search" value="Search">
        <div id="movieList" class="autocomplete-items">
        </div>
	</form>
    </div>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


<script type="text/javascript">
	$(document).ready(function(){

		$("#movie-box").keyup(function(){
		var movie = $(this).val();

		if(movie != ''){
			$.ajax({
				url: "load-movie.php",
				method: "POST",
				data: {movie: movie},
				success: function(data){
					console.log(data);
					$("#movieList").fadeIn("fast").html(data);
				}
			});
		} else {
			$("#movieList").fadeOut();
		}
	});

	$(document).on('click','#movieList div',function(){
		$('#movie-box').val($(this).text());
		$('#movieList').fadeOut();
	});

  });
</script>
</body>
</html>