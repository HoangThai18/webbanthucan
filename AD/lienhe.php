<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Document</title>
</head>
<style>
	* {box-sizing: border-box;}
	body {font-family: Verdana, sans-serif;}
	.mySlides {display: none;}
	img {vertical-align: middle;}

	.slideshow-container {
	  max-width: 1000px;
	  position: relative;
	  margin: auto;
	}
	

	.text {
	  color: #f2f2f2;
	  font-size: 15px;
	  padding: 8px 12px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	
	
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 0;
	}
	

	.dot {
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	
	.active {
	  background-color: #717171;
	}
	

	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 1.5s;
	  animation-name: fade;
	  animation-duration: 1.5s;
	}
	
	@-webkit-keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	

	@media only screen and (max-width: 300px) {
	  .text {font-size: 11px}
	}
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
		<table>
			<div class="slideshow-container" >

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
		 <tr>
			 <td colspan="2"></td>
			 <td colspan="2">
		 <div style="border: 1px solid #000000;">
				<br><a style="font-size: 30px;background-color: rgb(150, 165, 211); font-weight: bold;">Liên hệ với chúng tôi</a><br><br>
		<input style="width: 40%; " type="text" placeholder="Họ và tên"><br><br>
		<input style="width: 40%;" type="email" placeholder="email@domain.com"><br><br>
		<input style="width: 40%;" type="number" placeholder="0900xxxxxx"><br><br>
		<input style="width: 40%;" type="text"placeholder="Liên hệ dịch vụ"><br><br>
		<textarea placeholder="Liên hệ dịch vụ" style="border: 2px solid  #005b96;" name="" id="" cols="78%" rows="20"></textarea><br>
		<input style="width: 213px;
		height: 48px;text-align: center;right: 60%;
		background-color: red;outline: none;color: white;" type="submit" value="Submit">
	</div>
	
	<br><br><div class="lh" style="background-color: wheat;min-height: 100px;position:absolute;padding: 15px; ;" >
		<span style="color:rgb(243, 124, 124);font-weight: bold;font-size: 20px;">Trụ sở FasWay Việt Nam</span><br><br>
		<span >Địa chỉ: 2-6 Bis Điện Biên Phủ, P.Đa Kao, Quận 1, Tp Hồ Chí Minh, Điện thoại: (028) 38 203040</span><br><br>
		<span >Tổng đài Chăm sóc khách hàng: 1900 9001</span><br><br>
		<span >Email: feedback@vn.fw.com</span>
	</div>
	<div class="jumbotron text-center" style="margin-bottom:0" style="background-color:white" style="width: 2000px;">
		<p style="background-color: white;">Footer</p>
	  </div></td>
	<BR><BR><img src="img/cofe.jpg" class="cofe">
	
</body>

</html>