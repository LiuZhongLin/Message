<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>新用户注册</title>
<style type="text/css">
	*{
		margin: 0px;padding: 0px;font-family:Arial, Helvetica, sans-serif,"宋体";
	}
	body{
		background: #E9EAEC;
	}
	.top{
		height:80px;background: #F5F5F5;padding-left:4%;border-bottom:1px solid #ccc;box-shadow:0 0 60px #ccc ;
	}
	.wrap{
		width:1150px;height:650px;background: #fff;margin: 0 auto;margin-top: 30px;border-radius:5px;
		box-shadow:0 0 60px #ccc ;
	}
	.wrap_header{
		height:60px;;border-bottom: 1px solid #ccc;
	}
	.wrap_header ul{
		list-style-type: none;
	}
	.wrap_header ul li{
		float:left;
	}
	.head1{
		margin-left: 15px;font-weight: bolder;font-size: 20px;margin-top: 25px;border-bottom: 3px solid #008DF3;padding-bottom: 8px;
	}
	.head2{
		margin-left:920px;font-size: 14px;margin-top: 30px;
	}
	.head2 a{
		color: #008DF3;text-decoration: none;
	}
	.head2 a:hover{
		color:red;padding-bottom:12px;border-bottom:3px solid red;opacity: 0.7;transition:0.3s;
	}
	.wrap_body{
		width:400px;margin: 0 auto;box-shadow:0 0 50px #ccc ;height: 500px;margin-top: 20px;
	}
	.username,.password{
		width:333px;height: 50px;padding-left:40px;border:1px solid #ccc;margin-bottom: 25px;margin-left: 32px;
		font-size: 18px;color:#999999;border-radius:5px;
	}
	.username,.password{
		background:url(img/user.png) no-repeat ;
	}
	.btn{
		width:333px;height:44px;margin-left: 32px;color: #fff;border:none;background: #008DF3;
		font-size: 16px;border-radius:5px;
	}
	.btn:hover{
		background: #0576C6;
	}
	.bottom{
		height: 30px;background: #F5F5F5;padding-top: 10px;margin-top:3%;border-top:1px solid #ccc;
		border-top: 1px solid #ccc;;box-shadow:0 0 60px #ccc ;
	}
	.img{
		padding-left: 120px;padding-top:30px;
	}
</style>
<script type="text/javascript">
	
	function check1(){
		username=document.getElementById("username");
		if(username.value==null||username.value==""){
			alert("请输入用户名！");
			username.focus();
		}
	}
	function check2(){
		var pwd1=document.getElementById("pwd1");
		var pwd2=document.getElementById("pwd2");
	
		if(pwd1.value.length<6){
			alert("密码至少要有6个");
			pwd1.value="";
			pwd1.focus();
		}
		else if((pwd2.value!=null&&pwd2.value!=""))
			{
				if(pwd1.value!=pwd2.value){
					alert("您输入的密码不一致！");
					pwd2.value="";
					pwd2.focus();
				}
			}
		
	}

</script>
</head>
<body>
	<div class="top">
		<img src="img/logo.png">
		<img src="img/say.png">
	</div>
	<div class="wrap">
		<div class="wrap_header"> 
			<ul>
				<li class="head1">账号注册</li>
				<li class="head2"><a href="login.jsp">使用已有账号登录</a></li>
			</ul>
		</div>
		<div class="wrap_body">
			<div class="img">
				<img src="img/man.png">
			</div>
			<form id="form1" action="register" method="post">
			<input type="text" id="username" class="username" onblur="check1()" name="username" placeholder="账号" required autofocus><br>
			<input type="password" id="pwd1" class="password" onchange="check2()" name="pwd1" placeholder="密码" required><br>
			<input type="password" id="pwd2" class="password" onchange="check2()" name="pwd2" placeholder="确认密码" required><br>
			<input type="submit" class="btn" value="立即注册"><br>
			</form>
		</div>
	</div>
	<div class="bottom">
	 <center>&nbsp; 
		14移动开发2班&nbsp;&nbsp;第九组 
		</center>
	</div>
</body>
</html>