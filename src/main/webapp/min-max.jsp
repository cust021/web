<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
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
	List<Integer> nums = new ArrayList<>();
	Random r = new Random();
	%>
		<%
		while (nums.size() <= 10) {
			int rNum = r.nextInt(100) + 1;
			if (nums.indexOf(rNum) == -1) {
				nums.add(rNum);
			}
		}
		int max = nums.get(0);
		int min = nums.get(0);
		for (int i = 1; i < nums.size(); i++) {
			int num = nums.get(i);
			if (max < min) {
				max = nums.get(i);
			}
			if (min > max) {
				min = nums.get(i);

			}
			
		}
		%>
	<table border="1">
	<tr>
	<th colspan="2"><%=nums%> </th>
	</tr>	
	<tr>
		<td>최대값</td>
		<td><%=max%></td>
	</tr>
		<tr>
		<td>최소값</td>
		<td><%=min%></td>
	</tr>
	</table>
</body>
</html>