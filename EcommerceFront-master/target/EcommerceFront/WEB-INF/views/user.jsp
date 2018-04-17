<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>DBA page</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>
	Dear <strong>${userName}</strong>, Welcome to User Page.
	<form:form action="${pageContext.request.contextPath}/logout" method="post">
		<input type="submit" value="Logout" />
	</form:form>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>