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
    <div style="margin:0 auto;width:800px">
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
    total price: <div id="total" style="display:inline-block" >${total}</div><br>
promotion code:<input type="text" id="promotion" /><input type="submit" value="submit" style="border:indianred;border-color:indianred;color:indianred"onclick="discount()" >
    <p style="color:indianred" id="wrong"></p>


</div>

        <form:form action="${pageContext.request.contextPath}/cart/finalize_order" commandName="orderLines" method="post">
            <input class="red_button" type="submit" value="Finalize order">
        </form:form>

        <a href="/orderhistory" style="color:palevioletred">view my order history</a>
    </div>
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
