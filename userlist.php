<?php
	$conn = mysqli_connect("localhost", "root", "", "databaseexam");
	$sql = "SELECT UserID, name FROM users WHERE 1";
	$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
	<title>User List</title>

</head>
<body>
	<h1>Users:</h1>
	<?php 
	while($row = $result->fetch_assoc()){
		echo $row["name"];
		echo "   <a href='deleteuser.php'>delete</a>";
	}
	?>
</body>
</html>