<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
String root2 = request.getContextPath();
%>
<div>
		<a href="<%=root%>/">Home</a>
		<a href="<%=root%>/login.jsp">Login</a>
		<a href="<%=root%>/join.jsp">Join</a>
		<a href="<%=root%>/board.jsp">Board</a>
		<a href="<%=root2%>/user.jsp">User</a>
</div>

