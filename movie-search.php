<?php

include 'database.php';

?>

<!DOCTYPE html>
<html>
<head>
	<title>Movie Search</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">

<?php

if(isset($_POST['submit-search'])) {
	$search = mysqli_real_escape_string($conn, $_POST['search']);
	$sql = "SELECT * FROM movies WHERE m_name LIKE '%$search%' LIMIT 7";
	$result = mysqli_query($conn, $sql);
	$queryResult = mysqli_num_rows($result);

	echo "<h4><font>".$queryResult." Results found for <mark>".$search."</mark></font></h4>";

    if($queryResult > 0) {
    	while ($row = mysqli_fetch_assoc($result)) {
    		echo "<div style='background-color: skyblue; padding: 8px; margin-bottom: 5px;'><a class='items-link' href='single-movie.php?name={$row['m_name']}' target='_blank'>
		<h2>{$row['m_name']}</h2>
		<p>Year: {$row['m_year']}</p>
		<p>Genres: {$row['other_genres']}</p>
	</a></div>";
    	}
    } else {
    	echo "<div style='padding-top: 10px;'><font style='font-weight: bold; color: #FF0033;'>Sorry there are no results matching your search!</font></div>";
    }
}

?>

</div>
</body>
</html>