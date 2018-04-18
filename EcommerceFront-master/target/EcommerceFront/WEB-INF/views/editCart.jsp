<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Cart</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>


<div class="small_container" >
    <h2>Edit Cart</h2>
    <form:form action="${pageContext.request.contextPath}/cart/edit/{order_Line_Id}" commandName="orderLine" method="post">
        <table align="center" border="2">
            <tr>
                <td>Orderline ID</td>
                <td><form:input path="orderLineId" readonly="true"/></td>
            </tr>
            <tr>
                <td>Product ID</td>
                <td><form:input path="product.productId" readonly="true"/></td>
            </tr>
            <tr>
                <td>Brand</td>
                <td><form:input path="product.productBrand" readonly="true"/></td>
            </tr>
            <tr>
                <td>Model</td>
                <td><form:input path="product.productModel" readonly="true"/></td>
            </tr>
            <tr>
                <td>Stock</td>
                <td><form:input path="product.productStock" readonly="true"/></td>
            </tr>
            <tr>
                <td>MPN</td>
                <td><form:input path="product.productMPN" readonly="true"/></td>
            </tr>
            <tr>
                <td>Reserved stock</td>
                <td><form:input path="product.reservedStock" readonly="true"/></td>
            </tr>
            <tr>
                <td>Bought quantity</td>
                <td><form:input path="boughtQuantity"/></td>
                <td><form:errors path="boughtQuantity"/></td>
            </tr>
        </table>
        <br>
        <input class="red_button" type="submit" value="Edit">
    </form:form>
</div>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
