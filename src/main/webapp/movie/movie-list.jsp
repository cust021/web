<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<form>
	<input type="text" placeholder="제목" name="miTitle" id="miTitle"
	value="<%=request.getParameter("miTitle") == null ? "" : request.getParameter("miTitle")%>">
	<input type="text" placeholder="설명" name="miDesc" id="miDesc"
	value="<%=request.getParameter("miDesc") == null ? "" : request.getParameter("miDesc")%>">
	<input type="text" placeholder="장르" name="miGenre" id="miGenre"
	value="<%=request.getParameter("miGenre") == null ? "" : request.getParameter("miGenre")%>">
	<button>검색</button>
</form>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>설명</th>
		<th>장르</th>
		<th>상영일</th>
		<th>관객수</th>
	</tr>
	<%
	Connection con =  DBCon.getCon();
	String sql =" SELECT * FROM MOVIE_INFO";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs =ps.executeQuery();
	while(rs.next()){
	%>
	<tr>
		<td><%=rs.getInt("MI_NUM") %></td>
		<td><a href="<%=root%>/movie/movie-view.jsp?miNum=<%=rs.getInt("MI_NUM")%>"><%=rs.getString("MI_TITLE") %></a></td>
		<td><%=rs.getString("MI_DESC") %></td>
		<td><%=rs.getString("MI_GENRE") %></td>
		<td><%=rs.getString("MI_CREDAT") %></td>
		<td><%=rs.getInt("MI_CNT") %></td>
		<td><button type="button" onclick="location.href='<%=root%>/movie/movie-delete-ok.jsp?miNum=<%=rs.getInt("MI_NUM")%>'">삭제</button></td>
	
	</tr>
	<%
	}
	%>
	<tr>
		<td colspan="6" align="right"><button onclick="location.href='/web/movie/movie-insert.jsp'">등록</button>
	</tr>
</table>
</body>
</html>