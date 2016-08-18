<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>在表单中使用验证码</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
	//刷新验证码
	function changeImg(){
	document.getElementById("validateCodeImg").src="${pageContext.request.contextPath}/servlet/DrawImage?"+Math.random();
	}
	</script>
  </head>
  
  <body>
  <form action="${pageContext.request.contextPath}/servlet/DrawImage" method="post">
  	验证码:<input type="text" name="validateCodeImg"/>
  	<img alt="验证码看不清，换一张呗" src="${pageContext.request.contextPath}/servlet/DrawImage" id="validateCodeImg" onclick="changeImg()">
  	<a href="javascript:void(0)" onclick="changeImg()">验证码看不清，换一张呗</a>
  	<br>
  	<input type="submit" value="提交"/>
  </form>
  </body>
</html>
