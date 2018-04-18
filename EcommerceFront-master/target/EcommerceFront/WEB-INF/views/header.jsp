<%--
  Created by IntelliJ IDEA.
  User: redbeanlyx
  Date: 2018/4/17
  Time: 下午2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header style ="background-color: #d43f3a">
    <%--<p style="position: absolute; top: 60px; right: 26%;color: white"><c:if test="${pageContext.request.userPrincipal.name != null}" > <strong>my information</strong></c:if></p>--%>
        <%--<p style="position: absolute; top: 60px; right: 5%;"><c:if test="${pageContext.request.userPrincipal.name == null}" > <a href="/login"><span style="color:white" >Login</span></a> </c:if></p>--%>
        <%--<p style="position: absolute; top: 60px; right: 10%;"><c:if test="${pageContext.request.userPrincipal.name == null}" > <a href="/registration"><span style="color:white" >Registration</span></a> </c:if></p>--%>
        <p style="position: absolute; top: 45px; right: 16%;"><strong><a href="/info"><img style="border-radius: 25px" width="45px" height="45px" src="/static/image/profile.jpg" alt="test"/></a></strong></p>
        <p><c:if test="${pageContext.request.userPrincipal.name != null}" > <p><jsp:include page="logout.jsp" /> </c:if></p>
        <p style="position: absolute; top: 60px; right: 3%;color: white"><c:if test="${pageContext.request.userPrincipal.name != null}" > <strong><a href="/cart">Cart</a></strong></c:if></p>
        <a href="/main" ><img src="https://my.northeastern.edu/image/layout_set_logo?img_id=3730210&t=1523953377868" class="app-image" alt="hhhmm"></a>
        <%--<img src="https://my.northeastern.edu/image/user_male_portrait?img_id=0&img_id_token=ishWjORQElaNpoBV7wVxPrf6oSg%3D&t=1523990764768">--%>
</header>
</body>
</html>
