<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script src="../static/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#sufow_li1").click(function(){
			$("#sufow_li1").attr("class","selectBg");
			$("#sufow_li2").attr("class","noSelectBg");
			$("#sufow_li3").attr("class","noSelectBg");
			$("#sufow_li4").attr("class","noSelectBg");
		});
	
		$("#sufow_li2").click(function(){
			$("#sufow_li2").attr("class","selectBg");
			$("#sufow_li1").attr("class","noSelectBg");
			$("#sufow_li3").attr("class","noSelectBg");
			$("#sufow_li4").attr("class","noSelectBg");
		});
		
		$("#sufow_li3").click(function(){
			$("#sufow_li3").attr("class","selectBg");
			$("#sufow_li1").attr("class","noSelectBg");
			$("#sufow_li2").attr("class","noSelectBg");
			$("#sufow_li4").attr("class","noSelectBg");
		});
		$("#sufow_li4").click(function(){
			$("#sufow_li4").attr("class","selectBg");
			$("#sufow_li1").attr("class","noSelectBg");
			$("#sufow_li2").attr("class","noSelectBg");
			$("#sufow_li3").attr("class","noSelectBg");
		});
		
	
});

</script>

<style>
	body{
			background-color: #355;
			background-image: url("../static/image/background.png");
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: cover;
			}
.selectBg{
	margin-top:16px;
	height:60px;
	width:100%;
	background-color:rgba(31,217,155,0.8);
	text-align:center;
	color:#fff;
	display: block;
	font-size:24px;
	border-radius:6px;
}

.noSelectBg{
		margin-top:16px;
		height:60px;
		width:100%;
		background-color:rgba(123,139,146,0.5);
		text-align:center;
		color:#1fd99b;
		display: block;
		font-size:20px;
		border-radius:6px;
}
#sufow_top{
	height:120px;
	width:100%;
}
#sufow_logout{
	margin-left:94%;
	height:30px;
	width:80px;
	display: block;
	text-align:center;
	background-color: rgba(255, 255, 255, 0.4);
	border-radius:6px;
}
#sufow_logout a{
	text-align: center;
	text-decoration: none;
	line-height: 30px;
	color:#fff;
	
}
#sufow_title{
		color:#fff;
		font-size:28px;
		text-align:center;
		display:block;
		padding-top:10px;
		font-size: 38px;
	
	}

	#sufow_left{
	height:700px;
	width:20%;
	float:left;
	color:#fff;
	background-color:rgba(5, 135, 151, 0.4);
	border-radius:10px;
			
	}
	#sufow_left li{
	list-style-type:none; 
	line-height:60px;
	}
	
	#sufow_li1:hover{
		background-color:rgba(31,217,155,0.8);
		color:#fff;
	}
	#sufow_li2:hover{
		background-color:rgba(31,217,155,0.8);
		color:#fff;
	}
	#sufow_li3:hover{
		background-color:rgba(31,217,155,0.8);
		color:#fff;
	}
	#sufow_li4:hover{
		background-color:rgba(31,217,155,0.8);
		color:#fff;
	}
   #sufow_left a{
		text-decoration: none;
	}
 
	#sufow_frame{
	height:700px;
	width:100%;
	border: 0px;
	}

	#sufow_content{
		height:700px;
		margin-left:21%;
		width:78%;
		background-color:rgba(5, 135, 151, 0.2);
		border-radius:20px;
	}

	#sufow_bottom{
		height:60px;
		width:100%;
		clear:both;
	}
	
	#sufow_copyright{
		color:#fff;
		line-height:80px;
		text-align:center;
		font-size: 28px;
		font-family: serif;
		
	}

</style>



<body>

					<div id="sufow_top">
					<span id="sufow_logout"><a href="/life/home/loginOut">退出</a></span>
					<span id="sufow_title">出入库管理系统</span>
					</div>
					
					
					<div id="sufow_left">
								<a href='/life/home/main1' target="home">
								<li class="selectBg" id="sufow_li1">操 作 记 录</li>
								</a>
								<a href='/life/home/main2' target="home">
								<li class="noSelectBg" id="sufow_li2">入      库</li></a>
								<a href='/life/home/main3' target="home">
								<li class="noSelectBg" id="sufow_li3">出       库</li></a>
								<a href='/life/home/main4' target="home">
								<li class="noSelectBg" id="sufow_li4">类 型 管 理</li></a>
					
					</div>
					
					<div id="sufow_content">
						<iframe src="main1.html"  name="home"  id="sufow_frame">             
						</iframe>
					</div>

					<div id="sufow_bottom">
						<div id="sufow_copyright">@Copyright舒泉科技</div>
					</div>
	
                 
  

</body>
</html>