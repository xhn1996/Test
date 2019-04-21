<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>顶部</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/top.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
<%-- <script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script> --%>
</head>
<body>
	<div class="container" id="sss">
		<div class="top-box row">
			<div class="col-xs-3 col-sm-2 col-md-1 col-lg-1">
				<div class="logo">logo</div>
			</div>
			<div class="col-xs-4 col-sm-8 col-md-9 col-lg-9 text">
				<span>课堂小助手</span>
			</div>
			<div class="col-xs-5 col-sm-2 col-md-2 col-lg-2 mya">
				<div class="row">
					<div class="col-xs-6 col-lg-6" style="text-align: right;">
						<div class="msy">
							<c:choose>
								<c:when test="${not empty admin}">
									<a href="<c:url value="/pages/login.jsp"/>">登录</a>
								</c:when>
								<c:otherwise>
									<img alt="" src="D:\userIco\aa.png" id="imgs" />
									<ul>
										<li><a href="<c:url value="/pages/userInfo.jsp"/>">个人资料</a></li>
										<li><a href="<c:url value="/pages/login.jsp"/>">退出</a></li>
									</ul>
								</c:otherwise>
							</c:choose>
						</div>

					</div>
					<div class="col-xs-6 col-lg-6">
						<c:choose>
							<c:when test="${not empty admin}">
								<a href="<c:url value="/pages/regist.jsp"/>">注册</a>
							</c:when>
							<c:otherwise>
								<label id="aaa">zhangsan</label>
							</c:otherwise>
						</c:choose>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="container" id="ss">
		<nav class="nav navbar-default container-fluid"
			style="background: #ffffff;">
			<div class="container-fluid con">
				<div class="navbar-header" style="background: #ffffff">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="falst" id="bub">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="row nav" style="text-align: left;" id="aaaa">
						<li class="col-lg-2 "><a href="<c:url value="/index.jsp"/>">首页</a></li>
						<li class="col-lg-2  col-md-12"><a
							href="<c:url value="/pages/data.jsp"/>">资料</a></li>
						<li class="col-lg-2  col-md-12"><a
							href="<c:url value="/pages/test.jsp"/>">测试</a></li>
						<li class="col-lg-2  col-md-12"><a
							href="<c:url value="/pages/scoresQuery.jsp"/>">成绩查询</a></li>
						<li class="col-lg-2  col-md-12"><a
							href="<c:url value="/pages/outFind.jsp"/>">出勤查询</a></li>
						<li class="col-lg-2  col-md-12"><a
							href="<c:url value="/pages/explain.jsp"/>">产品介绍</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
<script type="text/javascript">
	$(".msy ul").hide();
	$(".msy").mouseover(function(){
		$(".msy ul").stop().show();
	});
	$(".msy ul").mouseleave(function(){
		$(this).stop().hide();
	});
</script>
</body>
</html>
