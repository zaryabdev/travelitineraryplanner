<?php

include 'dbconn.php';

?>

<!DOCTYPE html>
<html>
<head>
	<title>Single Movie</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">

<?php
$name = mysqli_real_escape_string($conn, $_GET['name']);
$sql = "SELECT * FROM movies WHERE m_name='$name'";
$result = mysqli_query($conn, $sql);
$queryResult = mysqli_num_rows($result);

if ($queryResult > 0) {
	while ($row = mysqli_fetch_assoc($result)) {
		echo "<h2>{$row['m_name']}</h2>
	<p>Year: {$row['m_year']}</p>
	<p>Genre: {$row['other_genres']}</p>";
	}
}
?>
	
</div>
</body>
</html>