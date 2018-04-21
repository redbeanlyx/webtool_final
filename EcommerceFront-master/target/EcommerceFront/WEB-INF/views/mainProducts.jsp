<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>

</head>
<body>

    <header style ="margin:0;background-color: #d43f3a">
        <p style="position: absolute; top: 60px; right: 5%;"><c:if test="${pageContext.request.userPrincipal.name == null}" > <a href="/login"><span style="color:white" >Login</span></a> </c:if></p>
        <p style="position: absolute; top: 60px; right: 10%;"><c:if test="${pageContext.request.userPrincipal.name == null}" > <a href="/registration"><span style="color:white" >Registration</span></a> </c:if></p>


        <p style="position: absolute; top: 60px; right: 26%;color: white"><c:if test="${pageContext.request.userPrincipal.name != null}" > <strong>Welcome, <a href="/info"><span style="color:white;">${userName}</span></a></strong></c:if></p>
        <p><c:if test="${pageContext.request.userPrincipal.name != null}" > <p><jsp:include page="logout.jsp" /> </c:if></p>
        <p style="position: absolute; top: 60px; right: 3%;color: white"><c:if test="${pageContext.request.userPrincipal.name != null}" > <strong><a href="/cart">Cart</a></strong></c:if></p>
        <img src="https://my.northeastern.edu/image/layout_set_logo?img_id=3730210&t=1523953377868" class="app-image" alt="hhhmm">
    </header>


    <%--<a href="/admin">Admin page</a><br>--%>
    <%--<a href="/user">User Page</a><br></br>--%>
    <%--<div style="text-align: center; width:100%" align="center">--%>
    <div class="main_container" >
    <h3>All products list:</h3>

        <table align="center" border="1">
        <thead>
        <tr>
            <th>Product Id</th>
            <th>Description</th>
            <th>Picture</th>
            <th>Stock</th>
            <th>Reserved</th>
            <th>Price</th>
            <th>Add to cart</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${allProducts}" var="product1">
            <tr>
                <td>${product1.productId}</td>
                <td>${product1.productBrand}</td>
                <td><img style="border-radius:5px" height="250px" width="250px" style="border-radius:25px" src="${product1.productModel}"></td>
                <td>${product1.productStock}</td>
                <td>${product1.reservedStock}</td>
                <td>${product1.productMPN}</td>
                <td><a href="/main/add/${product1.productId}">Add to cart</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <h3 style="color: #ac2925">${moreThanInStock}</h3>
    </div>
    <%--</div>--%>

    <p><jsp:include page="footer.jsp" /> </p>

</body>
</html>
