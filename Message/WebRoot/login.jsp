<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>用户登录</title>
<style type="text/css">
	*{
		margin: 0px;padding: 0px;font-family:Arial, Helvetica, sans-serif,"宋体";
	}
	body{
		background: #E9EAEC;
	}
	.top{
		height:80px;background: #f5f5f5;padding-left:4%;border-bottom: 1px solid #ccc;box-shadow:0 0 60px #ccc ;
	}
	.login{

		width:400px;margin-top: 3%;margin-left: 63%;height: 342px;box-shadow:0 0 50px #837C7C ;
	}
	
	.div_img{
	     position:absolute; top:150px; left:120px;
	}
	
	
	<!-- 添加-->
	.login_left{
		width:800px;margin-top: 3%;margin-left: 3%;height: 342px;box-shadow:0 0 50px #837C7C ;
	}
	
	.login_head2{
		height: 60px;background: #fff;border-bottom: 1px solid #ccc;border-radius:5px 5px 0px 0px;
	}
	
	
	
	
	
	
	.login_head{
		height: 60px;background: #fff;border-bottom: 1px solid #ccc;border-radius:5px 5px 0px 0px;
	}
	
	
	<!--添加-->
	
	.login_head2{
		height: 600px;background: #fff;border-bottom: 1px solid #ccc;border-radius:5px 5px 5px 5px;
	}
	
	
	
	
	.login_body{
		height: 280px;background:#fff;
	}
	.login_head ul{
		list-style-type: none;padding: 20px;
	}
	.login_head ul li{
		float:left;font-family: "微软雅黑";
	}
	.head1{
		padding-bottom: 10px;border-bottom: 3px solid #008DF3;font-size:20px;
		font-weight: bold;
	}
	.head2{
		padding-top: 5px;margin-left: 175px;
	}
	.head2 a{
		color: #008DF3;text-decoration: none;
	}
	.head2 a:hover{
		color: red;padding-bottom:14px;border-bottom:3px solid red;opacity: 0.7;transition:0.3s;
	}
	.username,.password{
		width:333px;height: 50px;padding-left:40px;border:1px solid #ccc;margin-top: 25px;margin-left: 32px;
		font-size: 18px;color:#999999;border-radius:5px;
	}
	.username,.password{
		background:url(img/user.png) no-repeat ;
	}
	.btn{
		width:333px;height:44px;margin-top: 20px;margin-left: 32px;color: #fff;border:none;background: #008DF3;
		font-size: 16px;border-radius:5px;
	}
	.btn:hover{
		background: #0576C6;
	}
	.forget_pass{
		margin-left: 30px;margin-top:10px;
	}
	.login_body a{
		text-decoration: none;color: #008DF3;padding-bottom: 20px;
	}
	.login_body a:hover{
		color:red;
	}
	.bottom{
		height: 30px;background: #f5f5f;padding-top: 10px;margin-top:10%;border-top: 1px solid #ccc;
		box-shadow:0 0 60px #ccc ;
	}
	
	<!-- 添加-->
	 #myFocus{ width:1000px; height:300px;margin: 0 auto;clear:both;}
	
</style>




</head>
<%
		if (session.getAttribute("Message")!=null) {
           java.lang.String aMessage=(java.lang.String) session.getAttribute("Message");
		   out.print(aMessage+"<br>");
}
%>
<body bgcolor="#686985">
	<div class="top">
		<img src="img/logo.png">
		<img src="img/say.png">
	</div>
	
	

     
     
    <div class="div_img" >
   <a href="#1"><img src="img/wx.png" style="top: 0px; left: 0px; width: 275px; height: 274px;"/></a>
    </div>
	
	
	<div class="login">
	
	
	
	
	
		<div class="login_head">
			<ul>
				<li class="head1">账号登录</li>
				<li class="head2"><a href="register.jsp" >注册新用户</a></li>
			</ul>
		</div><!-- login_head结束 -->
		<div class="login_body">
			<form action="login" method="post">
			<input type="text" class="username" name="username" placeholder="账号" required autofocus><br>
			<input type="password" class="password" name="pwd" placeholder="密码" required ><br>
			<input type="submit" class="btn" value="立即登录"><br>
			<div class="forget_pass"><a href="" >忘记密码？</a></div>
			</form>
		</div>
	</div>
	<div class="bottom">
	
	</div>
	<div>
	 <center>
		14移动开发2班&nbsp;&nbsp;第九组
		</center>
	</div>
	<div>
	 <center>
		<marquee 
         direction="left"
		 behavior="scroll"
  	
		 bgcolor=#ffffff 
		 height=5px width=50% 

		 onmouseover=this.stop() onmouseout=this.start()
		  style="padding:10px 5px 15px 20px;"> <p color="#FF0000">欢迎来到广州番禺职业技术学院校园网  ，我们的邮箱是976247819@qq.com</p></marquee>

		</center>
	</div>
</body>
</html>