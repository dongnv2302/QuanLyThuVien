<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title>Thư Viện FPT Polytechnic | Tủ Sách CNTT</title>
<script src="resources/js/jquery-1.11.1.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/jquery.mycart.js"></script>
<script src="resources/js/jquery.zoomtoo.js"></script>
<link href="resources/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<link href="resources/css/font-awesome.css" rel='stylesheet'
	type='text/css' />
<link href="resources/css/jstarbox.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="resources/mos-css/mos-style.css" rel='stylesheet'
	type='text/css' />

<script src="resources/js/easing.js"></script>
<script src="resources/js/easyResponsiveTabs.js"></script>
<script src="resources/js/jstarbox.js"></script>
<script src="resources/js/modernizr.custom.js"></script>
<script src="resources/js/move-top.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											});
						});
	});
</script>
</head>
<body>
	<div class="header">

		<div class="container">

			<div class="logo">
				<h1>
					<a href="index.html"><b>F<br>P<br>T
					</b>Thư Viện<span>Cao đẳng FPT polytechnic</span></a>
				</h1>

			</div>
			<div class="head-t">
				<ul class="card">
					<li></li>
					<li><a href="login.html"><i class="fa fa-user"
							aria-hidden="true"></i>Login</a></li>
					<li></li>
					<li></li>
				</ul>
			</div>

			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i
							class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i
							class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i
							class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i
							class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>
			</div>


			<div class="nav-top">
				<nav class="navbar navbar-default">

					<div class="navbar-header nav_2">
						<button type="button"
							class="navbar-toggle collapsed navbar-toggle1"
							data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>


					</div>
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li class=" active"><a href="index.html" class="hyper "><span>Home</span></a></li>

							<li class="dropdown "><a href="#"
								class="dropdown-toggle  hyper" data-toggle="dropdown"><span>Sách<b
										class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">

												<li><a href="cntt.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>CNTT</a></li>
												<li><a href="tienganh.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Tiếng Anh</a></li>


											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="marketing.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Marketing</a></li>
												<li><a href="marketing.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Du lich</a></li>


											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="cntt.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Tài liệu
														dự án đồ án</a></li>
												<li><a href="tienganh.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Tài liệu
														tham khảo</a></li>


											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="kitchen.html"><img src="images/sach1.png"
												class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#"
								class="dropdown-toggle hyper" data-toggle="dropdown"><span>Nội
										quy <b class="caret"></b>
								</span></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="noiquy.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i> Giờ làm
														việc </a></li>


											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="noiquy.html"> <i
														class="fa fa-angle-right" aria-hidden="true"></i>Thủ tục
														mượn trả sách
												</a></li>


											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="noiquy.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i> Thủ tục
														đăng ký thẻ thành viên</a></li>


											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="care.html"><img src="images/sach1.png"
												class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#"
								class="dropdown-toggle hyper" data-toggle="dropdown"><span>Tra
										cứu tài liệu<b class="caret"></b>
								</span></a>
								<ul class="dropdown-menu multi multi2">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="muontra.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Lịch sử
														mượn sách</a></li>

											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="thanhly.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>sách
														thanh lý</a></li>


											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="muontra.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Vi phạm</a></li>


											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="hold.html"><img src="images/sach1.png"
												class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>

							<li><a href="lienhe.html" class="hyper"> <span>Liên
										hệ</span></a></li>

						</ul>
					</div>
				</nav>
				<div class="cart"></div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="resources/images/ba.jpg" alt="First slide"></a>

			</div>
			<div class="item">
				<img class="second-slide " src="resources/images/ba1.jpg" alt="Second slide"></a>

			</div>
			<div class="item">
				<img class="third-slide " src="resources/images/ba2.jpg" alt="Third slide"></a>

			</div>
		</div>

	</div>
	<!--content-->
	<div class="content-top offer-w3agile">
		<div class="container ">
			<div class="spec ">
				<h3>Sách CNTT</h3>
				<div class="ser-t">
					<b></b> <span><i></i></span> <b class="line"></b>
				</div>
			</div>
			<div class=" con-w3l wthree-of">
			<c:forEach var="u" items="${cntts}">
				<div class="col-md-3 pro-1">
					<div class="col-m">
						<a href="#" data-toggle="modal" data-target="#myModal1${u.maloaisach}"
							class="offer-img"><img src="<c:url value="/resources/images/${u.anhbia}"/>" width="199px" height="253px" alt="">
							<div class="offer">
								<p>
									<span>Hot</span>
								</p>
							</div>
						
						<div class="mid-1">
							<div class="women">
								<h6>${u.tensach}</h6>
							</div>
						</div>
						</a>
					</div>
				</div>
				<div class="modal fade" id="myModal1${u.maloaisach}" tabindex="-1" role="dialog"
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
					<div class="col-md-5 span-2">
						<div class="item">
							<img src="<c:url value="/resources/images/${u.anhbia}"/>" class="img-responsive" alt="">
						</div>
					</div>
					<div class="col-md-7 span-1 ">
						<h3>${u.tensach}</h3>
						<p class="in-para">Sách ${u.danhmuc.tendanhmuc}</p>
						<div class="price_single">
							<span class="reducedfrom "><del></del>Giá: ${u.giasach} VNĐ</span>

							<div class="clearfix"></div>
						</div>
						<h4 class="quick">GIỚI THIỆU SÁCH:</h4>
						
						<p class="quick_desc">Số trang: ${u.sotrang} </br>${u.mota}</p>

					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
				</c:forEach>
			</div>
			 
			<div class="clearfix"></div>
			<c:if test="${danhsach!=0}">
	<ul class="pagination" id="pagination" style="float: right;box-shadow: 1px 1px 5px #888888;">
	<li class="page-item first"><a href="CNTT.poly?phantrangbtn&page=${trangdau }" class="page-link">Trang đầu</a></li>
	<li class="page-item prev"><a href="CNTT.poly?phantrangbtn&page=<c:if test="${vitrihientai==1 }">${vitrihientai }</c:if><c:if test="${vitrihientai>1 }">${vitrihientai-1 }</c:if>" class="page-link"><</a></li>
	
	<c:forEach items="${listSoLuongTrang }" var="u">
	<li class="page-item"><a <c:if test="${u == vitrihientai}">style="background-color: rgba(0,0,0,.15);"</c:if>  href="cntt.poly?phantrangbtn&page=${u }" class="page-link">${u }</a></li>
	</c:forEach>
	
	<li class="page-item next"><a href="CNTT.poly?phantrangbtn&page=<c:if test="${vitrihientai==trangcuoi }">${vitrihientai }</c:if><c:if test="${vitrihientai<trangcuoi }">${vitrihientai+1 }</c:if>" class="page-link">></a></li>
	<li class="page-item last"><a href="CNTT.poly?phantrangbtn&page=${trangcuoi }" class="page-link">Trang cuối</a></li>
