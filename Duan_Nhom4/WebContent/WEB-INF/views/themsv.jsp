<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<title>W3.CSS Template</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/css.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
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
		<span class="w3-bar-item w3-right">Welcome Admin</span>
	</div>

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidebar">
		<br>
		<div class="w3-container w3-row">
			<div class="w3-col s4"></div>
			<div class="w3-col s8 w3-bar">
				<span>Welcome, <strong>Mike</strong></span><br> <a href="#"
					class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a> <a
					href="#" class="w3-bar-item w3-button"><i class="fa fa-user"></i></a>
				<a href="../index.html" class="w3-bar-item w3-button"><img
					src="resources/images/index.png" width="20" height="20" alt="" /></i></a>
			</div>
		</div>
		<hr>
		<div class="w3-container">
			<h5>Quản lý</h5>


		</div>
		<div class="w3-bar-block">
			<a href="#"
				class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
				onclick="w3_close()" title="close menu"><i
				class="fa fa-remove fa-fw"></i>  Close Menu</a> <a href="demo.html"
				class="w3-bar-item w3-button w3-padding w3-blue"><i
				class="fa fa-users fa-fw"></i>  Trang Chủ</a> <a
				href="quanlynhanvien.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-eye fa-fw"></i>  Quản Lý Nhân Viên</a> <a
				href="themnv.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm
				Nhân Viên</a> <a href="sinhvien.html"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-users fa-fw"></i>  Quản Lý Sinh Viên</a> <a
				href="themsv.html" class="w3-bar-item w3-button w3-padding w3-blue">Thêm
				Sinh Viên</a> <a href="sach.html"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bullseye fa-fw"></i>  Quản Lý Sách</a> <a
				href="themsach.html"
				class="w3-bar-item w3-button w3-padding w3-blue">Thêm Sách</a> <a
				href="danhmuc.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-diamond fa-fw"></i>  Quản Lý danh mục</a> <a
				href="themdanhmuc.html"
				class="w3-bar-item w3-button w3-padding w3-blue">Thêm danh mục </a>

			<a href="Ma.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i>  Quản Lý Mã</a> <a href="themma.html"
				class="w3-bar-item w3-button w3-padding w3-blue">Thêm Mã</a> <a
				href="dmls.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i>  Quản Lý Danh Mục Loại Sách</a> <a
				href="them_dmls.html"
				class="w3-bar-item w3-button w3-padding w3-blue">Thêm Danh Mục
				Loại Sách</a> <a href="muontra.html"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bank fa-fw"></i>  Quản Lý Mượn Trả</a> <a
				href="themmuontra.html"
				class="w3-bar-item w3-button w3-padding w3-blue">Thêm Mượn trả</a> <a
				href="muontract.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-history fa-fw"></i>  Quản Lý mượn trả chi tiết </a> <a
				href="them_mtct.html"
				class="w3-bar-item w3-button w3-padding w3-blue">Thêm mượn trả
				chi tiết </a>


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
				<b><i class="fa fa-dashboard"></i> Quyền điều khiển của tôi</b>
			</h5>
		</header>
		<form:form class="form-horizontal" modelAttribute="sinhvien"
			action="themsv.poly">
			<div class="container">
				<h2>Thêm Sinh Viên</h2>
				<div class="form-group">
					<label class="control-label col-sm-2">Mã sinh viên:</label>
					<div class="col-sm-10">
						<form:input path="masinhvien" class="form-control"
							placeholder="Mã sinh viên"></form:input>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Tên sinh
						viên:</label>
					<div class="col-sm-10">
						<form:input path="tensinhvien" class="form-control"
							placeholder="Tên sinh viên" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Giới tính:</label>
					<div class="col-sm-10">
						<form:input path="gioitinh" class="form-control"
							placeholder="Gioi Tinh" />
					</div>

				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Số điện
						thoại:</label>
					<div class="col-sm-10">
						<form:input path="sdt" class="form-control"
							placeholder="Số điện thoại" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Ngày sinh:</label>
					<div class="col-sm-10">
						<form:input path="ngaysinh" class="form-control"
							placeholder="Ngày sinh" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Email:</label>
					<div class="col-sm-10">
						<form:input path="email" class="form-control"
							placeholder="Tên đăng nhập" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Hình ảnh:</label>
					<div class="col-sm-10">
						<form:input path="hinhanh" class="form-control"
							placeholder="Tên đăng nhập" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Mật khẩu:</label>
					<div class="col-sm-10">
						<form:input path="matkhau" class="form-control"
							placeholder="mật khẩu" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">

						<form:button name="btnInsert" class="btn btn-primary">Thêm</form:button>
						<form:button name="btnUpdate" class="btn btn-primary">Sửa </form:button>
						<form:button name="btnDelete" class="btn btn-primary">Xóa</form:button>
						<form:button name="button" class="btn btn-primary">Tìm Kiếm</form:button>
					</div>
				</div>
			</div>
			<center>
					<h1 style="color: red;">${message }</h1>
				</center>
				
</form:form>


	</div>




	<br>


	<!-- Footer -->


	<!-- End page content -->



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
