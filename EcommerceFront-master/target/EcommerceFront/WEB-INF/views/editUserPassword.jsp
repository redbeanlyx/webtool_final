<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit user password</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>
<p style="position: absolute; top: 0.1%; right: 8%;"><strong><a href="/info">My page ${userName}</a></strong></p>
<p><c:if test="${pageContext.request.userPrincipal.name != null}" > <p><jsp:include page="logout.jsp" /> </c:if></p>

    <form:form action="${pageContext.request.contextPath}/info/edit/password" commandName="user" method="post">
        <table>
            <tr>
                <td>Your current password:</td>
                <td><form:password path="password"/></td>
                <td><form:errors path="password"/></td>
                <td>${passwordMessage}</td>
            </tr>

            <tr>
                <td>New password:</td>
                <td><input type="password" name="newPassword"/></td>
                <td>${newPassMessage}</td>
            </tr>

            <tr>
                <td>Confirm new password:</td>
                <td><input type="password" name="confirmNewPassword"/></td>
                <td>${confirmPassMessage}</td>
                <td>${notEqualsPasswords}</td>
            </tr>

        </table>
        <input type="submit" value="Edit pass">
    </form:form>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>


<%--<P>--%>
    <%--Enter your name:--%>
    <%--<input type="text" name="name"--%>
           <%--value="<c:out value="${param.name}"/>" />--%>
    <%--<br />--%>
    <%--<c:if test="${noName}">--%>
        <%--<small><font color="red">--%>
            <%--Note: you must enter a name--%>
        <%--</font></small>--%>
    <%--</c:if>--%>
<%--</p>--%>