<%--
  Created by IntelliJ IDEA.
  User: redbeanlyx
  Date: 4/23/18
  Time: 1:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>
<div class="small_container">
<h3>Order History</h3>
<table align="center" border="2">
    <thead>
    <tr>
        <th>Order Final ID</th>
        <th>Created Data</th>
        <th>Show Lines</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orderHistory}" var="ordHisLine">
        <tr>
            <td>${ordHisLine.orderFinal.orderId}</td>
            <td>${ordHisLine.orderFinal.createdData}</td>
            <td><a href="/cart/final/lines/${ordHisLine.orderFinal.orderId}">Show</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
