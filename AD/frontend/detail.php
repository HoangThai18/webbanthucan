<?php
require_once ('../db/dbhelper.php');
$id = '';
if (isset($_GET['id'])) {
	$id      = $_GET['id'];
	$sql     = 'select * from product where id = '.$id;
	$product = executeSingleResult($sql);
}
?>
<!DOCTYPE html>
<html>
<head>
	<title><?=$product['title']?></title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="stylesfr.css">
</head>
<body>
<div class="navbar">
		<img src="img/logo.jpg" width="100px" height="100px">
		<a lass="nav-link" href="../index2.php">Trang chủ</a>
		<a lass="nav-link" href="../gioithieu.php">Giới thiệu</a>
		<a class="nav-link active" href="#">Thực đơn</a>
		<a lass="nav-link" href="../khuyenmai.php">Khuyến mãi</a>
		<a lass="nav-link" href="../lienhe.php">Liên Hệ</a>
	  </div>	
<div class="slideshow-container">

<div class="mySlides fade">

  <img src="img/hinh.jpg" style="width:100%">
</div>

<div class="mySlides fade">

  <img src="img/lienhe.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <img src="img/nui.jpg" style="width:100%">

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
	slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
	dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); 
}
</script>

	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center"><?=$product['title']?></h2>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-12">
<?=$product['content']?>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>