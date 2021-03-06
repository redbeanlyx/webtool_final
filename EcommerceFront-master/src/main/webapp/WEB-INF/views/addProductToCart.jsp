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


<%--<p><c:if test="${pageContext.request.userPrincipal.name != null}" > <p><jsp:include page="logout.jsp" /> </c:if></p>--%>
<div class="small_container" style="width:58%">
    <h2>Add To Cart</h2>
    <br>
    <br>
    <form:form action="${pageContext.request.contextPath}/main/add/${product.productId}" modelAttribute="orderLines"  method="post">
           <table align="center" style="padding:10px;text-align: center">
            <%--<tr>--%>
                <%--<td>Product ID</td>--%>
                <%--<td>${product.productId}</td>--%>
            <%--</tr>--%>

            <tr>

                <td colspan="2"><img height="250px" width="250px" style="margin:20px;border-radius: 25px" src="${product.productModel}"></td>
                <td rowspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    quantity:<form:input type="number" style="width:50px" path="boughtQuantity"/>
                    <br>
                    <form:errors path="boughtQuantity"/><br>

                    &nbsp;&nbsp;<input class="red_button" style="margin-left:35%;height:45px;width:200px" type="submit" value="Add to cart">
                </td>

            </tr>
                <tr>
                    <td>category:</td>
                    <td>&nbsp;&nbsp;${product.productBrand}</td>
                </tr>
            <tr>
                <td>Reserved:</td>
                <td>&nbsp;&nbsp;${product.reservedStock}</td>
            </tr>
            <tr>
                <td>Stock:</td>
                <td>&nbsp;&nbsp;${product.productStock}</td>
            </tr>


        </table>

    </form:form>
    <br>
    <br>
    <div style="margin:0 auto;width:500px;text-align:left">
<%--<c:if test="">--%>
    <form style="align:center;" action="/comment"  method="get">
        <fieldset>
            <legend>write custom review:</legend>

        1<input type="radio" name="star" value="1" onclick="showone(1)" >2<input type="radio" name="star" value="2" onclick="showone(2)" >
        3<input type="radio" name="star" onclick="showone(3)" value="3">4<input type="radio" name="star" onclick="showone(4)" value="4">5<input onclick="showone(5)" type="radio" name="star" value="5">
        <br>
            <div id="showmanystars"></div>
        <textarea type="text" style="width:500px;height:70px" name="newcomment"></textarea>
        <br><br>
        anonymous:<input type="checkbox" name="anonymous" value="yes">
        <input type="submit" style="border-color: indianred;color: indianred" value="submit">
        <input type="hidden" name ="productid" value="${product.productId}">

        </fieldset>
    </form>
<%--</c:if>--%>

    <c:forEach items="${comments}" var="comment">

        username:${comment.username} <br><c:forEach begin="1" end="${comment.star}">
        <img src="/static/image/star.png" alt="test" width="24px" height="24px">
    </c:forEach><br>
        <textarea readonly="readonly" style="color:dimgray;width:500px;height:70px">
        ${comment.content}
        </textarea>
        <br>
    </c:forEach>
    </div>
</div>

<script>

    function showone(num){

       var s="";
        for(var i=0; i<num; i++){
            s +='<img src="/static/image/star.png" alt="test" width="24px" height="24px">';
        }
    document.getElementById("showmanystars").innerHTML=s;
    }


</script>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
