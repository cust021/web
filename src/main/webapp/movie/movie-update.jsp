<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie update</title>
</head>
<body>
<jsp:include page="/include/header.jsp"></jsp:include>

<%
String miNum = request.getParameter("miNum");

Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM MOVIE_INFO";
sql += " WHERE MI_NUM=" + miNum;
ResultSet rs = stmt.executeQuery(sql);
if(!rs.next()) {
%>
<script>
	alert('이미 삭제된 게시물임');
	history.back();
</script>
<% 	
return;
}
%>
<form action="<%=root%>/movie/movie-update-ok.jsp">
<input type="hidden" name="miNum" value="<%=miNum%>">
<table border="1">
	<tr>
		<th>제목</th>
		<td><input type="text" id="miTitle" name="miTitle" value="<%=rs.getString("MI_TITLE") %>"></td>
	</tr>
	<tr>
		<th>설명</th>
		<td><textarea id="miDesc" name="miDesc" style="resize:none" cols="22" rows="15">
		<%=rs.getString("MI_DESC") %>
		</textarea></td>
	</tr>
	<tr>
		<th>장르</th>
		<td><input type="text" id="miGenre" name="miGenre" value="<%=rs.getString("MI_GENRE") %>"></td>
	</tr>
	<tr>
		<th colspan="2"><button>수정</button></th>
	</tr>
</table>
</body>
</html>