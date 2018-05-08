<?php include('connect.php');

if(isset($_POST["submit"])){
	$email=$_POST["txtemail"];
	$pass=$_POST["txtpass"];
	
	$query=mysqli_query($con,"SELECT email,pass,type FROM register");
	while($row=mysqli_fetch_array($query))
	{
		$db_email=$row["email"];
		$db_pass=$row["pass"];
		$db_type=$row["type"];
		
		if($email==$db_email && $pass==$db_pass){
			session_start();
			$_SESSION["email"]=$db_email;
			$_SESSION["type"]=$db_type;
			
			if($_SESSION["type"]=='admin'){
				header("Location:admin_index.html");
			}
			else
				header("Location:user_index.html");
		}
		else
			echo("fail");
	}}