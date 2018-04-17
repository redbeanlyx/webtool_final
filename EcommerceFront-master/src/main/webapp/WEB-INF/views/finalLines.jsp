<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Final order lines</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>
    <table border="2">
        <thead>
        <tr>
            <th>Product Id</th>
            <th>Brand</th>
            <th>Model</th>
            <th>MPN</th>>
            <th>Bought Quantity</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${historyLines.orderLines}" var="hisLin">
            <tr>
                <td>${hisLin.product.productId}</td>
                <td>${hisLin.product.productBrand}</td>
                <td>${hisLin.product.productModel}</td>
                <td>${hisLin.product.productMPN}</td>
                <td>${hisLin.boughtQuantity}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
