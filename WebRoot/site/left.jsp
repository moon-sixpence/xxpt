<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript">
         function userReg()
         {
                var url="<%=path %>/site/userReg/userReg.jsp";
                var ret = window.showModalDialog(url,"","dialogWidth:1500px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
         }
    </script>
	
  </head>
  
  <body>
          <div id="logo">
	         <br/><br/><br/><span style="font-size: 26px;margin-left: 5px;">大学生学习交流网站 </span>
	      </div>
	      <div id="nav">
	        <ul>
	          <li><a href="<%=path %>/docAll.action" style="font-family: 微软雅黑;font-size: 12px;">教学资料</a></li>
	          <li><a href="<%=path %>/shipinAll.action" style="font-family: 微软雅黑;font-size: 12px;">教学视频</a></li>
	          <li><a href="<%=path %>/timuAll.action" style="font-family: 微软雅黑;font-size: 12px;">在线测试</a></li>
	          <li><a href="<%=path %>/shitiAll.action" style="font-family: 微软雅黑;font-size: 12px;">试题下载</a></li>
	          <li><a href="<%=path %>/liuyanAll.action" style="font-family: 微软雅黑;font-size: 12px;">留言板块</a></li>
	        </ul>
	      </div>
	      <div id="news">
	        <jsp:include flush="true" page="/site/userlogin/userlogin.jsp"></jsp:include>
	        <div class="hr-dots"> </div>
	      </div>
	      <div id="news">
	        <h2 style="font-family:楷体;font-size: 15px;">联系我们</h2>
	        <!-- <h3>02/03/07</h3> -->
	        <p>地址：吉林农业科技学院</p>
	        <div class="hr-dots"> </div>
	        <!-- <h3>01/03/07</h3> -->
	        <p>电话：13688888888</p>
	        <!-- <p class="more"><a href="#">more</a></p> -->
	        <p>传真: +13688888888</p>
	      </div>
	      <div id="support">
	        <p style="display: none">传真: +13688888888</p>
	      </div>
  </body>
</html>
