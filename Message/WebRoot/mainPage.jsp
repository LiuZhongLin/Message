<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
  <title>番职校园网</title>
  <style type="text/css">
    *{
    	margin: 0;padding: 0px;
    }
	.top{
    	background:url(img/top_bg.jpg) repeat-x;height:27px;line-height: 27px;
	}
	.logo{
		width:1000;height: 90px;margin:0 auto;background:#F5F5F5;
    }
    .logo_left{
		float:left;width:300px;text-align: center;
    }
    .logo_mid{
    	float:left;width:400px;font-size: 24px;padding-top: 20px;
    }
    .logo_url{
    	padding-top: 25px;
    }
    .logo_url ul{
    	list-style-type: none;
    }
    .logo_url ul li{
    	float: left; border-bottom:4px solid #eee;padding-bottom: 10px;
    }
    .logo_url ul li a{
    	text-decoration: none;margin-right: 50px;color:#C63145;
    }
    .home a{
    	border-bottom:4px solid red;padding-bottom: 11px;
    }
    .logo_url ul li a:hover{
    	border-bottom:4px solid red;padding-bottom: 11px;opacity: 0.7;transition:0.3s;
    }
    #myFocus{ width:1000px; height:300px;margin: 0 auto;clear:both;}
    .main{
    	width:1000px;margin: 0 auto;margin-top: 20px;
    }
    .main_left{
    	width:660px; float:left;
    }
    .title{
    	font-size: 24px;color: #444444;height: 50px;line-height: 50px;
    }
    .content{
    	height:350px;border: 1px solid #ccc;margin-top: 20px;background: #fff;margin-bottom: 20px;
    }
    .content_title{
    	height: 45px;line-height: 45px;border-bottom: 1px solid #ccc;padding-left: 25px;
    }
    .content_body{
    	height: 220px;	border-bottom: 1px solid #ccc;padding: 25px;line-height:25px;
    }
    .content_bottom{
    	padding-left: 15px;line-height: 35px;
    }
    .main_right{
    	width:300px;background: #fff; float:right;border:1px solid #ccc;margin-top: 20px;
    }
    .main_right p{
    	border-bottom: 1px solid red;height:35px;line-height: 35px;padding-left: 10px;background: #F5F5F5;
    }
    .main_right ul li{
    	list-style-type: none;height:45px;line-height: 45px; border-bottom: 1px solid #ccc;
    }
    .main_right ul li a{
    	display: block;color:#000000;padding-left: 20px;
    }
    .main_right ul li a:hover{
    	background: #F5F5F5;
    }
    .bottom{
        clear:both;width:100%;height:40px;line-height:40px;text-align:center;background: #f5f5f5;
        border-top: 1px solid #ccc;box-shadow:0 0 60px #ccc ;
    }
  </style>
  <script type="text/javascript" src="js/myfocus-2.0.1.min.js"></script>
  <script type="text/javascript">
	//设置
	myFocus.set({
	id:'myFocus',//ID
	pattern:'mF_fancy'//风格
	});
  </script>
</head>

