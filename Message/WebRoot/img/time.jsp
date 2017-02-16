<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html; charset=gb2312"%>
<html>
<head>
</head>
<body>
	<%
	SimpleDateFormat time = new SimpleDateFormat("yyyyÄêMMÔÂddÈÕ E");
	String s =time.format(new Date());
	out.print("<font color=red>"+s+"</font>");
	 %>
</body>
</html>