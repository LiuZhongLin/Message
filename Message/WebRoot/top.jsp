<%@page contentType="text/html; charset=utf-8"%>
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
<body bgcolor="#FFFACD">
	<div class="top_content">
		<div class="top_left" >
			<%@ include file="time.jsp" %>
		</div>
		<div class="top_right">
			<a href="login.jsp">登录</a>&nbsp;&nbsp;&nbsp;
			<a href="register.jsp" >立即注册</a>
		</div>
	</div>
</body>
</html>