<?php session_start();
require('includes/config.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<?php
			include("includes/head.inc.php");
		?>


<style>
table {
    width:80%;
    margin-left: 100px;
    }
    
    
table, th, td {
   
    border-collapse: collapse;
    

}
 td {
    padding: 5px;
    text-align: left;
}

table th {
    background-color: #eee;
    color: #000;
    padding: 10px;
}
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
			<font style="font-size:30px;margin-left:560px">Invoice</font>
			

						<div class="container">			
						<hr style="margin-left:160px;margin-right:160px;"></hr>
						
						<table>
						  
						  <tr>
						    <td>Online Book Store <br> VU EDU <br>Sydney NSW<br>Australia</td><td rowspan="4" width="60%"><h1 align="right">Online Book Store</h1>
						</td>
						     </tr>
						</table>
						<br>
						<table>
						  
						<tr>
						<td ><b>bill to: </b><br>
						<?php
						if(isset($_SESSION['unm']))
						{
						

						$name= $_SESSION['unm'];	
						//echo $name;
						$sql = "SELECT name, address, postal_code, city, state FROM shipping_details where name='$name'";
							$result = mysqli_query($conn, $sql);

						if (mysqli_num_rows($result) > 0) {
						    // output data of each row
						    while($row = mysqli_fetch_assoc($result)) {
						        echo $row["name"]. " <br> ". $row["address"]. " <br>" . $row["postal_code"]. " <br>" . $row["city"] . "<br>". $row["state"] . "<br>";
						    }
						} else {
						    echo "0 results";
						}

						}

						?>
						</td>

						<td rowspan="4" width="60%" ><h3 align="right" >hello world</h3>
						</td>
						 </tr>
						</table>

						<form action="process_cart.php" method="POST">
							


							<table border="1">
								<tr >
									<th> <b>Product</b></th>
									<th> <b>Qty</b></th>
									
									<th> <b>Price: AUD</b></th>.
								</tr>
							
								<?php
									$tot = 0;
									$i = 1;
									if(isset($_SESSION['cart']))
									{

									foreach($_SESSION['cart'] as $id=>$x)
									{	
										echo '
											<tr>
											<td> '.$x['nm'].'
											<td> '.$x['qty'].'
											
											<td> '.'$'.($x['qty']*$x['rate']).'
										</tr>
										';
										
										$tot = $tot + ($x['qty']*$x['rate']);
										$i++;
									}
									}
								
								?>
								
							<tr>
							<td colspan="2" align="right">
							<h4 align="right">Total:</h4>
							
							</td>
							<td> <h4>&nbsp;$<?php echo $tot; ?> </h4></td>
							</tr>

							<Br>
								</table>						

							<br><br>
								
							</form>	
							
							</div>
							
						</div>
						
					</div>








