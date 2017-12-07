<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<title>W3.CSS Template</title>
<link rel="stylesheet" type="text/css" href="resources/css/css.css">
<link rel="stylesheet" type="text/css" href="resources/css/table.css">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</style>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #99CCFF
}

th {
	background-color: #144E32;
	color: white;
}

form-horizontal {
	line-height: 5px;
}
</style>
<body class="w3-light-grey">

	<!-- Top container -->
	<div class="w3-bar w3-top w3-black w3-large" style="z-index: 4">
		<button
			class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey"
			onclick="w3_open();">
			<i class="fa fa-bars"></i>  Menu
		</button>
		<span class="w3-bar-item w3-right">Xin Chào Admin&nbsp;<img
			src="resources//images/if_User_group_132235.png" width="24"
			height="24" alt="" /></span>
	</div>

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidebar">
		<br>
		<center>
			<div class="w3-container w3-row">

				<div class="w3-col s8 w3-bar">
					<span><h3 style="color: #906">
							<b>Thư Viện</b>
						</h3> <strong>FPT Polytechnic</strong></span><br>

					<div class="header-ri">
						<ul class="social-top">
							<li><a href="#" class="icon facebook"><i
									class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
							<li><a href="#" class="icon twitter"><i
									class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
							<li><a href="#" class="icon pinterest"><i
									class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>

						</ul>
					</div>

				</div>
			</div>
		</center>
		<hr>

		<div class="w3-bar-block">
			<a href="#"
				class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
				onclick="w3_close()" title="close menu"><i
				class="fa fa-remove fa-fw"></i>  Close Menu</a> <a href="demo.poly"
				class="w3-bar-item w3-button w3-padding w3-blue"><i
				class="fa fa-users fa-fw"></i>  Trang Chủ</a> <a
				href="quanlynhanvien.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-eye fa-fw"></i>  Quản Lý Nhân Viên</a> <a
				href="sinhvien.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-users fa-fw"></i>  Quản Lý Sinh Viên</a> <a
				href="sach.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bullseye fa-fw"></i>  Quản Lý Sách</a> <a
				href="danhmuc.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-diamond fa-fw"></i>  Quản Lý danh mục</a> <a href="ma.poly"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i>  Quản Lý Mã</a> <a href="dmls.poly"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i>  Quản Lý Danh Mục Loại Sách</a> <a
				href="muontra.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bank fa-fw"></i>  Quản Lý Mượn Trả</a> <a
				href="muontract.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-history fa-fw"></i>  Quản Lý mượn trả chi tiết </a>



		</div>
	</nav>


	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px; margin-top: 43px;">

		<!-- Header -->
		<header class="w3-container" style="padding-top: 22px">
			<h5>
				<b><i class="fa fa-dashboard"></i> Danh sách Truy Cập</b>
			</h5>
			<div id="search" style="float: right">

				<form class="searchform" action="seachsv">

					<input class="s" id="myInput" onkeyup="myFunction()" type="text"
						name="data" placeholder="Tìm kiếm" />

				</form>

			</div>

		</header>
		<br>
		<div class="w3-row-padding w3-margin-bottom">
			<div class="w3-quarter">
				<div class="w3-container w3-red w3-padding-16">
					<div class="w3-left">
						<i class="fa fa-comment w3-xxxlarge"></i>
					</div>
					<div class="w3-right">
						<h3>52</h3>
					</div>
					<div class="w3-clear"></div>
					<h4>Tin Nhắn</h4>
				</div>
			</div>
			<div class="w3-quarter">
				<div class="w3-container w3-blue w3-padding-16">
					<div class="w3-left">
						<i class="fa fa-eye w3-xxxlarge"></i>
					</div>
					<div class="w3-right">
						<h3>99</h3>
					</div>
					<div class="w3-clear"></div>
					<h4>Lượt xem</h4>
				</div>
			</div>
			<div class="w3-quarter">
				<div class="w3-container w3-teal w3-padding-16">
					<div class="w3-left">
						<i class="fa fa-share-alt w3-xxxlarge"></i>
					</div>
					<div class="w3-right">
						<h3>23</h3>
					</div>
					<div class="w3-clear"></div>
					<h4>Chia sẻ</h4>
				</div>
			</div>
			<div class="w3-quarter">
				<div class="w3-container w3-orange w3-text-white w3-padding-16">
					<div class="w3-left">
						<i class="fa fa-users w3-xxxlarge"></i>
					</div>
					<div class="w3-right">
						<h3>50</h3>
					</div>
					<div class="w3-clear"></div>
					<h4>Người dùng</h4>
				</div>
			</div>
		</div>

		<div class="w3-panel">
			<div class="w3-row-padding" style="margin: 0 -16px">
				<div class="w3-third">
					<h5>Bảng tin</h5>
				</div>
				<div class="w3-twothird">
					<h5>Thông báo</h5>
					<table class="w3-table w3-striped w3-white">
						<tr>
							<td><i class="fa fa-user w3-text-blue w3-large"></i></td>
							<td>Hơn 90 Lượt truy cập mới.</td>

						</tr>
						<tr>
							<td><i class="fa fa-bell w3-text-red w3-large"></i></td>
							<td>50 thư mới</td>

						</tr>
						<tr>
							<td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
							<td>40 Người đăng ký tài khoản mới</td>

						</tr>
						<tr>
							<td><i class="fa fa-comment w3-text-red w3-large"></i></td>
							<td>7 câu trả lời mới</td>

						</tr>
						<tr>
							<td><i class="fa fa-bookmark w3-text-blue w3-large"></i></td>
							<td>Đã thêm 5 đầu sách mới</td>

						</tr>

					</table>
				</div>
			</div>
		</div>
		<hr>
		<div class="w3-container">
			<h5>Thống kê chung</h5>
			<p>Khách truy cập</p>
			<div class="w3-grey">
				<div class="w3-container w3-center w3-padding w3-green"
					style="width: 25%">+25%</div>
			</div>

			<p>Tài khoản Mới</p>
			<div class="w3-grey">
				<div class="w3-container w3-center w3-padding w3-orange"
					style="width: 50%">50%</div>
			</div>

			<p>Đánh giá</p>
			<div class="w3-grey">
				<div class="w3-container w3-center w3-padding w3-red"
					style="width: 75%">75%</div>
			</div>
		</div>
		<hr>


		<hr>
		<div class="w3-container">
			<h5>Người truy cập gần đây</h5>
			<ul class="w3-ul w3-card-4 w3-white">
				<li class="w3-padding-16"><img src="resources/images/m13.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Huyên</span><br></li>
				<li class="w3-padding-16"><img src="resources/images/m14.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Hoài</span><br></li>
				<li class="w3-padding-16"><img src="resources/images/m15.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Đồng</span><br></li>
				<li class="w3-padding-16"><img src="resources/images/m16.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Hùng</span><br></li>
			</ul>
		</div>
		<hr>


		<br>


		<!-- Footer -->


		<!-- End page content -->
	</div>

	<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}
</script>

</body>
</html>
