<?php include 'database.php'; ?>
<?php
  //Create Select Query
  $query = 'SELECT * FROM shoutit';
  $shouts = mysqli_query($con, $query);
 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Shout IT!</title>
  <link rel="stylesheet" href="css/style.css" type="text/css">
  </head>
  <body>
  	<div id="container">
  		<header><h1>Shout It</h1></header>
  		<div id="shouts">
  			<ul>
          <?php while($row = mysqli_fetch_assoc($shouts)) : ?>
            <li class="shout"> <span></span><strong><?php echo $row['name'] ?>:</strong> <?php echo $row['message'] ?></li>
          <?php endwhile; ?>
  			</ul>
  		</div>
  		<div id="input">
        <?php if(isset($_GET['error'])) : ?>
          <div class="error"><?php echo $_GET['error']; ?></div>
        <?php endif; ?>
  			<form method="post" action="process.php">
  				<input type="text" name="name" placeholder="Enter Your Name">
  				<input type="text" name="message" placeholder="Enter Your Message">
  				<br>
  				<input class="shout-btn"type="submit" name="submit" value="Shout It Out">
  			</form>
  		</div>
  	</div>
  </body>
</html>
