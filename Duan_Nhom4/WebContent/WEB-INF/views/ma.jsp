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
			<i class="fa fa-bars"></i> Menu
		</button>
		<span class="w3-bar-item w3-right">Xin Chào Admin&nbsp;<img
			src="resources/images/if_User_group_132235.png" width="24"
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
				class="fa fa-remove fa-fw"></i> Close Menu</a> <a href="demo.html"
				class="w3-bar-item w3-button w3-padding w3-blue"><i
				class="fa fa-users fa-fw"></i> Trang Chủ</a> <a
				href="quanlynhanvien.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-eye fa-fw"></i> Quản Lý Nhân Viên</a> <a
				href="sinhvien.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-users fa-fw"></i> Quản Lý Sinh Viên</a> <a href="sach.poly"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bullseye fa-fw"></i> Quản Lý Sách</a> <a
				href="danhmuc.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-diamond fa-fw"></i> Quản Lý danh mục</a> <a href="ma.poly"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i> Quản Lý Mã</a> <a href="dmls.poly"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bell fa-fw"></i> Quản Lý Danh Mục Loại Sách</a> <a
				href="muontra.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bank fa-fw"></i> Quản Lý Mượn Trả</a> <a
				href="muontract.poly" class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-history fa-fw"></i> Quản Lý mượn trả chi tiết </a>
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
				<b><i class="fa fa-dashboard"></i> Danh sách Mượn Trả</b>
			</h5>
			<a href="#" data-toggle="modal" data-target="#myModal1"
				class="offer-img"><button type="button" class="btn btn-success">
					<img src="resources/images/if_edit1.png" width="24" height="24"
						alt="" />Thêm
				</button></a>
			<div id="search" style="float: right">
				<form class="searchform" action="" method="get">
					<input class="s" id="myInput" onkeyup="myFunction()" type="text"
						name="s" placeholder="Tìm kiếm" />
				</form>
			</div>
		</header>
		<br>
		<form:form class="form-horizontal" modelAttribute="ma"
			action="ma.poly">
			<table id="myTable">
				<tr>
					<th>Mã Số Sách</th>
					<th>Mã Loại Sách</th>
					<th>Tình Trạng</th>
					<th>Action</th>
				</tr>
				<c:forEach var="u" items="${mas}">
					<tr>
						<td>${u.masosach}</td>
						<td>${u.sach.maloaisach}</td>
						<td>${u.tinhtrang}</td>
						<td><a href="ma.poly?lnkEdit&masosach=${u.masosach}">Edit</a></td>
					</tr>
				</c:forEach>
			</table>
		</form:form>
	</div>
	<script src="resources/js/jquery-1.11.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script>
		// Get the Sidebar var mySidebar = document.getElementById("mySidebar"); // Get the DIV with overlay effect var overlayBg = document.getElementById("myOverlay"); // Toggle between showing and hiding the sidebar, and add overlay effect function w3_open() { if (mySidebar.style.display === 'block') { mySidebar.style.display = 'none'; overlayBg.style.display = "none"; } else { mySidebar.style.display = 'block'; overlayBg.style.display = "block"; } } // Close the sidebar with the close button function w3_close() { mySidebar.style.display = "none"; overlayBg.style.display = "none"; }
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
							<h2 style="color: #390">Thêm Mã</h2>
							<form:form class="form-horizontal" modelAttribute="ma"
								action="ma.poly">
								<div class="container">
									<div class="form-group">
										<label class="control-label col-sm-2" for="email">Mã
											Số Sách:</label>
										<div class="col-sm-10" style="width: 500px">
											<form:input path="masosach" class="form-control"
												placeholder="Mã Số Sách" required="required"
												pattern="[a-zA-Z0-9]+" title="VD: mss1"></form:input>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Mã
											Loại Sách :</label>
										<div class="col-sm-10" style="width: 500px">
											<form:select items="${sach}" path="sach.maloaisach"
												itemValue="maloaisach" itemLabel="tensach"></form:select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Tình
											Trạng </label>
										<div class="col-sm-10" style="width: 500px">
											<form:input path="tinhtrang" class="form-control"
												placeholder="Mã mượn trả"></form:input>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<form:button name="btnInsert" class="btn btn-success">
											<img src="resources/images/if_Add_to_basket_132292.png"
												width="24" height="24" alt="" />Thêm </form:button>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<form:button name="btnUpdate" class="btn btn-success">
											<img src="resources/images/if_edit1.png" width="24"
												height="24" alt="" />Sửa </form:button>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<form:button name="btnDelete" class="btn btn-success"
											onclick="return confirm('Bạn có muốn xóa hay không?');">
											<img src="resources/images/if_edit1.png" width="24"
												height="24" alt="" />xóa </form:button>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
								</div>
						</div>
						</form:form>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<script>
			function myFunction() {
				var input, filter, table, tr, td, i;
				input = document.getElementById("myInput");
				filter = input.value.toUpperCase();
				table = document.getElementById("myTable");
				tr = table.getElementsByTagName("tr");
				for (i = 0; i < tr.length; i++) {
					td = tr[i].getElementsByTagName("td")[0];
					if (td) {
						if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
							tr[i].style.display = "";
						} else {
							tr[i].style.display = "none";
						}
					}
				}
			}
		</script>
</body>
</html>