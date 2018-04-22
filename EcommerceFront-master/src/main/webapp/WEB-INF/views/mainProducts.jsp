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
    <div class="main_container" style="padding-bottom: 50px" >
        <h2>Northeastern University Second Hand Market</h2>

        <div style="height:70px">
        <div style="display:inline-block;width:300px"><form action="/search" method="get">
            <input style="height:30px;margin:12px" type="text" name="search" value="${input}" />
            <input style="height:30px;background-color: #d43f3a" type="submit" value="search">
            </form>
        </div>
            <div style="float:right;display:inline-block;width:200px;color:white" class="A">
                <div class="B" >
                    <ul>
                        <li id='li1'><span style="color:white">Order By</span>
                            <div id="C" class="D">
                                <a href="/orderbyid">ID</a>
                                <a href="/orderbyprice">Price</a>

                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

            <%--<from action="/order" method="get">--%>
            <%--<input style="height:30px;background-color: #d43f3a" type="submit" value="order">--%>
            <%--</from>--%>

        <div style="clear:both"></div>

        <%--<table align="center" border="1">--%>
        <%--<thead>--%>
        <%--<tr>--%>
            <%--<th>Product Id</th>--%>
            <%--<th>Description</th>--%>
            <%--<th>Picture</th>--%>
            <%--<th>Stock</th>--%>
            <%--<th>Reserved</th>--%>
            <%--<th>Price</th>--%>
            <%--<th>Add to cart</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <c:forEach items="${allProducts}" var="product1">

            <div style="display:inline-block;width:30%;margin:10px">
                <a href="/main/add/${product1.productId}"><img height="280px" width="280px" style="border-radius:25px" src="${product1.productModel}">
                </a>
                <br>
                <br>
                <div style="padding:20px">
                    <p>&nbsp;&nbsp;genre: ${product1.productBrand} </p>
                    <p>&nbsp;&nbsp;price: ${product1.productMPN}</p></div>
               <%--<a href="/main/add/${product1.productId}">view details</a>--%>
            </div>
            <%--<tr>--%>
                <%--<td>${product1.productId}</td>--%>
                <%--<td>${product1.productBrand}</td>--%>
                <%--<td><img height="250px" width="250px" style="border-radius:25px" src="${product1.productModel}"></td>--%>
                <%--<td>${product1.productStock}</td>--%>
                <%--<td>${product1.reservedStock}</td>--%>
                <%--<td>${product1.productMPN}</td>--%>

            <%--</tr>--%>
        </c:forEach>
        <%--</tbody>--%>
    <%--</table>--%>

    <h3 style="color: #ac2925">${moreThanInStock}</h3>
    </div>
    <%--</div>--%>

    <p><jsp:include page="footer.jsp" /> </p>

</body>
</html>
