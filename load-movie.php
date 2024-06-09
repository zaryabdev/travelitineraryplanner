<?php

include 'database.php';

$search_term = $_POST['movie'];

$sql = "SELECT m_id,m_name,m_year FROM movies WHERE m_name LIKE '%{$search_term}%' LIMIT 9";
$result = mysqli_query($conn, $sql) or die("SQL Query Failed.");

if(mysqli_num_rows($result) > 0){
	while ($row = mysqli_fetch_assoc($result)) {
		echo "
		<div id='{$row['m_id']}' class='col pointer'>
			<div class='card'>
			<div class='p-2'>
			<img alt='...' src='https://images.unsplash.com/photo-1553356084-58ef4a67b2a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&h=300&q=80' class='card-img'>
			</div>
			<div class='card-body'>
			<h3 class='h4'>{$row['m_name']}</h3>
			<p class='mt-4 mb-6'>
			<div><a class='items-link' href='single-movie.php?name={$row['m_name']}' target='_blank'>
			{$row['m_year']}
			</a></div>
			</p>
			<a id='add-to-cart' href='#' class='btn btn-sm btn-primary float-end'>
			{$row['m_name']}
			</a>
			</div>
		</div>
	  </div>";
	}
} else {
	echo "<center>Movie not found.</center>";
}

?>