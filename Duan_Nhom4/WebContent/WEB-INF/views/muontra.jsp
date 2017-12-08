<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<title>W3.CSS Template</title>
<!--script export excel  -->
<script type="text/javascript">
	var xport = {
		_fallbacktoCSV : true,
		toXLS : function(tableId, filename) {
			this._filename = (typeof filename == 'undefined') ? tableId
					: filename;

			//var ieVersion = this._getMsieVersion();
			//Fallback to CSV for IE & Edge
			if ((this._getMsieVersion() || this._isFirefox())
					&& this._fallbacktoCSV) {
				return this.toCSV(tableId);
			} else if (this._getMsieVersion() || this._isFirefox()) {
				alert("Not supported browser");
			}

			//Other Browser can download xls
			var htmltable = document.getElementById(tableId);
			var html = htmltable.outerHTML;

			this._downloadAnchor("data:application/vnd.ms-excel"
					+ encodeURIComponent(html), 'xls');
		},
		toCSV : function(tableId, filename) {
			this._filename = (typeof filename === 'undefined') ? tableId
					: filename;
			// Generate our CSV string from out HTML Table
			var csv = this._tableToCSV(document.getElementById(tableId));
			// Create a CSV Blob
			var blob = new Blob([ csv ], {
				type : "text/csv"
			});

			// Determine which approach to take for the download
			if (navigator.msSaveOrOpenBlob) {
				// Works for Internet Explorer and Microsoft Edge
				navigator.msSaveOrOpenBlob(blob, this._filename + ".csv");
			} else {
				this._downloadAnchor(URL.createObjectURL(blob), 'csv');
			}
		},
		_getMsieVersion : function() {
			var ua = window.navigator.userAgent;

			var msie = ua.indexOf("MSIE ");
			if (msie > 0) {
				// IE 10 or older => return version number
				return parseInt(ua.substring(msie + 5, ua.indexOf(".", msie)),
						10);
			}

			var trident = ua.indexOf("Trident/");
			if (trident > 0) {
				// IE 11 => return version number
				var rv = ua.indexOf("rv:");
				return parseInt(ua.substring(rv + 3, ua.indexOf(".", rv)), 10);
			}

			var edge = ua.indexOf("Edge/");
			if (edge > 0) {
				// Edge (IE 12+) => return version number
				return parseInt(ua.substring(edge + 5, ua.indexOf(".", edge)),
						10);
			}

			// other browser
			return false;
		},
		_isFirefox : function() {
			if (navigator.userAgent.indexOf("Firefox") > 0) {
				return 1;
			}

			return 0;
		},
		_downloadAnchor : function(content, ext) {
			var anchor = document.createElement("a");
			anchor.style = "display:none !important";
			anchor.id = "downloadanchor";
			document.body.appendChild(anchor);

			// If the [download] attribute is supported, try to use it

			if ("download" in anchor) {
				anchor.download = this._filename + "." + ext;
			}
			anchor.href = content;
			anchor.click();
			anchor.remove();
		},
		_tableToCSV : function(table) {
			// We'll be co-opting `slice` to create arrays
			var slice = Array.prototype.slice;

			return slice.call(table.rows).map(function(row) {
				return slice.call(row.cells).map(function(cell) {
					return '"t"'.replace("t", cell.textContent);
				}).join(",");
			}).join("\r\n");
		}
	};
