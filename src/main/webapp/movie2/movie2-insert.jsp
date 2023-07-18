<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
String miTitle2 = request.getParameter("miTitle2");
if(miTitle2 != null && miTitle2.length() != 0){
	out.println("miTitle2 : " + miTitle2);
	String miDesc2 = request.getParameter("miDesc2");
	out.println("miDesc2 : " + miDesc2);
	String miGenre2 = request.getParameter("miGenre2");
	out.println("miGenre2 : " + miGenre2);
	String miCredat2 = request.getParameter("miCredat2");
	out.println("miCredat2 : " + miCredat2);
	String miCnt2 = request.getParameter("miCnt2");
	out.println("miCnt2 : " + miCnt2);
	
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO MOVIE_INFO2(MI_TITLE2, MI_DESC2, MI_GENRE2 ,MI_CREDAT2 ,MI_CNT2	)";
	sql += " values('" + miTitle2 + "','" + miDesc2 + "','" + miGenre2 + "',NOW(),0)";
	int result = stmt.executeUpdate(sql);
	if(result == 1){
%>
	<script>
		alert("등록이 되었습니다.");
		location.href = "/web/movie2/movie2-list.jsp";
	</script>

	<%
	}
}
%><form>
<table border="1">

		<tr>
			<th>제목</th>
			<td><input type="text" id="miTitle2" name="miTitle2"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="miTitle2" name="miTitle2" style="resize:none"	cols="30" row="15"></textarea></td>
		</tr>
		<tr>
			<th>장르</th>
			<td><input type="text" id="miGenre2" name="miGenre2"></td>
			<th colspan="2"><button>등록</button>
		</tr>
	</table>
	</form>
</body>
</html>