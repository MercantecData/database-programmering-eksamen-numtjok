<?php
	$conn = mysqli_connect("localhost", "root", "", "databaseexam");
	$sql = "SELECT UserID, username FROM users WHERE 1";
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
		echo $row["username"];
		echo "    </br>";
	}
	?>
	<form method="POST">
		<input type="text" name="DeleteUser">
		<input type="submit" name="delete" value="delete">

	</form>

	<?php 
	if (isset($_POST['delete'])) {
		$DeleteUserwithname=$_POST['DeleteUser'];
		$sql='DELETE FROM users WHERE username="'.$DeleteUserwithname.'"';
		mysqli_query($conn,$sql);
	}
	 ?>
</body>
</html>