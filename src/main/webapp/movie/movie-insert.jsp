<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String miTitle = request.getParameter("miTitle");
if(miTitle != null && miTitle.length() != 0){
	out.println("miTitle : " + miTitle);
	String miDesc = request.getParameter("miDesc");
	out.println("miDesc : " + miDesc);
	String miGenre = request.getParameter("miGenre");
	out.println("miGenre : " + miGenre);
	String miCredat = request.getParameter("miCredat");
	out.println("miCredat : " + miCredat);
	String miCnt = request.getParameter("miCnt");
	out.println("miCnt : " + miCnt);
	
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO MOVIE_INFO(MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT)";
	sql +=" values('" + miTitle + "','" + miDesc + "','" + miGenre + "',NOW(),0)";
	int result = stmt.executeUpdate(sql);
	if(result == 1){
	%>
	<script>
	alert("등록이 완료되었습니다.");
	location.href="/web/movie/movie-list.jsp";
	</script>
<%	
	}
}
%>

<form>
<table border="1">
	<tr>
		<th>제목</th>
			<td><input type="text" id="miTitle" name="miTitle"></td>
	</tr>
		<tr>
		<th>내용</th>
			<td><textarea id="miDesc" name="miDesc" style="resize:none" cols="22" rows="15"></textarea></td>
	</tr>
		<tr>
		<th>장르</th>
			<td><input type="text" id="miGenre" name="miGenre"></td>
	</tr>
	<tr>
		<th colspan="3"><button>등록</button></th>
	</tr>
	
</table>
</form>
</body>
</html>