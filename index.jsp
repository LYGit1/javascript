<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试内置对象</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  	<button onclick="toDomTest()">DOM</button>
  	<button onclick="bom()">BOM</button>
  </body>
  <!-- 测试内置对象 -->
	<script type="text/javascript">
	function toDomTest(){
		window.location="<%=basePath%>domTest.jsp";
	}
	
	function bom(){
		window.location="<%=basePath%>bomTest.jsp";
	}
	
		var arra = new Array('a','b','c','d');
		document.write("</br>arra:"+arra.toString()+"</br>");
		var con = new Array('e','f','g');
		document.write("con:"+con.toString()+"</br>");
		var total = arra.concat(con);
		var join = arra.join("|");//返回字符串
		var slice = arra.slice(1, 2);
		var pop = arra.pop();
		var shift = arra.shift();
		
		document.write("total=arra.concat(con):"+total.toString()+"</br>");
		document.write("join=arra.join('|'):"+join.toString()+"<br/>");
		document.write("slice=arra.slice(1,2):"+slice.toString()+"<br/>");
		document.write("pop=arra.pop():"+pop.toString()+"<br/>");
		document.write("shift=arra.shift():"+shift.toString()+"<br/>");
		document.write("arra:"+arra.toString()+"</br>");
		document.write("<br/>");
		
		var num = 5;
		if(isNaN(num)){
			//alert(num+'不是数字');
		}else{
			//alert(num+'是数字');
		}
		num = 'a';
		if(isNaN(num)){
			//alert(num+'不是数字');
		}else{
			//alert(num+'是数字');
		}
		
		var yw = "原文";
		var mw = escape(yw);
		document.write("escape(yw):"+mw+"</br>");
		document.write("unescape(mw):"+unescape(mw)+"</br>");
	</script>
</html>
