<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="com.web.vo.HumanVO"%>
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
	String[] names = { "김홍균", "김아영", "이명관", "이왕균", "이보성" };
	Random r = new Random();
	Set<String> nameSet = new HashSet<>();
	List<HumanVO> humanList = new ArrayList<>();
	for (int i =0 ; i<nameSet.size();  i++) {
		int rNum = r.nextInt(5);
		out.println(rNum + "<br>");
	if(nameSet.add(names[rNum])) {
		HumanVO human = new HumanVO();
		human.setName(names[rNum]);
		humanList.add(human);
		}
	}

		for (HumanVO human : humanList) {
			out.println(human + "<br>");
		}
	%>
</body>
</html>