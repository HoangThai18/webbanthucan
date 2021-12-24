<?php
require_once ('../db/dbhelper.php');
$id = '';
if (isset($_GET['id'])) {
	$id       = $_GET['id'];
	$sql      = 'select * from category where id = '.$id;
	$category = executeSingleResult($sql);
	if ($category != null) {
		$name = $category['name'];
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Category Page - <?=$name?></title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="stylesfr.css">
</head>
<body style="background-color:;">
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
				<h2 class="text-center"><?=$name?></h2>
			</div>
			<div class="panel-body">
				<div class="row">
<?php
$sql         = 'select product.id, product.title, product.price, product.thumbnail, product.updated_at, category.name category_name from product left join category on product.id_category = category.id where category.id = '.$id;
$productList = executeResult($sql);

foreach ($productList as $item) {
	echo '<div class="col-lg-3">
				<a href="detail.php?id='.$item['id'].'"><img src="'.$item['thumbnail'].'" style="width: 100%"></a>
				<a href="detail.php?id='.$item['id'].'"><p>'.$item['title'].'</p></a>
				<p style="color: red; font-weight: bold;">'.$item['price'].'</p>
			</div>';
}
?>
				</div>
			</div>
		</div>
	</div>
</body>
</html>