</ul>
</c:if>
		</div>
		

	</div>
	



	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-grid">
				<h3>Thư viện FPT</h3>
				<p>mang tri thức đến gần bên bạn</p>
			</div>
			<div class="col-md-3 footer-grid ">
				<h3>Menu</h3>
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="cntt.html">Sách </a></li>
					<li><a href="noiquy.html">Nội Quy</a></li>
					<li><a href="muontra.html">Tra cứu tài liệu</a></li>
					<li><a href="lienhe.html">Liên hệ</a></li>

				</ul>
			</div>
			<div class="col-md-3 footer-grid ">
				<h3>Dịch vụ</h3>
				<ul>
					<li><a href="noiquy.html">Điều khoản mượn trả sách</a></li>
					<li><a href="muontra.html">Lịch sử mượn trả sách</a></li>


				</ul>
			</div>
			<div class="col-md-3 footer-grid">
				<h3>Tài khoản</h3>
				<ul>
					<li><a href="login.html">Đăng nhập</a></li>
					<li><a href="login.html">Đăng ký</a></li>
					<li><a href="login.html">Quên mật khẩu</a></li>

				</ul>
			</div>
			<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2>
					<a href="index.html"><b>F<br>P<br>T
					</b>Thư Viện<span>Cao đẳng FPT polytechnic</span></a>
				</h2>
				<p class="fo-para">Bạn càng đọc nhiều càng biết nhiều. Bạn càng
					học nhiều bạn càng biết nhiều</p>
				<ul class="social-fo">
					<li><a href="#" class=" face"><i class="fa fa-facebook"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" twi"><i class="fa fa-twitter"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" pin"><i class="fa fa-pinterest-p"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" dri"><i class="fa fa-dribbble"
							aria-hidden="true"></i></a></li>
				</ul>
				<div class=" address">
					<div class="col-md-4 fo-grid1">
						<p>
							<i class="fa fa-home" aria-hidden="true"></i>137 Nguyễn Thị Thập
							,Đà Nẵng.
						</p>
					</div>
					<div class="col-md-4 fo-grid1">
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i>+01689132259 ,
							+099999999
						</p>
					</div>
					<div class="col-md-4 fo-grid1">
						<p>
							<a href="mailto:Fptpolytechnic@example.com"><i
								class="fa fa-envelope-o" aria-hidden="true"></i>fptpolytechnic@example1.com</a>
						</p>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
			<div class="copy-right">
				<p>&copy; 2017 Thư viện FPT. All Rights Reserved | Design by FPT
					polytechnic</p>
			</div>
		</div>
	</div>
	<!-- //footer-->

	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- //smooth scrolling -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script type='text/javascript' src="js/jquery.mycart.js"></script>
	<script type="text/javascript">
		$(function() {

			var goToCartIcon = function($addTocartBtn) {
				var $cartIcon = $(".my-cart-icon");
				var $image = $(
						'<img width="30px" height="30px" src="'
								+ $addTocartBtn.data("image") + '"/>').css({
					"position" : "fixed",
					"z-index" : "999"
				});
				$addTocartBtn.prepend($image);
				var position = $cartIcon.position();
				$image.animate({
					top : position.top,
					left : position.left
				}, 500, "linear", function() {
					$image.remove();
				});
			}

			$('.my-cart-btn').myCart({
				classCartIcon : 'my-cart-icon',
				classCartBadge : 'my-cart-badge',
				affixCartIcon : true,
				checkoutCart : function(products) {
					$.each(products, function() {
						console.log(this);
					});
				},
				clickOnAddToCart : function($addTocart) {
					goToCartIcon($addTocart);
				},
				getDiscountPrice : function(products) {
					var total = 0;
					$.each(products, function() {
						total += this.quantity * this.price;
					});
					return total * 1;
				}
			});

		});
	</script>

	<!-- product -->
	
</body>
</html>