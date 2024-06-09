<?php

include 'database.php';

$search_term = $_POST['movie'];

$sql = "SELECT x_id,x_name,x_image_url,x_price,x_desc FROM hotels WHERE x_name LIKE '%{$search_term}%' LIMIT 9";
$result = mysqli_query($conn, $sql) or die("SQL Query Failed.");

if(mysqli_num_rows($result) > 0){
	while ($row = mysqli_fetch_assoc($result)) {
		echo "
		<div id='{$row['x_id']}' class='col pointer'>
			<div class='card'>
			<div class='p-2'>
			<img alt='...' src='{$row['x_image_url']}' class='card-img'>
			</div>
			<div class='card-body'>
			<h3 class='h4'>{$row['x_name']}</h3>
			<p class='card-text text-sm'>{$row['x_desc']}</p>
			<a id='add-to-cart' href='#' class='btn btn-sm btn-primary float-end'>
			 Book {$row['x_name'] }
			</a>
			</div>
		</div>
	  </div>";
	}
} else {
	echo "<center>Hotel not found.</center>";
}

?>