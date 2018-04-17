<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
</head>
<body>

<p><jsp:include page="header.jsp" /> </p>

    <table>
        <tr>
            <td>First name:</td>
            <td>${fName}</td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td>${lName}</td>
        </tr>
        <tr>
            <td>Login:</td>
            <td>${login}</td>
        </tr>
    </table>
    <br>
    <a href="/info/edit/${userId.id}">Edit your info</a> <br>
    <a href="/info/edit/password">Edit your password</a>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
