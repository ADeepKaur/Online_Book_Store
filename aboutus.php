<?php session_start();?>

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
			
			<!-- start page -->

				<div id="page">
					<!-- start content -->
					<div id="content">
						<div class="post">
							<h1 class="title">About Us</h1>
							<div class="entry" style="height:auto">
								
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper felis sit amet sem blandit auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris in urna ornare, sodales augue finibus, viverra orci. Mauris pulvinar consequat neque, in sodales tortor elementum non. Sed luctus ac nisi a laoreet. Quisque gravida tempor neque, eu faucibus quam consectetur ut. Maecenas eget est eget sem commodo dictum quis ut tortor. Curabitur gravida nisi quis nunc auctor, et porta turpis elementum. Quisque commodo nibh facilisis massa porttitor ullamcorper. Morbi blandit molestie varius. Nullam et molestie orci. Integer ullamcorper est nulla, id mollis tortor porta sollicitudin. Nunc non diam vel orci finibus euismod.<br>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper felis sit amet sem blandit auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris in urna ornare, sodales augue finibus, viverra orci. Mauris pulvinar consequat neque, in sodales tortor elementum non. Sed luctus ac nisi a laoreet. Quisque gravida tempor neque, eu faucibus quam consectetur ut. Maecenas eget est eget sem commodo dictum quis ut tortor. Curabitur gravida nisi quis nunc auctor, et porta turpis elementum. Quisque commodo nibh facilisis massa porttitor ullamcorper. Morbi blandit molestie varius. Nullam et molestie orci. Integer ullamcorper est nulla, id mollis tortor porta sollicitudin. Nunc non diam vel orci finibus euismod.
							</div>
							
						</div>
						
					</div>
					<!-- end content -->
					
					<!-- start sidebar -->
					<div id="sidebar">
							<?php
								include("includes/search.inc.php");
							?>
					</div>
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
