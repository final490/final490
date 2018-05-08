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
		$eventDate=$_POST['eventDate'];
		$eventTitle=$_POST['eventTitle'];
		$eventLocation=$_POST['eventLocation'];
		$eventType=$_POST['eventType'];
		$eventDescription=$_POST['eventDescription'];

		$sql="INSERT INTO event(eventDate,eventTitle,eventLocation,eventType,eventDescription)
			  VALUES('$eventDate','$eventTitle','$eventLocation','$eventType','$eventDescription')";

		if(!mysqli_query($conn,$sql))
		{
			echo'Not Added';
		}
		else
		{
			echo'Event Has Been Successfully Added';
		}

	?>

	</body>
</html>