<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>First Circle</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full-width-pics.css" rel="stylesheet">


  </head>

  <body>
  
  
  

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href=""><img src="img/lg1.png" width="200" height="70"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
			<li class="nav-item active">
              <a class="nav-link" href="#footer-section">Contact Us</a>
            </li>
			<li class="nav-item active">
              <a class="nav-link" href="index.html">Logout</a>
            </li>
			
          </ul>
        </div>
      </div>
    </nav>
	


	

    <!-- Header - set the background image for the header in the line below -->
    <header class="py-5 bg-image-full" style="background-image: url('https://d1rytvr7gmk1sx.cloudfront.net/wp-content/uploads/2016/07/tashatuvango.jpg');">
      <img class="img-fluid d-block mx-auto" src="" height="300" width="300" alt="">
    </header>

    <!-- Content section -->
    <section class="py-5">
      <div class="container">
        <h1></h1>
        <p class="lead"></p>
        <p></p>
      </div>
    </section>
	




	 <?php
	  $con=mysqli_connect("localhost","root","","first_circle");
		session_start();
		if(isset($_SESSION['name']))
{
	echo "<h3><center>Welcome ".$_SESSION['name']; echo " , Here are your account details:</h3>"
	?>
<?php
}
?>

<div class="container mt-2">
    <div class="row">
        <div class="col-md-12">
		
		
		<table class="table">
              <thead>
                <tr>
                  <th scope="col">User ID</th>
                  <th scope="col">Username</th>
                  <th scope="col">BSB_no</th>
                  <th scope="col">Account no</th>
				  <th scope="col">Account Balance</th>
              </thead>
			  <tbody>  <!-- Account details -->
                <?php include 'accountdatafetch.php'; ?>
                <?php if ($result->num_rows > 0): ?>
                <?php while($array=mysqli_fetch_row($result)): ?>
                <tr>
                    <th scope="row"><?php echo $array[0];?></th>
                    <td><?php echo $array[1];?></td>
                    <td><?php echo $array[2];?></td>
                    <td><?php echo $array[3];?></td>
					<td><?php echo $array[4];?></td>
                </tr>
                <?php endwhile; ?>
                <?php else: ?>
                <tr>
                   <td colspan="4" rowspan="1" headers="">No Data Found</td>
                </tr>
                <?php endif; ?>
                <?php mysqli_free_result($result); ?>
              </tbody>
            </table>
			
			  <br>
			  <br>
			  <br>
			  <br>
			
			<h4><center>Here are your latest transaction details:</center></h4> <br>
            
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">Transfer ID</th>
                  <th scope="col">Pay ID</th>
                  <th scope="col">BSB number</th>
                  <th scope="col">Account No.</th>
				  <th scope="col">Account name</th>
				  <th scope="col">Mobile number</th>
                  <th scope="col">Total amount</th>
				  <th scope="col">Payment description</th>
                </tr>
              </thead>
              <tbody>  <!-- Transaction details -->
                <?php include 'datafetch.php'; ?>
                <?php if ($result->num_rows > 0): ?>
                <?php while($array=mysqli_fetch_row($result)): ?>
                <tr>
                    <th scope="row"><?php echo $array[0];?></th>
                    <td><?php echo $array[1];?></td>
                    <td><?php echo $array[2];?></td>
                    <td><?php echo $array[3];?></td>
					<td><?php echo $array[4];?></td>
					<td><?php echo $array[5];?></td>
                    <td><?php echo $array[6];?></td>
                    <td><?php echo $array[7];?></td>
					
                </tr>
                <?php endwhile; ?>
                <?php else: ?>
                <tr>
                   <td colspan="7" rowspan="1" headers="">No Data Found</td>
                </tr>
                <?php endif; ?>
                <?php mysqli_free_result($result); ?>
              </tbody>
			  </table>
			  
			
			  
        </div>
    </div>        
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	



     <!-- Footer -->
     <footer class="py-5 bg-dark" id="footer-section">
      <div class="container"> <img align= "right"src="img/lg1.png" width="350" height="150">
        <p class="m-0 text-left text-white">Office Address : <br> 2F Net One Center 3rd Avenue, corner 26th St, <br> 1634 Metro Manila, Taguig, Philippines</p>
		<br>
		<p class="m-0 text-left text-white">Contact Details : <br> (+632) 8580 3200 <br>(+63) 918 985 7937 <br><a href=\"mailto:support@firstcircle.com\" data-fc-name=\"footer_support_email\" class=\"lighter-gray\">support@firstcircle.com<br>‍</a> </p>     
		<p class="m-0 text-left text-white">Office Hours : Mon to Fri, 8AM to 6PM</p>     
	 </div>
	
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>