<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>bom测试</title>
    
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
  	<button onclick="back()">返回</button>
  	<button onclick="open()">dom窗口</button>
  </body>
  <script type="text/javascript">
    function open(){
    	//window.open('<%=basePath%>domTest.jsp', 'dom测试窗口');
    	window.open('http://www.baidu.com');
    }
  
  	var returnMsg = function(){
  		var text= window.prompt('输入提示信息', '默认值');
  		var textNode = document.createTextNode(text);
  	  	document.body.appendChild(textNode);
  	};
  	window.setTimeout(returnMsg, 1000);
  	
  	function back(){
  		window.history.back();
  		//window.history.go(-1);
  	}
  	document.write('历史页面数：'+window.history.length+'<br/>');
  	document.write('浏览器代码'+window.navigator.appCodeName+'<br/>');
  	document.write('浏览器'+window.navigator.appName+'<br/>');
  	document.write('浏览器版本'+window.navigator.appVersion+'<br/>');
  	document.write('平台'+window.navigator.platform+'<br/>');
  	document.write('插件:<br/>');
  	var plus = new Array();
  	plus = window.navigator.plugins;
  	for (var i=0;i<plus.length;i++){
  		document.write(plus[i]+'<br/>');
  	}
</script>
</html>
