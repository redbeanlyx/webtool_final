<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>
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


<form:form action="${pageContext.request.contextPath}/registration" modelAttribute="user" method="post">
  <table>
    <tr>
      <td>First Name:</td>
      <td><form:input style="width: 220px" class="form-control" path="firstName"/></td>
    </tr>
    <tr><td></td><td>&nbsp;<form:errors path="firstName"/></td></tr>

    <tr>
      <td>Second Name:</td>
      <td><form:input  style="width: 220px" class="form-control" path="lastName"/></td>
    </tr>
    <tr><td></td><td>&nbsp;<form:errors path="lastName"/></td></tr>
    <tr>
      <td>NU ID:</td>
      <td><form:input  style="width: 220px" class="form-control" path="login"/></td>
    </tr>
    <tr><td></td><td>&nbsp;<form:errors  path="login"/></td></tr>
    <tr>
      <td>Password:</td>
      <td><form:password style="width: 220px" class="form-control" path="password"/></td>
    </tr>
    <tr><td></td><td>&nbsp;<form:errors color="red" path="password"/></td></tr>
    <tr>
      <td>Confirm password:</td>
      <td><input  style="margin: 5px;width: 220px" class="form-control" type="password" name="passwordC"/></td>

    </tr>
    <tr><td></td><td>${password2Error}</td></tr>
    <tr><td></td><td>${passwordsDontEquals}</td></tr>
    </table>
  <br>

  <input style ="height:50px;border-radius: 10px;background-color: #cb0728; color: white" class="btn btn-block" type="submit" value="Registration" />
</form:form>
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
