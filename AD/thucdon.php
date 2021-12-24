<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="styles2.css">
    <title>Document</title>
</head>
<style>
* {box-sizing: border-box}
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 40px;
  width: 50%; /* Four links of equal widths */
  text-align: center;
}

.navbar a:hover {
  background-color: #000;
}

.navbar a.active {
  background-color: red;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
    width: 100%;
    text-align: left;
  }
}
</style>
<body>
<div class="navbar">
		<img src="img/logo.jpg" width="100px" height="100px">
		<a href="index2.php">Trang chủ</a>
		<a href="gioithieu.php">Giới thiệu</a>
		<a href="../AD/frontend/index.php">Thực đơn</a>
		<a href="khuyenmai.php">Khuyến mãi</a>
		<a href="lienhe.php">Liên Hệ</a>
	  </div>
		<div class="jumbotron text-center" >
			<a href="index.html">
			<img src="img/footer.jpg" border="0"/>
			
		  </div>
</body>
</html>