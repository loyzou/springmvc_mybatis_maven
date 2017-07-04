<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出库</title>
</head>
<script type="text/javascript">
	function doCheckNum(num,goodsId,goodsName){
		if(num == 0){
			alert("库存为空，不允许出库");
		}else{
			window.location.href="/life/goods/reduceGoodsView?goodsId="+goodsId+"&goodsName="+goodsName;
		}
	}

</script>
<style>
body{
	color: #fff;
}
.sufow_title{
	margin-left:20px;
	text-align: center;
	font-size: 26px;
}
#sufow_div01{
	margin-left:20px;
	height:100%;
	width:60%;
	margin-top:0px;
}
#sufow_div01 table{
	margin-top:10px;
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


<body>

<%
	List<Map<String,Object>> goodsList = (ArrayList<Map<String,Object>>)request.getAttribute("goodsList");
	
	if(goodsList == null){
		goodsList = new ArrayList<Map<String,Object>>();
	}

%>

<body>

	<div>
		<span class="sufow_title"> | 出库</span>
	</div>

	<div id="sufow_div01">
	
		<table>
			<tr class="sufow_tr1">
				<td class="sufow_td1">编号</td><td class="sufow_td1">大类</td>
				<td class="sufow_td1">名称</td><td class="sufow_td1">库存</td>
				<td class="sufow_td1">单位</td><td class="sufow_td1">操作</td>
			</tr>
			
			<%
			if(goodsList.size()>0){
				
				for(int i=0;i<goodsList.size();i++){
					Map<String,Object> map = goodsList.get(i);
					String goodsId = map.get("goodsId").toString();
					String typeName = (String)map.get("typeName");
					String goodsName = (String)map.get("goodsName");
					String num = map.get("num").toString();
					String unit = (String)map.get("unit");
					
					%>
					<tr id="tr_<%=goodsId %>" class="sufow_tr2">
					<td class="sufow_td2"><%=goodsId%></td>
					<td class="sufow_td2"><%=typeName%></td>
					<td class="sufow_td2"><%=goodsName%></td>
					<td class="sufow_td2"><%=num%></td>
					<td class="sufow_td2"><%=unit%></td>
					<td class="sufow_td2">
					<span onclick="doCheckNum(<%=num %>,<%=goodsId%>,<%=goodsName%>)" >出库</span>
					</td>
	
					</tr>
					
			<%		
				}
				
			}
		%>
		
		
		</table>
	
	</div>


</body>
</html>