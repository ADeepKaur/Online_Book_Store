<?php
session_start();
$connect = mysqli_connect("localhost", "admin", "admin123", "store");
?>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<div>
	<h2 align="center">All Products</h2>

	<table border="1">
    <?php
	$query = "SELECT * FROM `Products` ORDER BY `sku` ASC";
 	$result = mysqli_query($connect, $query);
	if(mysqli_num_rows($result) > 0)
	{

?>  

			<div class='col-md-3'>
		    <tr>
		    <th width="5%">Product Sku</th>
		    <th width="30%">Category ID</th>
		    <th width="30%">Product Name</th>
			<th width="30%">Product Description</th>
		    <th width="15%">Price</th>
		    <th width="15%">Action</th>
		   
		    </tr>
    <?php

		while($row = mysqli_fetch_array($result))
		{
			?>
			 
            <tr>
           
            <td><?php echo $row["sku"]; ?></td>
            <td> <?php echo $row["catID"]; ?></td>
            <td> <?php echo $row["pname"]; ?></td>
          
            <td><?php echo $row["description"]; ?></td>
            <td>$<?php echo $row["Price"]; ?></td>
            <td><a href="fetch.php?action=delete&id=<?php echo $row["sku"]; ?>"><span class="btn btn-danger">X</span></a></td>
            </div>
    	
            <?php
		}
	}
	?>

</table>
</div>

<<?php 
if(isset($_GET["action"]))
{
	if($_GET["action"] == "delete")
	{
		foreach($_SESSION["cart"] as $keys => $values)
		{
			if($values["sku"] == $_GET["id"])
			{
				unset($_SESSION["cart"][$keys]);
				echo '<script>alert("Product has been removed")</script>';
				echo '<script>window.location="fetch.php"</script>';
			}
		}
	}
}
?>

	