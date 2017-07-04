<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script language="javascript" type="text/javascript"
	src="../static/My97DatePicker/WdatePicker.js"></script>
<style>
body {
	color: #fff;
}

a {
	text-decoration: none;
	color: #fff;
}

.sufow_title {
	font-size: 26px;
}

.sufow_class1 {
	width: 100%;
	height: 20px;
	display: block;
	margin-top: 30px;
	font-size: 22px;
}

.sufow_class1 input {
	height: 24px;
}

#sufow_reduce {
	height: 30px;
	width: 100px;
}

form {
	margin-left: 26px;
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
#sufow_submit{
	height:32px;
	width: 120px;
	display: block;
	margin-left:50px;
	margin-top: 12px;

}
</style>

<%
	String goodsId = request.getAttribute("goodsId").toString();
	String goodsName = (String) request.getAttribute("goodsName");
	if (goodsId == null) {
		goodsId = "";
	}
	if (goodsName == null) {
		goodsName = "";
	}
%>


<body>
	<span class="sufow_title"><a href="/life/home/main3"> | 出库 >
			出库操作</a> </span>

	<div id="sufow_div01">
		<form action="/life/goods/reduceGoods" method="post" target="_self">
			<input type="hidden" name="goodsId" value=<%=goodsId%>>
			<table>
				<tr>
					<td class="sufow_class1">名称：</td>
					<td><input type="text" name="goodsName" readonly="readonly"
						value=<%=goodsName%> class="sufow_class2"></td>
					<td class="sufow_class1">数量：</td>
					<td><input type="text" name="num" value=<%=1%>  class="sufow_class2"></td>
				</tr>
				<tr>
					<td class="sufow_class1">出库日期:</td>
					<td><input type="text" name="operTime" class="Wdate"
						id="operTime" onClick="WdatePicker()"
						onFocus="WdatePicker({lang:'zh-cn',maxDate:new Date()})" /></td>
					<td class="sufow_class1">入库人:</td>
					<td><input type="text" name="operName" class="sufow_class2" /></td>
				</tr>

				<tr>
					<td class="sufow_class1">备 注:</td>
					<td><input type="text" name="remark" class="sufow_class2" />
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="submit" value="出库" id="sufow_submit" /></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>