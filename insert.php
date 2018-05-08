<!DOCTYPE html>
<html>
<body bgcolor="#EBDA87">	
	<head>
	<title>System Message</title>
	</head>

	<body>
	<p style="text-align:center;font-size: 100px;">Loving Seniors</p>
	<h1>System Message</h1>
	
	<?php
	$servername = "localhost";
	$username = "root";
	$password = "fei4844";
	$dbname = "_lovingseniors";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$conn)
	{
    die("Connection failed: " . mysqli_connect_error());
	}
		$Name=$_POST['name'];
		$Age=$_POST['age'];
		$Gender=$_POST['gender'];
		$RegistrationDate=$_POST['registrationDate'];

		$sql="INSERT INTO profiles(name,age,gender,registrationDate)
			  VALUES('$Name','$Age','$Gender','$RegistrationDate')";

		if(!mysqli_query($conn,$sql))
		{
			echo'Not Inserted';
		}
		else
		{
			echo'Data Has Been Successfully Inserted';
		}

		header("refresh:5; url=search.html");

	?>

	</body>
</html>