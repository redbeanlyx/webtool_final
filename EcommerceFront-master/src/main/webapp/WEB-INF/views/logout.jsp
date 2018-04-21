<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form action="${pageContext.request.contextPath}/logout" method="post" cssStyle="position: absolute; top: 46px; right: 8%">
        <input type="submit" value="Logout" />
    </form:form>
</body>
</html>
