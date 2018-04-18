<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
		<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
	</head>

	<body>
		<div id="mainWrapper">
			<div class="login-container">
				<div class="login-card">
					<div class="login-form">
						<img src="https://my.northeastern.edu/documents/20143/0/logo2.png/91751185-ec6c-4acb-216c-3e8cd5ec5050?t=1506661531227" />
						<br>
						<p>Northeastern Enterprise Authentication Service</p>
						<br>
						<c:url var="loginUrl" value="/login" />

						<form action="${loginUrl}" method="post" class="form-horizontal">
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
								<input type="text" class="form-control" id="username" name="login" placeholder="Enter Login" required>
							</div>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
								<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
							</div>
							<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
							<br>
							<div class="form-actions">
								<input  type="submit"
									style ="height:50px;border-radius: 10px;background-color: #cb0728; color: white" class="btn btn-block" value="Log in">
							</div>
						</form>
                        <br>
						<p>For security reasons, please Log Out and Exit your web browser when you are done accessing services that require authentication!</p>

						<br>
						<p>© 2014 Northeastern University</p>
					</div>
				</div>
			</div>
		</div>
		<p><jsp:include page="footer.jsp" /> </p>
		<%--https://my.northeastern.edu/documents/20143/0/welcome.jpeg/5fc95da9-2484-7f8d-5544-18c571fb0876?t=1506661052931--%>
		<%--https://my.northeastern.edu/documents/20143/0/logo2.png/91751185-ec6c-4acb-216c-3e8cd5ec5050?t=1506661531227--%>
		<%--https://my.northeastern.edu/image/journal/article?img_id=3763222&t=1511279654399--%>
	</body>
</html>