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
    <title>User Dashboard</title>
</head>
<body>
<?php include 'navbar.php' ?>
<div class="container">
    <main class="mt-80px">
        <hr>
        <h3 class="mb-3">Track history</h3>
        <div id="list-group" class="list-group"></div>
        <button id="clear-tracker-data" type="button" class="btn btn-danger btn-md mt-3 float-end">Clear Tracker</button>

    </main>
</div>

<?php include 'features.php' ?>
<script type="text/javascript" src="js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<script type="text/javascript">
	$(document).ready(function(){
        if(window.localStorage!==undefined) {
        try {
            let moviesStr = localStorage.getItem("shared-data");
            let arr = [];
            if(moviesStr){
                arr = JSON.parse(moviesStr)
            }
            // console.log(arr);
            let data = ``
            arr.map(el=>{
                data = data + ` <a href="#" class="list-group-item list-group-item-action">
                <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1">${el}</h5>
                <small class="text-body-secondary">3 days ago</small>
                </div>
                <p class="mb-1">Some placeholder content in a paragraph.</p>
                <small class="text-body-secondary">And some muted small print.</small>
            </a>`
            })
            $("#list-group").fadeIn("fast").html(data);

        } catch (error) {
            console.log(error);
        }

        $(document).on('click','#clear-tracker-data',function(){

        if(window.localStorage!==undefined) {
            localStorage.removeItem("shared-data");
            location.reload();
        }

        // $('#search-bar').val($(this).text());
        // $('#listing').fadeOut();
        });

    }
  });
</script>

</body>
</html>