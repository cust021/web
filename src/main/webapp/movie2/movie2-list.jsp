<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
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
<jsp:include page="/include/header.jsp"></jsp:include>
<form>
	<input type="text" placeholder="제목" name="miTitle2" id="miTitle2"
		value="<%=request.getParameter("miTitle2") == null ? "" : request.getParameter("miTitle2")%>">
	<input type="text" placeholder="설명" name="miDesc2" id="miDesc2"
		value="<%=request.getParameter("miDesc2") == null ? "" : request.getParameter("miDesc2")%>">	
	<input type="text" placeholder="장르" name="miGenre2" id="miGenre2"
		value="<%=request.getParameter("miGenre2") == null ? "" : request.getParameter("miGenre2")%>">
	<button>검색</button>
</form>

<table border="1">
<th>번호</th>
<th>제목</th>
<th>설명</th>
<th>장르</th>
<th>상영일</th>
<th>관객수</th>

<% 
Connection con = DBCon.getCon();
String sql = " SELECT * from MOVIE_INFO2";
String miTitle2 = request.getParameter("miTitle2") == null ? "" : request.getParameter("miTitle2");
String miDesc2 = request.getParameter("miDesc2") == null ? "" : request.getParameter("miDesc2");
String miGenre2 = request.getParameter("miGenre2") == null ? "" : request.getParameter("miGenre2");

PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
while (rs.next()) {
	/*
	Map<String,String> movie2 = new HashMap<>();
	movie2.put("miNum2",rs.getString("MI_NUM"));
	movie2.put("miTitle2",rs.getString("miTitle2"));
	movie2.put("miGenre2",rs.getString("miGenre2"));
	movie2.put("miCredat2",rs.getString("miCredat2"));
	movie2.put("miNum2",rs.getString("miNum2"));
	movieList.add(movie2);
	*/
%>	
<tr>
	<td><%=rs.getInt("MI_NUM2") %></td>
	<td><a href="<%=root%>/movie2/movie2-view.jsp?miNum2=<%=rs.getInt("MI_NUM2")%>"><%=rs.getString("MI_TITLE2") %></td>
	<td><%=rs.getString("MI_DESC2") %></td>
	<td><%=rs.getString("MI_GENRE2") %></td>
	<td><%=rs.getString("MI_CREDAT2") %></td>
	<td><%=rs.getInt("MI_CNT2") %></td>
	<td><button type="button">삭제</button></td>
</tr>
<%
}
%>
<tr>
<td colspan="6" align="right"><button onclick="location.href='/web/movie2/movie2-insert.jsp'">등록</button>
</tr>
</table>
</body>
</html>