</script>
<!--script export excel  -->

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
			<i class="fa fa-bars"></i>  Menu
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
				class="fa fa-remove fa-fw"></i>  Close Menu</a> <a href="demo.html"
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
		<p>
			<button id="btnExport" onclick="javascript:xport.toCSV('myTable');">
				Export</button>
			<em>&nbsp;&nbsp;&nbsp;Xuất file ra excel</em>
		</p>
		<form:form class="form-horizontal" modelAttribute="muontra"
			action="muontra.poly">
			<table id="myTable">
				<tr>
					<th>Mã mượn trả</th>
					<th>Mã sinh viên</th>
					<th>Ngày mượn</th>
					<th>Ngày hẹn trả</th>
					<th>Ngày trả</th>
					<th>Action</th>
				</tr>
				<c:forEach var="u" items="${muontras}">
					<tr>
						<td>${u.mamuontra}</td>
						<td>${u.sinhvien.masinhvien}</td>
						<td>${u.ngaymuon}</td>
						<td>${u.ngayhentra}</td>
						<td>${u.ngaytra}</td>
						<td><a href="#" data-toggle="modal"
							data-target="#myModal1${u.mamuontra}" class="offer-img"><button
									type="button" class="btn btn-info">Edit</button></a></td>
					</tr>
					<!-- Modal -->
					<div class="modal fade" id="myModal1${u.mamuontra}" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel">
						<div class="modal-dialog" role="document">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Sửa mượn trả</h4>
								</div>
								<div class="modal-body modal-spa">
									<form:form class="form-horizontal" modelAttribute="muontra"
										action="muontra.poly">
										<div class="container">

											<div class="form-group">
												<label class="control-label col-sm-2" for="email">Mã
													mượn trả :</label>
												<div class="col-sm-10" style="width: 500px">
													<form:input path="mamuontra" class="form-control"
														placeholder="Mã mượn trả" value="${u.mamuontra}"
														required="required"
														pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{4,20}$"
														title="VD: PD01754"></form:input>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-2" for="pwd">Mã
													sinh viên :</label>
												<div class="col-sm-10" style="width: 500px">
													<form:select items="${sinhvien}" path="sinhvien.masinhvien"
														itemValue="masinhvien" itemLabel="tensinhvien"
														value="${u.sinhvien.masinhvien} " required="required"></form:select>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-2" for="pwd">Ngày
													mượn:</label>
												<div class="col-sm-10" style="width: 500px">
													<form:input path="ngaymuon" type="date"
														class="form-control" placeholder="Mã mượn trả"
														value="${u.ngaymuon}"></form:input>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-2" for="pwd">Ngày
													hẹn trả :</label>
												<div class="col-sm-10" style="width: 500px">
													<form:input path="ngayhentra" type="date"
														class="form-control" placeholder="Mã mượn trả"
														value="${u.ngayhentra}" required="required"></form:input>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-2" for="pwd">Ngày
													trả :</label>
												<div class="col-sm-10" style="width: 500px">
													<form:input path="ngaytra" type="date" class="form-control"
														placeholder="Mã mượn trả" value="${u.ngaytra}"
														required="required"></form:input>
												</div>
											</div>
											<div class="col-sm-offset-2 col-sm-10">

												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<form:button name="btnUpdate" class="btn btn-success">
													<img src="resources/images/if_edit1.png" width="24"
														height="24" alt="" />Sửa
										</form:button>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<form:button name="btnDelete" class="btn btn-success"
													onclick="return confirm('Bạn có muốn xóa hay không?');">
													<img src="resources/images/if_edit1.png" width="24"
														height="24" alt="" />xóa
										</form:button>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</div>

										</div>
									</form:form>


								</div>
								<div class="clearfix"></div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</table>
		</form:form>
		<!-- Khi danh sách bằng 0 thì không hiện chọn page -->
		<c:if test="${danhsach!=0}">
			<ul class="pagination" id="pagination"
				style="float: right; box-shadow: 1px 1px 5px #888888;">
				<li class="page-item first"><a
					href="muontra.poly?phantrangbtn&page=${trangdau }"
					class="page-link">Trang đầu</a></li>
				<li class="page-item prev"><a
					href="muontra.poly?phantrangbtn&page=<c:if test="${vitrihientai==1 }">${vitrihientai }</c:if><c:if test="${vitrihientai>1 }">${vitrihientai-1 }</c:if>"
					class="page-link"><</a></li>

				<c:forEach items="${listSoLuongTrang }" var="u">
					<li class="page-item"><a
						<c:if test="${u == vitrihientai}">style="background-color: rgba(0,0,0,.15);"</c:if>
						href="muontra.poly?phantrangbtn&page=${u }" class="page-link">${u }</a></li>
				</c:forEach>

				<li class="page-item next"><a
					href="muontra.poly?phantrangbtn&page=<c:if test="${vitrihientai==trangcuoi }">${vitrihientai }</c:if><c:if test="${vitrihientai<trangcuoi }">${vitrihientai+1 }</c:if>"
					class="page-link">></a></li>
				<li class="page-item last"><a
					href="muontra.poly?phantrangbtn&page=${trangcuoi }"
					class="page-link">Trang cuối</a></li>
			</ul>
			<br>
			<br>
		</c:if>
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
							<h2 style="color: #390">Thêm Mượn Trả</h2>
							<form:form class="form-horizontal" modelAttribute="muontra"
								action="muontra.poly">
								<div class="container">

									<div class="form-group">
										<label class="control-label col-sm-2" for="email">Mã
											mượn trả :</label>
										<div class="col-sm-10" style="width: 500px">
											<form:input path="mamuontra" class="form-control"
												placeholder="Mã mượn trả" required="required"
												pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{4,20}$"
												title="VD: PD01754"></form:input>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Mã
											sinh viên :</label>
										<div class="col-sm-10" style="width: 500px">
											<form:select items="${sinhvien}" path="sinhvien.masinhvien"
												itemValue="masinhvien" itemLabel="tensinhvien"
												required="required"></form:select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Ngày
											mượn:</label>
										<div class="col-sm-10" style="width: 500px">
											<form:input path="ngaymuon" type="date" class="form-control"
												placeholder="Mã mượn trả" required="required"></form:input>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Ngày
											hẹn trả :</label>
										<div class="col-sm-10" style="width: 500px">
											<form:input path="ngayhentra" type="date"
												class="form-control" placeholder="Mã mượn trả"
												required="required"></form:input>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Ngày
											trả :</label>
										<div class="col-sm-10" style="width: 500px">
											<form:input path="ngaytra" type="date" class="form-control"
												placeholder="Mã mượn trả" required="required"></form:input>
										</div>
									</div>
									<div class="col-sm-offset-2 col-sm-10">


										<form:button name="btnInsert" class="btn btn-success">
											<img src="resources/images/if_Add_to_basket_132292.png"
												width="24" height="24" alt="" />Thêm
										</form:button>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
								</div>
							</form:form>
						</div>


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