<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>

	<link rel="stylesheet" href="<%=path %>/css/qiantai.css" type="text/css" charset="utf-8" />

	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>

	<script type="text/javascript">
	</script>
</head>

<body>
<div id="wrapper">
	<div id="header"></div>
	<div id="left">
		<jsp:include flush="true" page="/site/left.jsp"></jsp:include>
	</div>
	<div id="right">
		<!-- 111 -->
		<h2>在线测试</h2>
		<div id="welcome">
			<div>
				<div class="c1-body">
					<form action="<%=path %>/ziciDafen.action" name="formAdd" method="post">
						<c:forEach items="${requestScope.fenleiList}"  varStatus="sta" var="timu">
							<table cellspacing="5" cellpadding="5">
								<tr>
									<td>
										·   <a href="<%=path%>/timuAll.action?fenlei=${timu}">${timu}</a>
										&nbsp;
									</td>
								</tr>

							</table>
							<br/>
						</c:forEach>

					</form>
					<div class="pg-3"></div>
				</div>
			</div>
			<!-- <p class="more"><a href="#">more</a></p> -->
		</div>
		<!-- 111 -->
	</div>
	<div class="clear"> </div>
	<div id="footer">
		<div id="copyright">
			&copy;大学生学习交流网站 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=path %>/login.jsp">系统后台登陆</a>
		</div>
		<div id="footerline"></div>
	</div>
</div>
</body>
</html>
