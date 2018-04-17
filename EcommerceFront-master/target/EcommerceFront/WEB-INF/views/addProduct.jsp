<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add product</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
</head>
<body>
<p><jsp:include page="header.jsp" /> </p>
<form:form action="${pageContext.request.contextPath}/main/add" modelAttribute="product" method="post">
        <table>
            <tr>
                <td>Product brand:</td>
                <td><form:input path="productBrand" /></td>
                <td><form:errors path="productBrand" /></td>
            </tr>
            <tr>
                <td><form:input path="productModel" /></td>
                <td><form:errors path="productModel" /></td>
            </tr>
            <tr>
                <td><form:input path="productStock" /></td>
                <td><form:errors path="productStock" /></td>
            </tr>
            <tr>
                <td><form:input path="productMPN" /></td>
                <td><form:errors path="productMPN" /></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="Add" />
    </form:form>
<p><jsp:include page="footer.jsp" /> </p>
</body>
</html>
