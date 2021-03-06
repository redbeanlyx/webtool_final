<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Order Line</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>

<div class="small_container" >
<h2>Delete Order Line</h2>
    <table align="center">
        <tr>
            <td>Product ID</td>
            <td>${orderLine.product.productId}</td>
        </tr>
        <tr>
            <td>Brand</td>
            <td>${orderLine.product.productBrand}</td>
        </tr>
        <tr>
            <td>Model</td>
            <td><img style="border-radius:25px" height="250px" width="250px" src="${orderLine.product.productModel}"></td>
        </tr>
        <tr>
            <td>MPN</td>
            <td>${orderLine.product.productMPN}</td>
        </tr>
        <tr>
            <td>Bought Quantity</td>
            <td>${orderLine.boughtQuantity}</td>
        </tr>
    </table>
<br>
    <form:form action="${pageContext.request.contextPath}/cart/delete/${orderLine.orderLineId}" commandName="orderLine" method="post">
        <input class="red_button" type="submit" value="Delete Line">
    </form:form>
</div>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
