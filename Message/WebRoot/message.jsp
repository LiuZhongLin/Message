<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="components.*"%>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head> 
<title>����ǽ</title>
<style type="text/css">
	*{
		margin: 0 auto;
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
    	float: left; padding-bottom: 10px;
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
	
	.main{
		width:960px;margin: 0 auto;background: #fff;border: 1px solid #ccc;
		display: inherit;
	}
	.message{
		margin:0 auto;width: 600px; padding-top: 30px;
	}
	.message font{
		color: red;
	}
	.content{
		width:960px;margin:0 auto;margin-bottom: 50px;border-bottom: 1px soldi #ccc;
			}
	.user,.theme{
		width:200px;
	}
	.btn{
		background: #0576C6;
		color: #fff;
		width:70px;
		height: 30px;
		border: 0px;
		border-radius:5px;
		outline: none;
	}
	.btn:hover{
		background: #398BFC;
	}
	.title_1{
		width:962px;height: 40px;background: #e3e3e3;
	}
	.title_2 {
		width:960px;height:40px;background: #E3DEDE; margin-top: 30px;
	}
	.title_2 p,.title_1 p{
		padding: 10px;
	}
	.every{
		border-bottom: 2px dotted #DBDBDB;margin: 0px 40px 0px 20px;padding:15px;padding-left:20px;
	}
	.every a{
		text-decoration: none;
	}
	.every a:hover{
		text-decoration: underline;
	}
	font {
 		text-align: right;
    }
    .cont{
    	color: #999999;padding-top: 10px;
    }
    .cont_message{
    	border: 1px solid red;
    }
    .every_next{
    	padding-top: 10px;
    }
    .reply{
    	padding-right:400px;margin-top: 5px;
    }
    .bottom{
    	height: 200px; background: #ccc;margin-top: 10px;
    }
</style>  
</head>
<body bgcolor="#f5f5f5">
	<div class="top">
		<%@ include file="img/top.jsp" %>
	</div>
	<div class="logo">
	  <div class="logo_left">
		<img alt="" src="img/logo.png">
	  </div>
	  <div class="logo_mid">
	    <div class="logo_url">
	  	<ul>
	  		<li class="home"><a href="mainPage.jsp">��ҳ</a></li>
	  		<li class="home"><a href="message.jsp">��̳</a></li>
	  		<li class="home"><a href="message.jsp">�г�</a></li>
	  		
	  	</ul>
	  	</div><!--logo_url����-->
	  </div><!--logo_mid����-->
	</div><!--logo����-->
	<div class="title_1"><p>������</p></div>
  <div class="main">
  <div class="message">
  <form action="newMessage" method="post">
     <input type="text" name="username" placeholder="������" class="user">&nbsp;<font>*������10������</font><br><br>
 	 <input type="text" name="title" placeholder="����������" width="600px" class="theme">&nbsp;<font>*������20������</font><br><br>
     <textarea rows="15" cols="82" name="message" placeholder="����������..."></textarea><font>*������100������</font><br><br>
  	<input type="submit" name="submit1" value="����" class="btn">
  </form>
  </div><!-- message���� -->
  <div class="title_2"><p>������</p></div>
  <div class="content">
  	
  		
  		<%
  		  		    MessageDAO aMessageDAO=new MessageDAO();
  		  		    ArrayList al = aMessageDAO.getMessage(); 
  		  		    ArrayList ap = aMessageDAO.getReply();
  		  		    for (int i=al.size()-1;i>=0;i--)
  		  		    {
  		  			  Message  cat =(Message)al.get(i);
  		  			 
  		%>
  		<div class="every">
  			<table width="850" >
  				<tr>
  					<td width="50">���⣺</td>
  					<td style="color: #2D64B3;" width="400"><%=cat.getTitle()%></td>
  					<td width="350" style="text-align: right"><font color=red>[������]</font>&nbsp;<%=cat.getUsername()%>
  						<a href="delete?userId=<%=cat.getUserId()%>">ɾ��</a>
  			 			 <a href="reply?userId=<%=cat.getUserId() %>">�ظ�</a>
  			 		</td>
  				</tr>
  				<tr>
  					<td class="every_next">���ݣ�</td>
  					<td class="cont" ><%=cat.getMessage() %></td>
  					<td></td>
  				</tr>
  			</table>
  			<% 
	for (int j=0;j<ap.size();j++)
  	{
  		
  		Reply rep =(Reply)ap.get(j);
  		if(rep.getUserId2()==cat.getUserId())
  		{
    		if(rep.getReplyname()!=null&&rep.getReplyname()!=""&&rep.getReply()!=null&&rep.getReply()!=null)
    		{
    
    %>
    		<div class="reply">
    			<table  width="550">
    				<tr>
    					<td style="text-align:right;width:50px;"><font color=red>[����]</font></td>
    					<td width="70" style="text-align:center"><%=rep.getReplyname()%>:</td>
    					<td width="300" style="color: #999999;"><%=rep.getReply()%></td>
    				</tr>
    			</table>
         	</div><!-- reply���� -->
    <%
    		}
    		
    	}
    }
    %>
  			
  			
  			
  		</div><!-- every���� -->
  	
  	<% 
  		} 
  	%>
  	</div><!-- content���� -->
  </div><!-- main���� -->
  <div class="bottom"></div>
       
       

  </body>
</html>
