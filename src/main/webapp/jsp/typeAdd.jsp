<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
color:#fff;
}
a{
	text-decoration: none;
	color:#fff;
}
.sufow_title{
font-size: 26px;
}
.sufow_class1{
	width:500px;
	height:20px;
	display: block;
	margin-top:30px;
	font-size: 22px;
	
}
.sufow_class1 input{
	height:24px;
}


</style>

<%
	String operator = (String)request.getAttribute("operator");
	String typeId = (String)request.getAttribute("typeId"); 
	String typeName = (String)request.getAttribute("typeName");
	if(typeId == null){
		typeId = "";
	}
	if(typeName == null){
		typeName = "";
	}

%>


<body>
	<span class="sufow_title"><a href="/life/home/main4"> | 类型管理</a>  <span>></span> 
		<%=operator%>
	</span>


	<form action="/life/goods/addGoodsType" method="post">
		<input type="hidden" name="typeId" value=<%=typeId %>>
		<span class="sufow_class1">类型名称：
			<input type="text" name="typeName" value=<%=typeName %>>
			<input type="submit" value="<%=typeName==""?"添加":"保存" %>" />
		</span>
	</form>


</body>
</html>