<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add product to cart</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>

<p style="position: absolute; top: 0.1%; right: 8%;"><strong><a href="/info">My page ${userName}</a></strong></p>
<%--<p><c:if test="${pageContext.request.userPrincipal.name != null}" > <p><jsp:include page="logout.jsp" /> </c:if></p>--%>
<div class="small_container" >
    <form:form action="${pageContext.request.contextPath}/main/add/${productId}" modelAttribute="orderLines"  method="post">
        <table align="center">
            <tr>
                <td>Product ID</td>
                <td>${product.productId}</td>
            </tr>
            <tr>
                <td>Brand</td>
                <td>${product.productBrand}</td>
            </tr>
            <tr>
                <td>Model</td>
                <td>${product.productModel}</td>
            </tr>
            <tr>
                <td>Reserved Stock</td>
                <td>${product.reservedStock}</td>
            </tr>
            <tr>
                <td>Stock</td>
                <td>${product.productStock}</td>
            </tr>
            <tr>
                <td>Added quantity</td>
                <td><form:input path="boughtQuantity"/></td>
                <td><form:errors path="boughtQuantity"/></td>
            </tr>

        </table>
        <br>
        <br>
        <input class="red_button" style="height:45px;width:200px" type="submit" value="Add to cart">
    </form:form>
</div>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
