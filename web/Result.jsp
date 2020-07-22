
<%@ page import="vn.edu.nlu.fit.Search.SanPhamDaoIMP" %><%--
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--&lt;%&ndash;<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>&ndash;%&gt;--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
<head>
    <title>Result page</title>
</head>
<style>

</style>

<body>
<%=request.getAttribute("ketqua") != null%>
<c:if test="${ketqua !=null}">
    ${ketqua}

</c:if>
<c:if test="${ketqua ==null}">
    <c:forEach items="${listemp}" var="list">

        ${list.name}
    </c:forEach>

</c:if>
</body>
</html>
