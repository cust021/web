<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
List<Map<String,String>> list = new ArrayList<>();

Map<String,String> map = new HashMap<>();

	map.put("name" , "김세희");
	map.put("points" , "80");
	map.put("addr" , "서울");
	list.add(map);
	
	map = new HashMap<>();

	map.put("name" , "김용준");
	map.put("points" , "77");
	map.put("addr" , "부산");
	list.add(map);

	
	map = new HashMap<>();

	map.put("name" , "이원준");
	map.put("points" , "99");
	map.put("addr" , "대전");
	list.add(map);

	
	map = new HashMap<>();

	map.put("name" , "이원기");
	map.put("points" , "66");
	map.put("addr" , "대구");
	list.add(map);

	
	map = new HashMap<>();

	map.put("name" , "이보성");
	map.put("points" , "55");
	map.put("addr" , "경기");
	list.add(map);

	
	map = new HashMap<>();

	map.put("name" , "이왕균");
	map.put("points" , "54");
	map.put("addr" , "광주");
	list.add(map);
	
	int max = Integer.parseInt(list.get(0).get("points"));
	int min = Integer.parseInt(list.get(0).get("points"));
	String maxName = "";
	String minName = "";
	String maxaddr = "";
	String minaddr = "";
	

	for(int i =0; i<list.size(); i++){
		int points = Integer.parseInt(list.get(i).get("points"));
		if(min > points){
			minName = list.get(i).get("name");
			minaddr = list.get(i).get("addr");
			min = points; 
		}
		if(max < points){
			maxName = list.get(i).get("name");
			maxaddr = list.get(i).get("addr");
			max = points;
		}
	}


%>

<table border = "1">


<tr>
	<td>최대</td>
	<td> <%=max%> ,  <%=maxName%>, <%=maxaddr%> </td>
</tr>
<tr>
	<td>최소</td>
	<td> <%=min%> ,  <%=minName%>, <%=minaddr%> </td>
</tr>
</table>
</body>
</html>