<body bgcolor="#F5F5F5">
	<div class="top">
		<%@ include file="top.jsp" %>
	</div><!-- top结束 -->
	<div class="logo">
	  <div class="logo_left">
		<img alt="" src="img/logo.png">
	  </div>
	  <div class="logo_mid">
	    <div class="logo_url">
	  	<ul>
	  		<li class="home"><a href="mainPage.jsp">首页</a></li>
	  		<li><a href="message.jsp">论坛</a></li>
	  		<li><a href="showping.jsp">市场</a></li>
	  	</ul>
	  	</div><!--logo_url结束-->
	  </div><!--logo_mid结束-->
	</div><!--logo结束-->
  <div id="myFocus"><!--焦点图盒子-->
  <div class="loading"><img src="img/loading.gif" alt="请稍候..." /></div>
  <div class="pic"><!--图片列表-->
  	<ul>
        <li><a href="#1"><img src="img/ad1.png" /></a></li>
        <li><a href="#2"><img src="img/ad2.png" /></a></li>
        <li><a href="#3"><img src="img/ad3.png" /></a></li>
        <li><a href="#4"><img src="img/ad4.png" /></a></li>
  	</ul>
  </div>
  </div><!-- ad结束 -->
  <div class="main">
  	<div class="main_left">
  		<p class="title">热点新闻</p>
  		<div class="content">
  			<p class="content_title"><a href="#">信仰对话昨日举行</a></p>
  			<p class="content_body">
  				番职网讯：（缪志波 报道）12月23日下午，学校6420会议室掌声阵阵，笑语绵绵，
  				一场主题为“从严从实·向上向善”的2015年“与信仰对话”学生座谈会在这里举行。
  				校党委书记孟源北来到会场，与60余名在校学生代表座谈，并发表了专题讲话。校党
  				委副书记麦国焞、校长助理李大云及党委宣传部、学生处、思政部、团委负责人，
  				各学院党总支书记、副书记，分团委书记参加了座谈会。会议由校团委书记曾海宾主持。
  			</p>
  			<p class="content_bottom">蓝光电视台&nbsp;&nbsp;&nbsp;&nbsp;2016-05-24</p>
  		</div>
  		<div class="content">
  			<p class="content_title"><a href="#">“与信仰对话”学生座谈会昨日举行</a></p>
  			<p class="content_body">
  				番职网讯：（缪志波 报道）12月23日下午，学校6420会议室掌声阵阵，笑语绵绵，
  				一场主题为“从严从实·向上向善”的2015年“与信仰对话”学生座谈会在这里举行。
  				校党委书记孟源北来到会场，与60余名在校学生代表座谈，并发表了专题讲话。校党
  				委副书记麦国焞、校长助理李大云及党委宣传部、学生处、思政部、团委负责人，
  				各学院党总支书记、副书记，分团委书记参加了座谈会。会议由校团委书记曾海宾主持。
  			</p>
  			<p class="content_bottom">蓝光电视台&nbsp;&nbsp;&nbsp;&nbsp;2016-05-24</p>
  		</div>
  		<div class="content">
  			<p class="content_title"><a href="#">“与信仰对话”学生座谈会昨日举行</a></p>
  			<p class="content_body">
  				番职网讯：（缪志波 报道）12月23日下午，学校6420会议室掌声阵阵，笑语绵绵，
  				一场主题为“从严从实·向上向善”的2015年“与信仰对话”学生座谈会在这里举行。
  				校党委书记孟源北来到会场，与60余名在校学生代表座谈，并发表了专题讲话。校党
  				委副书记麦国焞、校长助理李大云及党委宣传部、学生处、思政部、团委负责人，
  				各学院党总支书记、副书记，分团委书记参加了座谈会。会议由校团委书记曾海宾主持。
  			</p>
  			<p class="content_bottom">蓝光电视台&nbsp;&nbsp;&nbsp;&nbsp;2016-05-24</p>
  		</div>
  	</div><!-- main_left结束 -->
  	<div class="main_right">
  		<p>热门频道推荐</p>
  		<ul>
  			<li><a href="http://www.gzpyp.edu.cn" target="_blank">学校官网</a></li>
  			<li><a href="http://jw.gzpyp.edu.cn" target="_blank">教务系统</a></li>
  			<li><a href="http://61.144.43.226/" target="_blank">图书查询</a></li>
  			<li><a href="http://192.168.2.95" target="_blank">番职网盘</a></li>
  			<li><a href="http://tieba.baidu.com/f?kw=%B9%E3%D6%DD%B7%AC%D8%AE%D6%B0%D2%B5%BC%BC%CA%F5%D1%A7%D4%BA&fr=index" target="_blank">校园贴吧</a></li>
  			<li><a href="http://zc.54qj.com/" target="_blank">展翅网</a></li>
  			<li><a href="http://open.163.com/ted/" target="_blank">TED_网络公开课</a></li>
  			<li><a href="http://121.33.253.218:2000/Default.aspx" target="_blank">网络自主学习平台</a></li>
  			<li><a href="http://www.witkeyschool.com/" target="_blank">威客校园</a></li>
  			
  		
  			
  		</ul>
  	</div><!-- main_right结束 -->
  </div><!-- main结束 -->
  <div class="bottom">
  		14移动开发2班&nbsp;&nbsp;第九组
  </div><!-- bottom结束 -->
</body>
</html>