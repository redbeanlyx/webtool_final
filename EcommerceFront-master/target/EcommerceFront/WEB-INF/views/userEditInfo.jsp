<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Info</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>

<div class="small_container" >
    <h2>Edit My Profile</h2>
    <form:form action="${pageContext.request.contextPath}/info/edit/${user.id}" commandName="user" method="post">
        <table align="center">
            <tr>
                <td>First name:</td>
                <td><form:input path="firstName"/></td>
                <td><form:errors path="firstName"/></td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td><form:input path="lastName"/></td>
                <td><form:errors path="lastName"/></td>
            </tr>
            <tr>
                <td>Login:</td>
                <td><form:input path="login"/></td>
                <td><form:errors path="login"/></td>
            </tr>
        </table>
        <br>
        <input class="red_button" type="submit" value="Edit">
    </form:form>
</div>

<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
