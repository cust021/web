
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/kd";
	String user = "root";
	String password = "kd1824java";
	Connection con = DriverManager.getConnection(url, user, password);
	Statement stmt = con.createStatement();
	String sql = "SELECT * FROM BOARD_INFO";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<%=("<tr>")%>
		<%=("<td>" + rs.getInt("BI_NUM") + "</td>")%>
		<%=("<td>" + rs.getString("BI_TITLE") + "</td>")%>
		<%=("<td>" + rs.getString("BI_WRITER") + "</td>")%>
		<%=("<td>" + rs.getString("BI_CNT") + "</td>")%>
		<%=("</tr>")%>
		<%
		}
		%>

		<tr>
			<td>1</td>
			<td>첫 번째 게시물</td>
			<td>홍길동</td>
			<td>1</td>
		</tr>
		<tr>
			<td>2</td>
			<td>두 번째 게시물</td>
			<td>김길동</td>
			<td>2</td>
		</tr>
		<tr>
			<td>3</td>
			<td>세 번째 게시물</td>
			<td>최길동</td>
			<td>3</td>
		</tr>
		<tr>
			<td colspan="4" align="center"><button>등록</button></td>
		</tr>
	</table>
</body>
</html>