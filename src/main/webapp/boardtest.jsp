<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
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
<h3>나도 모르는 페이지</h3>
<% 
String biTitle = request.getParameter("biTitle");
if (biTitle != null && biTitle.length() != 0){
	out.println("biTitle : " + biTitle);
	String biContent = request.getParameter("biContent");
	out.println("biContent : " + biContent);
	String biWriter = request.getParameter("biWriter");
	out.println("biWriter : " + biWriter);
	String biCredat = request.getParameter("biCredat");
	out.println("biCredat : " + biCredat);
	String biCnt = request.getParameter("biCnt");
	out.println("biCnt : " + biCnt);
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO BOARD_INFO(BI_TITLE, BI_CONTENT, BI_WRITER,BI_CREDAT, BI_CNT)";
	//String sql = "SELECT INTO USER_INFO(BI_TITLE, BI_CONTENT, BI_WRITER,BI_CREDAT, BI_CNT)";
	sql += " values('" + biTitle + "','" + biContent + "','" + biWriter + "',NOW(),'"  + biCnt + "')";
	int result = stmt.executeUpdate(sql);
	if (result == 1) {
		%>
		<script>
		alert("<%=biTitle%>님 들어오셨습니다.");
		location.href="/web/login.jsp"
		</script>
		
		<%
	}
}
%>
<form>
<label for="biTitle">타이틀</label> <input type="text" id="biTitle" name="biTitle"><br>
		<label for="biContent">연결</label> <input type="text" id="biContent" name="biContent"><br>
		 <label for="biWriter">writer</label> <input type="text" id="biWriter" name="biWriter"><br>
		  <label for="biCnt">cnt</label> <input type="text" id="biCnt" name="biCnt"><br>
		  
		<button>등록</button>
</form>
</body>
</html>