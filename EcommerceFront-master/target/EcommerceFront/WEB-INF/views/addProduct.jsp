<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add product</title>

    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>
<div class="small_container">
<form:form action="${pageContext.request.contextPath}/main/add" modelAttribute="product" method="post">
    <h2>Add New Product</h2>
    <table align="center">
            <tr>
                <td>Product category:</td>
                <td><form:input class="edit_input" style="margin:5px" path="productBrand" /></td>
                <td><form:errors path="productBrand" /></td>
            </tr>
            <tr>
                <td>Product picture:</td>
                <td><form:input class="edit_input" style="margin:5px" path="productModel" /></td>
                <td><form:errors path="productModel" /></td>
            </tr>
            <tr>
                <td>Product stock:</td>
                <td><form:input class="edit_input" style="margin:5px" path="productStock" /></td>
                <td><form:errors path="productStock" /></td>
            </tr>
            <tr>
                <td>Product price:</td>
                <td><form:input class="edit_input" style="margin:5px" path="productMPN" /></td>
                <td><form:errors path="productMPN" /></td>
            </tr>
        </table>
        <br>
        <input class="red_button" type="submit" value="Add" />
    </form:form>
</div>
<p><jsp:include page="footer.jsp" /></p>
</body>
</html>
