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
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="resources/css/style.css">
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
</style>
<link href="bootstrap.css" rel="stylesheet" type="text/css">
<body class="w3-light-grey">

	<!-- Top container -->
	<div class="w3-bar w3-top w3-black w3-large" style="z-index: 4">
		<button
			class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey"
			onclick="w3_open();">
			<i class="fa fa-bars"></i>  Menu
		</button>
		<span class="w3-bar-item w3-right">Xin Chào Admin&nbsp;<img
			src="resources/images/if_User_group_132235.png" width="24" height="24"
			alt="" /></span>
	</div>

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidebar">
		<br>
		<div class="w3-container w3-row">
			<div class="w3-col s4">
				<img src="/w3images/avatar2.png" class="w3-circle w3-margin-right"
					style="width: 46px">
			</div>
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
		<hr>

		<div class="w3-bar-block">
			<a href="#"
				class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
				onclick="w3_close()" title="close menu"><i
				class="fa fa-remove fa-fw"></i>  Close Menu</a> <a href="demo.html"
				class="w3-bar-item w3-button w3-padding w3-blue"><i
				class="fa fa-users fa-fw"></i>  Trang Chủ</a> <a
				href="quanlynhanvien.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-eye fa-fw"></i>  Quản Lý Nhân Viên</a> <a
				href="sinhvien.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-users fa-fw"></i>  Quản Lý Sinh Viên</a> <a
				href="sach.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bullseye fa-fw"></i>  Quản Lý Sách</a> <a
				href="danhmuc.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-diamond fa-fw"></i>  Quản Lý danh mục</a> <a href="Ma.html"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i>  Quản Lý Mã</a> <a href="dmls.html"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i>  Quản Lý Danh Mục Loại Sách</a> <a
				href="muontra.html" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bank fa-fw"></i>  Quản Lý Mượn Trả</a> <a
				href="muontract.html" class="w3-bar-item w3-button w3-padding"><i
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
				<b><i class="fa fa-dashboard"></i> Danh sách Nhân Viên</b>
			</h5>


			<a href="#" data-toggle="modal" data-target="#myModal1"
				class="offer-img"><button type="button" class="btn btn-success">
					<img src="resources/images/if_edit1.png" width="24" height="24" alt="" />Thêm
				</button></a>



			<div id="search" style="float: right">

				<form class="searchform" action="" method="get">

					<input class="s"
						onfocus="if (this.value == 'Tìm kiếm theo MSV') {this.value = '';}"
						onblur="if (this.value == '') {this.value = 'Tìm kiếm ';}"
						type="text" name="s" value="Tìm kiếm" /> <input
						class="searchsubmit" type="submit" value="Tìm Kiếm" />

				</form>

			</div>

		</header>
		<br>

		<table>
			<tr>
				<th>Mã Nhân viên</th>
				<th>Tên Nhân viên</th>
				<th>Giới tính</th>
				<th>Số điện thoại</th>
				<th>Ngày sinh</th>
				<th>Email</th>
				<th>Chức Vụ</th>
				<th>Tên Đăng Nhập</th>
				<th>Mật khẩu</th>
				<th>Action</th>
			</tr>
			<td>huyen</td>
			<td>huyen</td>
			<td>huyen</td>
			<td>huyen</td>
			<td>huyen</td>
			<td>huyen</td>
			<td>huyen</td>
			<td>huyen</td>
			<td>huyen</td>
			<td><a href="#">Edit</a>|<a href="#">Del</a></td>
		</table>






	</div>
	<script src="resources/js/jquery-1.11.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
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
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">

					<div class="col-md-7 span-1 ">
						<div class="container">
							<h2 style="color: #390">Thêm Nhân Viên</h2>
							<form class="form-horizontal" action="/action_page.php"
								style="width: 800px">

								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Mã nhân
										viên</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Mã nhân viên" name="pwd">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Tên
										nhân viên</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Tên nhân viên" name="pwd">
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Giới
										tính:</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Giới tính:" name="pwd">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Số điện
										thoại</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Số điện thoại" name="pwd">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Ngày
										sinh</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Ngày sinh" name="pwd">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Email:</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Email" name="pwd">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Chức
										vụ:</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Chức vụ" name="pwd">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Tên
										đăng nhập</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Tên đăng nhập" name="pwd">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-2" for="pwd">Mật
										khẩu</label>
									<div class="col-sm-10" style="width: 500px">
										<input type="password" class="form-control" id="pwd"
											placeholder="Mật khẩu" name="pwd">
									</div>
								</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10" style="text-align: center">

								<button type="button" class="btn btn-success">
									<img src="resources/images/if_Add_to_basket_132292.png" width="24"
										height="24" alt="" />Thêm
								</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-success">
									<img src="resources/images/if_edit1.png" width="24" height="24" alt="" />Sửa
								</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-success">
									<img src="resources/images/if_Delete.png" width="24" height="24"
										alt="" />Xóa
								</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

							</div>
						</div>
						</form>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
</body>
</html>
