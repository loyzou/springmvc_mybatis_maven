<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="../static/js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="../static/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
	$(function(){
		window.href="/life/goods/getGoodsRecordList";
		
	})

</script>

<style>
body{
color:#fff;}
#sufow_div01{
	width:100%;
	height:100px;
	background-color:rgba(28 ,28, 28,0.2);
}
form{
	margin-top: 20px;
	font-size: 22px;
	
}
form input{
	margin-left: 6px;
	height:26px;
}
#operTime{
height:26px;
}
form span{
	margin-left: 26px;
}
#sufow_select{
width:160px;
height:30px;
text-align: center;
margin-left: auto;
}

#sufow_div02 table{
	margin-top:20px;
	width:100%;
	font-size: 22px;
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
.sufow_title{
color:#fff;
margin-left:20px;

text-align: center;
font-size: 26px;
margin-left: 0%;
}
.sufow_submit{
	width:120px;
	height:30px;
}
</style>

<%
	String soperType = (String)request.getAttribute("operType");
	String soperName = (String)request.getAttribute("operName"); 
	String soperTime = (String)request.getAttribute("operTime");

	List<Map<String,Object>> recordList = (ArrayList<Map<String,Object>>)request.getAttribute("recordList");
	
	if(recordList == null){
		recordList = new ArrayList<Map<String,Object>>();
	}

%>
<body>

	<div id="sufow_div01">
		<span class="sufow_title">| 操作记录</span>
		
		<form action="/life/goods/getGoodsRecordList" method="post">
			<span>操作类型:</span>
			<select id="sufow_select" name="operType">
				<option value="0">全部</option>
				<option value="入库">入库</option>
				<option value="出库">出库</option>
			</select>
			<span>操作人:</span><input type="text" name="operName" value="<%=soperName==null?"":soperName %>" />
			<span>操作时间:</span>
			<input type="text" name="operTime" id="operTime" class="Wdate"  onClick="WdatePicker()"
			 onFocus="WdatePicker({lang:'zh-cn',maxDate:new Date()})" value="<%=soperTime==null?"":soperTime %>"  />
			<input type="submit" value="查询" class="sufow_submit" />
		</form>
	</div>

	<div id="sufow_div02">
	
		<table >
			<tr class="sufow_tr1">
				<td class="sufow_td1">编号</td><td class="sufow_td1">大类</td>
				<td class="sufow_td1">名称</td><td class="sufow_td1">数量</td>
				<td class="sufow_td1">操作类型</td><td class="sufow_td1">操作时间</td>
				<td class="sufow_td1">操作人</td><td class="sufow_td1">备注</td>
				
			</tr>
			
			<%
			if(recordList.size()>0){
				
				for(int i=0;i<recordList.size();i++){
					Map<String,Object> map = recordList.get(i);
					String recordId = map.get("recordId").toString();
					String typeName = (String)map.get("typeName");
					String goodsName = (String)map.get("goodsName");
					String num = map.get("num").toString();
					String operType = (String)map.get("operType");
					String operName = (String)map.get("operName");
					Object operTime = (Object)map.get("operTime");
					String remark = (String)map.get("remark");
		
					%>
					<tr id="tr_<%=recordId %>" class="sufow_tr2">
					<td class="sufow_td2"><%=recordId%></td>
					<td class="sufow_td2"><%=typeName%></td>
					<td class="sufow_td2"><%=goodsName%></td>
					<td class="sufow_td2"><%=num%></td>
					<td class="sufow_td2"><%=operType%></td>
					<td class="sufow_td2"><%=operTime%></td> 
					<td class="sufow_td2"><%=operName%></td>
					<td class="sufow_td2"><%=remark%></td>
	
					</tr>
					
			<%		
				}
				
			}
		%>
		
		
		</table>
	
	</div>


</body>
</html>