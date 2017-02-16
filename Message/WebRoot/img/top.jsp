<%@page contentType="text/html; charset=gb2312"%>
<html>
<head>
   <style type="text/css">
    .top_content{
    	width: 1200px;margin: 0 auto;
    }
	.top_left{
		float: left;
	}
	.top_right{
	    float: left;margin-left: 70%;
	}
	a{
		text-decoration: none;
	}
	a:hover {
		color:red;
	}
   </style>
</head>
<body>
	<div class="top_content">
		<div class="top_left" >
			<%@ include file="time.jsp" %>
		</div>
		<div class="top_right">
			<a href="login.jsp">µÇÂ¼</a>&nbsp;&nbsp;&nbsp;
			<a href="register.jsp" >Á¢¼´×¢²á</a>
		</div>
	</div>
</body>
</html>