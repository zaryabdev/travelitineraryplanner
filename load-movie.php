<?php

include 'dbconn.php';

$search_term = $_POST['movie'];

$sql = "SELECT m_name FROM movies WHERE m_name LIKE '%{$search_term}%' LIMIT 4";
$result = mysqli_query($conn, $sql) or die("SQL Query Failed.");

if(mysqli_num_rows($result) > 0){
	while ($row = mysqli_fetch_assoc($result)) {
		echo "<div><a class='items-link' href='single-movie.php?name={$row['m_name']}' target='_blank'>{$row['m_name']}</a></div>";
	}
} else {
	echo "<div>Movie not found.</div>";
}

?>