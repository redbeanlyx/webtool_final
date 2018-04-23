<%--
  Created by IntelliJ IDEA.
  User: redbeanlyx
  Date: 4/22/18
  Time: 10:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
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
                <form action="/admin/login" method="POST" class="form-horizontal">
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
                        <input type="text" class="form-control" id="username" name="login" placeholder="Enter your NUID" required>
                    </div>
                    <div class="input-group input-sm">
                        <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                    </div><br><a href="/admin/login">administrator</a>

                    <br>
                    <div class="form-actions">
                        <input  type="submit"
                                style ="height:50px;border-radius: 10px;background-color: #cb0728; color: white" class="btn btn-block" value="Log in">
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
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

</body>
</html>
