<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>before</h3>
<%
RequestDispatcher rd = request.getRequestDispatcher("/forward/after.jsp");
rd.forward(request, response);
%>
</body>
</html>