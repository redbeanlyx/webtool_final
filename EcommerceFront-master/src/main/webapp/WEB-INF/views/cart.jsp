<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>

<div class="main_container" >
    <h3>Finalize Your Order</h3>
    <table align="center"border="0">
        <thead>

        <tr>

            <th>Product id&nbsp;</th>
            <th>Brand&nbsp;</th>
            <th>Picture</th>
            <th>Stock&nbsp;</th>
            <th>Price&nbsp;</th>
            <th>quantity&nbsp;</th>
            <th>Edit line&nbsp;</th>
            <th>Delete line&nbsp;</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>&nbsp;</td>

        </tr>
        <c:forEach items="${allLines}" var="line">
            <tr>

                <td>${line.product.productId}</td>
                <td>${line.product.productBrand}</td>
                <td><img height="250px" width="250px" style="border-radius:25px" src="${line.product.productModel}"></td>
                <td>${line.product.productStock}</td>
                <td>${line.product.productMPN}</td>
                <td>${line.boughtQuantity}</td>
                <td><a href="/cart/edit/${line.orderLineId}">Edit</a></td>
                <td><a href="/cart/delete/${line.orderLineId}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <h3 style="color: #ac2925">${moreThanStock}</h3>
    <h3 style="color: #ac2925">${nullValue}</h3>
<div style="text-align:right">
    total price: <div id="total" style="display:inline-block" >${total}</div>
<input type="text" id="promotion" /><input type="submit" value="submit" onclick="discount()" >
    <p style="color:indianred" id="wrong"></p>

    <form:form action="${pageContext.request.contextPath}/cart/finalize_order" commandName="orderLines" method="post">
        <input class="red_button" type="submit" value="Finalize order">
    </form:form>
</div>

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
<script>

    function discount()
    {

        var promotion=  document.getElementById("promotion").value;

        if(promotion=="123"){
            document.getElementById("total").innerHTML = Number(document.getElementById("total").innerHTML) * 0.8;
            document.getElementById("promotion").setAttribute("readonly","readonly");
        }else{
            document.getElementById("wrong").innerHTML="wrong promotion code";
        }

    }

</script>

</body>
</html>
