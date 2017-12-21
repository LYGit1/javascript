<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试DOM</title>
    
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
  	<button onclick="add()">add</button>
  	<button onclick="before()">before</button>
  	<p></p>
  </body>
<script type="text/javascript">
function add(){
	var p = document.getElementsByTagName('p')[0];
	var text = document.createTextNode("文本节点是啥");
	var spantext = document.createTextNode("spantext");
	var span = document.createElement("span");
	span.appendChild(spantext);
	p.appendChild(text);
	p.appendChild(span);
}

function before(){
	var p = document.getElementsByTagName('p')[0];
	var text = document.createTextNode("在哪里插入");
	var span = document.getElementsByTagName('span')[0];
	p.insertBefore(text,span);
}
</script>
</html>
