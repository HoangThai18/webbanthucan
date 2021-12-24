
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Trang chủ</title>
</head>
<style>
	
</style>
<body >
<div class="navbar">
		<img src="img/logo.jpg" width="100px" height="100px">
		<a href="lienhe.php">Liên Hệ</a>
		<a href="khuyenmai.php">Khuyến mãi</a>
		<a href="../AD/frontend/index.php">Thực đơn</a>
		<a href="gioithieu.php">Giới thiệu</a>
		<a href="index.php">Trang chủ</a>
	  </div>

	<br><div class="slideshow-container">

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

</body>
</html>