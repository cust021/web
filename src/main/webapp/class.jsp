<%@page import="java.sql.*"%>
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
<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3306/kd";
	String user = "root";
	String password = "kd1824java";
	Connection con = DriverManager.getConnection(url, user,password);
	Statement stmt= con.createStatement();
	String sql = "SELECT * FROM CLASS_INFO";
	ResultSet rs = stmt.executeQuery(sql);
%>
<table border="1">
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>몰라</th>
	</tr>
<%
while(rs.next()) {
	%>
	<%=("<tr>")%>
	<%=("<td>" + rs.getInt("CI_NUM")+"</td>")%>
	<%=("<td>" + rs.getString("CI_NAME")+"</td>")%>
	<%=("<td>" + rs.getString("CI_DESC")+"</td>")%>
	<%=("</tr>")%>
	<% 	
}
%>
<form>
	<label for= "uiId">아이디</label> <input type="text" id="uiId" name="uiId"><br>
	<label for= "uiPwd">비밀번호</label><input type="password" id="uiPwd" name="uiPwd"><br>
</form>

</table>
</body>
</html>