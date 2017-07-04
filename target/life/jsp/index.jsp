<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
	<style type="text/css">
		body{
			background-color: #355;
			background-image: url("../static/image/background.png");
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: cover;
			}
		#sufow_title{
		width:300px;
		height:30px;
		margin-top:50px;
		margin-left: 30%;
		font-size: 28px;
		}	
		#sufow_login{
			margin-top:160px;
			border:1px solid #fff;
			height:300px;
			width:760px;
			margin-left:32%;
			background-color:rgba(212, 230, 10, 0.1);
			border-radius:30px;
	
		}
		#sufow_login #username,#password{
			height:36px;
			width:380px;
		}
		.sufow_class1{
			color: #fff;
			font-size: 24px;
			margin-left:30px;
			margin-top:40px;
			display: block;
			height:16px;
			width:700px;
		}
		.sufow_class2{
			color: #fff;
		}
		#sufow_submit{
			height:40px;
			width:180px;
			display: block;
			margin-left:128px;
		}
		#sufow_tip{
			color:red;
			margin-left:128px;
			margin-top:10px;
			display: block;
		}
</style>

<script type="text/javascript">
	

</script>	

</head>
	<%
		String message = (String)request.getAttribute("message");
		if(message == null ){
			message = "";
		}
		System.out.print("aaa"+message);
	
	%>


<body>
		<div id="sufow_title">
			<span class="sufow_class2">
				<img  src="../static/image/title2.png">	
			</span>
		</div>

		<div id="sufow_login">
			<form action="/life/home/login" id="sufow_form" method="post">
				<span class="sufow_class1">用户名:
				 <input type="text" id="username" name="username"  /></span><br/>
				<span class="sufow_class1">密&nbsp;&nbsp;码:
				<input type="password" id="password" name="password" /></span><br/><br/>
				<input type="submit" value="登&nbsp;&nbsp;&nbsp;录" id="sufow_submit" />
				<span id="sufow_tip"><%=message %></span> 
			</form>
			
		</div>
</body>
</html>