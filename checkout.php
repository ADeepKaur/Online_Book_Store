<?php
 session_start();
 extract($_POST);
 extract($_SESSION);
 
require('includes/config.php'); 	
 



	if(isset($submit))
	{
	$query="insert into shipping_details(name,address,postal_code,city,state,phone,f_id) values('$name','$address','$pc','$city','$state','$phone','$uid')";
	
	$res=mysqli_query($conn,$query) or die("Can't Execute Query!");
    
    $i = 1;
	  if(isset($_SESSION['cart']))
	{
	foreach($_SESSION['cart'] as $id=>$x)
	{	
	  $book_id = $x['b_id'];
	  $qty = $x['qty'];
      $i++;

	  $ship_id="SELECT Max(id) FROM shipping_details";

	  $query="insert into payments(book_id,ship_id,qty) values('$book_id','$ship_id','$qty')";

	$res=mysqli_query($conn,$query) or die("Can't Execute Query!");
	}
	}


	header("location:payment_details.php");
	}
	


?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<?php
			include("includes/head.inc.php");
		?>
</head>

<body>
			<!-- start header -->
				<div id="header">
					<div id="menu">
						<?php
							include("includes/menu.inc.php");
						?>
					</div>
				</div>
				<div id="logo-wrap">
				<div id="logo">
						<?php
							include("includes/logo.inc.php");
						?>
				</div>
				</div>
				
			<!-- end header -->
			
			<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
                <div class="clr"></div>
				
            </div><!--/ freshdesignweb top bar -->    
		<h1 align="center">Please provide valid information for shipping </h1>
      <div  class="form">
    		<form id="contactform" method="post"> 
    			<p class="contact"><label for="name">Name</label></p> 
    			<input id="name" name="name"  required="" tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email">Address</label></p> 
    			<textarea id="address" name="address" placeholder="Address" required="" cols="55" row="10"type="email"> </textarea>
                
                <p class="contact"><label for="username">Postal Code</label></p> 
    			<input id="pc" name="pc"  required="" tabindex="2" type="text"> 
    			 
                <p class="contact"><label for="city">City</label></p> 
    			<input type="text" id="city" name="city" required="" > 
                <p class="contact"><label for="state">State</label></p> 
    			<input type="text" id="state" name="state" required="" > 
            <p class="contact"><label for="phone">Mobile phone</label></p> 
            <input id="phone" name="phone" required="" type="text"> <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Confirm & Proceed" type="submit"> 	 
   </form> 
</div>      
</div>
</body>