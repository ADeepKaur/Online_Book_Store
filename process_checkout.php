<?php 
	require('includes/config.php');
	
	if(!empty($_POST))
	{ 
		$msg="";
		
		if(empty($_POST['name']) || empty($_POST['address']) || empty($_POST['pc']) || empty($_POST['city']) || empty($_POST['state']) || empty($_POST['phone']))
		{
			$msg.="<li>Please fulfill all requirement";
		}
		
		if(is_numeric($_POST['name']))
		{
			$msg.="<li>Name must be in String Format.";
		}
		
		if($msg!="")
		{
			header("location:checkout.php?error=".$msg);
			echo '<script>window.location="checkout.php?error="</script>'.$msg;
		}
		else
	
	 {
	 	    $name=$_POST['name'];
			$address=$_POST['address'];
			$pc=$_POST['pc'];
			$city=$_POST['city'];
			$state=$_POST['state'];
			$phone=$_POST['phone'];
			
			$query="insert into payment(name,address,pc,city,state,phone)
			values('$name','$address','$pc','$city','$state','$phone')";
			
			mysqli_query($conn,$query) or die("Can't Execute Query...");
			header("location:checkout.php?ok=1");
			echo '<script>window.location="checkout.php?ok=1"</script>';
		
	}
}
	else
	{
		header("location:index.php");
		echo '<script>window.location="index.php"</script>';
	}
?>