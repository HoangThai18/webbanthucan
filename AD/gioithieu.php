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
	* {
  box-sizing: border-box;
}

/* Set a background color */
body {
  background-color: #474e5d;
  font-family: Helvetica, sans-serif;
}

/* The actual timeline (the vertical ruler) */
.timeline {
  position: relative;
  max-width: 1200px;
  margin: 0 auto;
}

/* The actual timeline (the vertical ruler) */
.timeline::after {
  content: '';
  position: absolute;
  width: 6px;
  background-color: white;
  top: 0;
  bottom: 0;
  left: 50%;
  margin-left: -3px;
}

/* Container around content */
.container {
  padding: 10px 40px;
  position: relative;
  background-color: inherit;
  width: 50%;
}

/* The circles on the timeline */
.container::after {
  content: '';
  position: absolute;
  width: 25px;
  height: 25px;
  right: -17px;
  background-color: white;
  border: 4px solid #FF9F55;
  top: 15px;
  border-radius: 50%;
  z-index: 1;
}

/* Place the container to the left */
.left {
  left: 0;
}

/* Place the container to the right */
.right {
  left: 50%;
}

/* Add arrows to the left container (pointing right) */
.left::before {
  content: " ";
  height: 0;
  position: absolute;
  top: 22px;
  width: 0;
  z-index: 1;
  right: 30px;
  border: medium solid white;
  border-width: 10px 0 10px 10px;
  border-color: transparent transparent transparent white;
}

/* Add arrows to the right container (pointing left) */
.right::before {
  content: " ";
  height: 0;
  position: absolute;
  top: 22px;
  width: 0;
  z-index: 1;
  left: 30px;
  border: medium solid white;
  border-width: 10px 10px 10px 0;
  border-color: transparent white transparent transparent;
}

/* Fix the circle for containers on the right side */
.right::after {
  left: -16px;
}

/* The actual content */
.content {
  padding: 20px 30px;
  background-color: white;
  position: relative;
  border-radius: 6px;
}

@media screen and (max-width: 600px) {

  .timeline::after {
    left: 31px;
  }

  .container {
    width: 100%;
    padding-left: 70px;
    padding-right: 25px;
  }


  .container::before {
    left: 60px;
    border: medium solid white;
    border-width: 10px 10px 10px 0;
    border-color: transparent white transparent transparent;
  }


  .left::after, .right::after {
    left: 15px;
  }

  .right {
    left: 0%;
  }
}
</style>
<body>
<div class="navbar">
		<img src="img/logo.jpg" width="100px" height="100px">
		<a href="lienhe.php">Liên Hệ</a>
		<a href="khuyenmai.php">Khuyến mãi</a>
		<a href="../AD/frontend/index.php">Thực đơn</a>
		<a href="gioithieu.php">Giới thiệu</a>
		<a href="index2.php">Trang chủ</a>
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
    <p style="font-size: 50px; text-align: center;font-weight: bold; background-color: rgb(77, 233, 207);">GIỚI THIỆU VỀ FASTWAY</p>
    <div class="timeline" style="background: url(img/gioithieu.jpg);height: 900px;">
		<div class="container left">
		  <div class="content">
			<h2>2020</h2>
			<p>Có mặt tại hơn 28 quốc gia với chuỗi 4,000 nhà hàng tại khắp các châu lục.
				FASTWAY phục vụ hơn 25 triệu người tiêu dùng trên toàn cầu, không chỉ đảm bảo mang đến cho họ những bữa ăn ngon,
				an toàn vệ sinh, mà còn làm họ hài lòng với dịch vụ của FASTWAY.
				FASTWAY Việt Nam cam kết áp dụng tiêu chuẩn của FASTWAY toàn cầu, đó là: Quality - Chất lượng, Service - Dịch vụ, Cleanliness - Vệ Sinh & Values - Giá trị.
			</p>
		  </div>
		</div>
		<div class="container right">
		  <div class="content">
			<h2>2019</h2>
			<p>Với mong muốn FASTWAY trở thành chuỗi cửa hàng thức ăn nhanh hàng đầu Việt Nam.FASTWAY
				sẽ thiết lập một chuẩn mực mới cho ngành công nghiệp nhà hàng phục vụ thức ăn nhanh tại Việt Nam, 
				mang đến cho khách hàng những trải nghiệm độc nhất chỉ có tại chuỗi nhà hàng của chúng tôi.
			</p>
		  </div>
		</div>
		<div class="container left">
			<div class="content">
			  <h2>2018</h2>
			  <p>Thành lập vào tháng 4 năm 2018 với 4 cửa hàng đặt tại thành phố Hồ Chí Minh.
				  FASTWAY đặt nên móng là cửa hàng thức ăn nhanh tại Việt Nam và là cơ sở để trở thành 1 trong những cửa hàng thức ăn nhanh được ưa chuộng nhất Việt Nam nói riêng và toàn cầu nói chung.
			  </p>
			</div>
		  </div>
	  </div>
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
      setTimeout(showSlides, 2000); 
    }
    </script>

</body>
</html>