<?php
require('includes/config.php');

			$query="delete from user where u_id =".$_GET['id'];
		
			mysqli_query($conn,$query) or die("Can't connect to database!");
			
			
			header("location:all_users.php");

?>