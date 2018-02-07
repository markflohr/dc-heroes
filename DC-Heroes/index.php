<?php 

  include("inc/database.php");

    if(isset($_GET['heroId'])) 
    {
    	$heroId = $_GET['heroId'];
	}

	$select_team = "SELECT * from team";
	$result_team = $conn->query($select_team);

    if (isset($_GET["teamId"])) 
    {
        $teamid = $_GET["teamId"];
        $sql_team = "SELECT * FROM hero WHERE teamId = ".$teamid;
    }

    if(isset($_GET['teamId']))
	{
    	$sql = "SELECT * FROM hero WHERE teamId =  " . $_GET['teamId'];
	}
	else 
	{
  		$sql = "SELECT * FROM hero";
	}
	$result = $conn->query($sql);

	if (!isset($_GET['heroId'])) 
	{
  		$sql3 = "SELECT * from hero";
	}
	else 	
	{
    	$sql3 = "SELECT * from hero WHERE heroId = " . $_GET['heroId'];
	}
	$result3 = $conn->query($sql3);

?>
<!DOCTYPE html>
<html>
<head>
	<title>dc heroes</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header id="header">
  		<div id="logo-image">
  			<a href="index.php">
  				<img src="images/logo.png" width="100" height="100">
  			</a>
  		</div>
        <div id="logo-text">
            <a href="index.php">Heroes</a>
        </div>
        <div class="clearfix"></div>	
    </header>
	<div id="main-container">
		<div class="teams">
			<nav>
				<h1>Teams</h1>
				<ul>
        			<?php
        				while($row2 = $result_team->fetch_assoc()) {
         			?>
					<li><a href="index.php?teamId=<?php echo $row2['teamId'];?>" style="text-decoration:none;"><?php echo $row2["teamName"]; ?></a></li>
        			<?php
          				}
        			?>
      			</ul>
			</nav>
		</div>
		<div class="heroes">
    		<h1>Heroes</h1>
			<?php
				if ($result->num_rows > 0) 
				{
  					while($row3 = $result->fetch_assoc()) 
  					{
            ?>
					<div class="hero-container">
						<div class="hero-image">
							<img src="./<?php echo $row3["heroImage"]; ?>.jpg">
						</div>
						<div class="hero-description"><h3><?php echo $row3["heroName"]; ?></h3>
							<p><?php echo substr($row3["heroDescription"], 0, 80) . "..."; ?></p>
						</div>
						<a href="index.php?teamId=<?php echo $row3['teamId']; ?>&heroId=<?php echo $row3['heroId']; ?>">
							<div class="button-hero">More info..</div>
						</a>
						<div class="clearfix"></div>
					</div>
			<?php
					}
          }
				else 
				{			
		      echo "No results";
		   	}
			 ?>
		</div>
<div class="hero-details">
			<?php
        		if(isset($heroId)) 
        		{
     		?>
					<h1>Description</h1>
   	<div class="right-box">
      					<?php
        					while($row3 = $result3->fetch_assoc()) {
       					?>
		<div class="top-part">
          					<div class="description-image">
            					<img class="hero-image-round" src="./<?php echo $row3["heroImage"]; ?>.jpg">
         					  </div>
          					<div class="info-box">
            					<h2>Info</h2>
            					<div class="info">
            						<?php echo $row3['heroDescription']; ?>
            					</div>
            					<h2>Powers</h2>
              					<div class="powers"><?php echo nl2br($row3['heroPower']); ?></div>
            <?php
              	}
            ?>
          					</div>
          				<h2>Rate your hero</h2>
          			<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="frmRate">
              			<h4>Rating</h4>
              			<div class="rate">
                			<input type="radio" id="rating10" name="rating" value="10" />
                			<label class="lblRating" for="rating10" title="5 stars"></label>

                  			<input type="radio" id="rating8" name="rating" value="8" />
                  			<label class="lblRating" for="rating8" title="4 stars"></label>


	                		<input type="radio" id="rating6" name="rating" value="6" />
                    		<label class="lblRating" for="rating6" title="3 stars"></label>


                  			<input type="radio" id="rating4" name="rating" value="4" />
                  			<label class="lblRating" for="rating4" title="2 stars"></label>


                  			<input type="radio" id="rating2" name="rating" value="2" />
                  			<label class="lblRating" for="rating2" title="1 star"></label>

			                <input type="radio" id="rating0" name="rating" value="0" />
                  			<label class="lblRating" for="rating0" title="No star"></label>
              			</div>
                    <div class="clearfix"></div>
              			<div class="review">
                			<h4>Review</h4>
                			<textarea class="text-area" rows="4" cols="50" name="comment" form="usrform">
								        Enter text here...
                      </textarea>
              			</div>

              			<div class="divSubmit">
                			<input type="submit" name="submitRating" value="Rate Hero"/>
                			<input type="hidden" name="heroId" value="<?php echo $heroId; ?>"/>
              			</div>
          			</form>
		</div>
    </div>
    <?php
    	} 
    	else 
    	{
        	echo "please select a hero";
      	}
    ?>
</div>
</body>
</html>