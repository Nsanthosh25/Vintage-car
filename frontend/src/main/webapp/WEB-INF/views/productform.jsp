<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<c:url value="/admin/addproduct" var="url"></c:url>

<form:form action="${url}" modelAttribute="product" enctype="multipart/form-data">
<pre>
Enter Product Name	:<form:input path="productname"/> <form:errors path="productname" cssStyle="color:red"></form:errors>
Enter Description	:<form:input path="description"/> <form:errors path="description" cssStyle="color:red"></form:errors>
Enter Price		:<form:input path="price"/> <form:errors path="price" cssStyle="color:red"></form:errors>
Enter Quantity		:<form:input path="quantity"/>  <form:errors path="quantity" cssStyle="color:red"></form:errors>

Upload image		:<form:input path="image" type="file"/>
<input type="Submit" value="Add Product">
</pre>
</form:form>
</div>

</body>
</html>
