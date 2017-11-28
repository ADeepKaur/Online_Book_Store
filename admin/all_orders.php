<?php 
session_start();
require('includes/config.php');

	$q="SELECT a.id as invoice,
       c.name,
       b.b_nm,
       a.qty,
       a.qty * b.b_price as price,
       c.address,
       c.postal_code,
       c.city,
       c.state,
       c.phone
FROM payments 
A Join 
book b on a.book_id =b.b_id 
join shipping_details c on a.ship_Id=c.id";

	 $res=mysqli_query($conn,$q) or die("Can not Execute Query!");
	?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Title      : Lotus Flower
Version    : 1.0
Released   : 20080501
Description: A two-column, fixed-width and lightweight template ideal for 1024x768 resolutions. Suitable for blogs and small websites.

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<?php
			include("includes/head.inc.php");
		?>
		<style>
			table{padding:5px;border:10px solid gray}
			td,th{padding:15px}
			
		</style>
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
<!-- start page -->

<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title"></h1>
			<div class="entry">
				
					<table border='1' WIDTH='100%'>
						<tr>
<td WIDTH='10%' style="color:darkgreen"><b><u>Invoice Number</u></b></td>
<TD style="color:darkgreen" WIDTH='50%'><b><u>Customer Name</u></b></TD>
<TD style="color:darkgreen" WIDTH='50%'><b><u>Book Name</u></b></TD>
<TD style="color:darkgreen" WIDTH='20%'><b><u>Quantity</u></b></TD>
<TD style="color:darkgreen" WIDTH='20%'><b><u>Price</u></b></TD>
<TD style="color:darkgreen" WIDTH='50%'><b><u>Address</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>Post Code</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>City</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>State</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>Phone</u></b></TD>
<TD style="color:darkgreen" WIDTH='25%'><b><u>EDIT</u></b></TD>				
							
						</tr>
						<?php
							$count=1;
							while($row=mysqli_fetch_assoc($res))
							{
							echo '<tr>
										<td>'.$row['invoice'].'
										<td>'.$row['name'].'
										<td>'.$row['b_nm'].'
										<td>'.$row['qty'].'
										<td>$'.$row['price'].'
										<td>'.$row['address'].'
										<td>'.$row['postal_code'].'
										<td>'.$row['city'].'
										<td>'.$row['state'].'
										<td>'.$row['phone'];
										
										
									echo 	'<td><a href="process_del_order.php?id='.$row['invoice'].'"><img src="images/drop.png" ></a>
												
									
									</tr>';
									$count++;
							}
						?>

					</TABLE>
				
			</div>
			
		</div>
		
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
<!-- start footer -->
<div id="footer">
			<?php
				include("includes/footer.inc.php");
			?>
</div>
<!-- end footer -->
</body>
</html>
