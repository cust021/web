<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>test list2</h3>
<%
Object obj = request.getAttribute("strList");
List<String> list2 = (List<String>)obj;

for(String str : list2){
	out.println(str + "<br>");
}
%>
</body>
</html>