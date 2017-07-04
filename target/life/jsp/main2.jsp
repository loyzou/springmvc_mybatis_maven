<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>入库</title>
</head>
<script language="javascript" type="text/javascript" src="../static/My97DatePicker/WdatePicker.js"></script>
<style>
body{
	color: #fff;
}
.sufow_title{
	margin-left:20px;
	text-align: center;
	font-size: 26px;
}
#sufow_select{
	width:224px;
	height:30px;
	
}
#sufow_div01{
	margin-top:10px;
	margin-left:20px;
}
#operTime{
	width:222px;
	height:24px;
	display: block;
}
#sufow_div01 td{
	margin-left:50px;
	height:26px;
	
	padding-left:2px;
	
}
.sufow_class1{
	width:120px;
	display: block;
	background-color:rgba(123,139,146,0.6);
	text-align: right;
	height:30px;
	line-height: 30px;
	margin-top: 12px;
}
.sufow_class2{
	width:220px;
	height:24px;
	display: block;
	margin-top: 12px;
	
}
.sufow_submit{
	height:32px;
	width: 222px;
	display: block;
	margin-top: 12px;

}
</style>
<%
	List<Map<String,Object>> typeList = (ArrayList<Map<String,Object>>)request.getAttribute("typeList");
	
	if(typeList == null){
		typeList = new ArrayList<Map<String,Object>>();
	}

%>

<body>

	<div>
		<span class="sufow_title"> | 入库</span>
	</div>

	<div id="sufow_div01">
	
	
		<form action="/life/goods/addGoods" method="post" target="_self">
			<table>
				<tr>
					<td class="sufow_class1">大类名称:</td>
					<td class=""><select name="typeId" id="sufow_select" class="sufow_class2">
						<%
						for(int i=0;i<typeList.size();i++){
							Map<String,Object> map = typeList.get(i);
							String typeId = map.get("typeId").toString();
							String typeName = (String) map.get("typeName");
						%>
							<option value="<%=typeId%>"><%=typeName %></option>
						<%
						}
						%>
						
					</select></td>
					<td class="sufow_class1">物品名称:</td>
					<td><input type="text" name="goodsName" class="sufow_class2" /></td>
				</tr>
				
			
				<tr>
					<td class="sufow_class1">数    量:</td>
					<td><input type="text" name="num"  class="sufow_class2" /></td>
					<td class="sufow_class1">单    位:</td>
					<td><input type="text" name="unit" class="sufow_class2" /></td>
				</tr>
				
				<tr>
					<td class="sufow_class1">入库日期:</td>
					<td><input type="text" name="operTime" class="Wdate" id="operTime"  onClick="WdatePicker()"
				 		onFocus="WdatePicker({lang:'zh-cn',maxDate:new Date()})" />
				 </td>
					<td class="sufow_class1">入库人:</td>
					<td><input type="text" name="operName"  class="sufow_class2" /></td>
				</tr>
			
				<tr>
					<td class="sufow_class1">备 注:</td>
					<td><input type="text" name="remark" class="sufow_class2" />
					 </td>
					<td></td>
					<td></td>
				</tr>
			
				<tr>
					<td></td>
					<td><input type="submit" value="提交" class="sufow_submit"></td>
				</tr>
			     
			</table>
		</form>
	
	</div>

</body>
</html>