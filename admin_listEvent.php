<!DOCTYPE html>
<html>	
<body bgcolor="#EBDA87">

	Welcome Admin

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
  <a class="active" href="admin_index.html">Home</a>
  <a href="admin_create_profile.html">Create Profile</a>
  <a href="admin_search_people.html">Search People</a>
  <a href="admin_add_events.html">Add Events</a>
  <a href="admin_list_events.html">List Events</a>
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

	<h1>Event List</h1>
	<?php
			
	$db = new mysqli('localhost', 'root','fei4844', '_lovingseniors');
			

	if (mysqli_connect_errno())
	{
	echo '<p>Error: Could not connect to database.<br/>
	Please try again later.</p>';
	exit;
	}


	$query = "SELECT eventTitle,eventDate,eventLocation,eventType,eventDescription
	   		  FROM event";
	$result = $db->query($query);

	echo "<p>Number of records found: ".$result->num_rows."</p>";

	if($result->num_rows >0)
	{
		while($row = $result->fetch_assoc())
		{
		echo "<strong>Event Title: </strong>".$row["eventTitle"];
		echo "<br><strong>Event Date: </strong>".$row["eventDate"];
		echo "<br><strong>Event Location: </strong>".$row["eventLocation"];
		echo "<br><strong>Event Type: </strong>".$row["eventType"];
		echo "<br><strong>Event Description: </strong>".$row["eventDescription"];
		echo "<p>---------------------------------------------------------------------------------------------------</p>";
		}

	}		

	$db->close();
	
	?>
	</body>
</html>