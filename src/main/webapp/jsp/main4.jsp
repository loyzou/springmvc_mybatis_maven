<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加大类</title>
</head>

<style>
body{
	color:#fff;
}
.sufow_title{
	margin-left:20px;
	text-align: center;
	font-size: 26px;
}
#sufow_add{
	margin-top:20px;
	height:30px;
	width:160px;
	background-color:rgba(8,110,138,0.2);
	display: block;
	text-align: center;
	line-height: 30px;
	margin-left: 30px;
}
#sufow_add a{
	text-decoration: none;
	color:#fff;
}
#sufow_div01{
	height:100%;
	width:60%;
	margin-top:0px;
	margin-left: 30px;
}
#sufow_div01 table{
	margin-top:20px;
	width:100%;
}
#sufow_div01 tr td{
	height:30px;
	width:180px;
	text-align: center;
	
}
.sufow_tr1{
	background-color:rgba(8,110,138,0.8);
}
.sufow_tr2:hover{
	background-color:rgba(71,163,121,0.8);
}

.sufow_td1{
	color:#fff;
}

.sufow_td2{
	background-color:rgba(13,139,146,0.5)
}
</style>


<script src="../static/js/jquery.min.js"></script>

<script type="text/javascript">

function deleteTheType(typeId){
	  var confirm_ = confirm('是否确认删除?');
      if(confirm_){
          $.ajax({
              type:"POST",
              url:'/life/goods/delGoodsType?typeId='+typeId,
              success:function(msg){
                  $("#tr_"+typeId).remove();
              }
          });
      }
  }

	
</script>

<%
	List<Map<String,Object>> typeList = (ArrayList<Map<String,Object>>)request.getAttribute("typeList");
	
	if(typeList == null){
		typeList = new ArrayList<Map<String,Object>>();
	}

%>

<body>

	<div>
		<span class="sufow_title"> | 类型管理</span>
	</div>

	<div id="sufow_div01">
	
		<table >
			<tr class="sufow_tr1">
				<td class="sufow_td1">编号</td><td class="sufow_td1">名称</td>
				<td class="sufow_td1">操作</td>
			</tr>
			
			<%
			if(typeList.size()>0){
				
				for(int i=0;i<typeList.size();i++){
					Map<String,Object> map = typeList.get(i);
					String typeId = map.get("typeId").toString();
					String typeName = (String)map.get("typeName");
					
					%>
					<tr id="tr_<%=typeId %>" class="sufow_tr2">
					<td class="sufow_td2"><%=typeId%></td>
					<td class="sufow_td2"><%=typeName%></td>
					<td class="sufow_td2"><a href="/life/goods/typeAdd?typeId=<%=typeId%>&typeName=<%=typeName%>&encode=utf-8">修改</a>&nbsp;&nbsp;
					<a href="javascript:;" onclick="deleteTheType(<%=typeId %>)">删除</a></td>
	
					</tr>
					
			<%		
				}
				
			}
		%>
		
		
		</table>
	
	</div>
	<span id="sufow_add"><a href="/life/goods/typeAdd">添&nbsp;&nbsp;&nbsp;加</a></span>

</body>
</html>