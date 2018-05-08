<!DOCTYPE html>
<html>	
<body bgcolor="#EBDA87">

	Welcome user

	<form method="post" action="do_logout.php">
	<input type="submit" name="logout" value="LOGOUT" />	
	</form>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>

<div class="topnav">
  <a class="active" href="user_index.html">Home</a>
  <a href="user_create_profile.html">Create Profile</a>
  <a href="user_search_people.html">Search People</a>
  <a href="user_list_events.html">List Events</a>
</div>

	<head>
	<title>Event List</title>
	</head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("banner.jpg");

    /* Full height */
    height: 50%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
</head>
<div class="bg"></div>

<?php
	$eventTitle=$_POST['eventTitle'];
	$name=$_POST['name'];

	if (!$name)
	{
	echo '<p>You have not entered your full name.<br/>
	Please go back and try again.</p>';
	exit;
	}

// Create connection
	$conn = mysqli_connect('localhost', 'root','fei4844', '_lovingseniors');
	// Check connection
	if (!$conn)
	{
    die("Connection failed: " . mysqli_connect_error());
	}


		$sql="INSERT INTO event_signup(eventID,name)
			  VALUES('$eventTitle', '$name')";

		if(!mysqli_query($conn,$sql))
		{
			echo'Please try again';
		}
		else
		{	
			echo'You are enrolled';
		}

		header("refresh:3; url=user_listEvent.php");
?>

<br >

	</body>
</html>