<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
</head>
<body bgcolor="cccccc">
	<%
	SimpleDateFormat time = new SimpleDateFormat("yyyy年MM月dd日 E");
	String s =time.format(new Date());
	out.print("<font color=red>"+s+"</font>");
	 %>
</body>
</html>