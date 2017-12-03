<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="login">
		<div class="main-agileits">
			<div class="form-w3agile form1">
				<h3>Đăng ký</h3>
				<form:form action="actionbook.poly" modelAttribute="book">
					<form:errors path="*" element="ul" />
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i>
						<form:input path="id" placeholder="User Name" />

						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<form:input path="name" placeholder="Tên sinh viên" />

						<div class="clearfix"></div>
					</div>
					<form:button class="btn btn-success">
						Đăng ký
						</form:button>

				</form:form>


			</div>

		</div>
	</div>
</body>
</html>