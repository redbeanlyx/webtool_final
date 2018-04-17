<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My page</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>
    <form:form action="${pageContext.request.contextPath}/my_page" commandName="user" method="post">
        <table>
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
            <tr>
                <td>Password:</td>
                <td><form:password path="password"/></td>
                <td><form:errors path="password"/></td>
            </tr>
        </table>
        <input type="submit" value="Edit">
    </form:form>
<p><jsp:include page="footer.jsp" /> </p>

</body>
</html>
