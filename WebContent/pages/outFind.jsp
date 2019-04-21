<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>出勤查询</title>
<script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/outFind.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
</head>
</head>
<body>
	<jsp:include page="/pages/top.jsp"></jsp:include>
	<jsp:include page="/pages/banner.jsp"></jsp:include>
	<div class="container">
		<div class="container-fluid">
			<div class="row qimo">
				<div class="col-xs-12">出勤查询</div>
			</div>
			<div class="row myup">
				<div class="col-xs-12">
					<div class="dropdown dropdown1">
						<div class="myss1">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="true">
								全部出勤 <img src="<c:url value="/images/scoresQuery/1.png"/>"
									class="caret1">
							</button>
							<ul id="menu1">
								<li><a href="#">2018上学年</a></li>
								<li><a href="#">2018下学年</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row mytable">
				<div class="col-xs-12">
					<span class="myspand">“Java”出勤记录</span>
					<table class="table table-hover">
						<tr>
							<td>学号</td>
							<td></td>
							<td>姓名</td>
							<td>出勤次数</td>
							<td>出勤率</td>
							<td>操作</td>
						</tr>
						<tr>
							<td>1</td>
							<td></td>
							<td>张三</td>
							<td>8</td>
							<td>100%</td>
							<td><span class="tdspan">查看详情</span></td>
						</tr>

					</table>
				</div>

			</div>
			<div class="row mytable">
				<div class="col-xs-12">
					<span class="myspand">“C语言”出勤记录</span>
					<table class="table table-hover">
						<tr>
							<td>学号</td>
							<td></td>
							<td>姓名</td>
							<td>出勤次数</td>
							<td>出勤率</td>
							<td>操作</td>
						</tr>
						<tr>
							<td>1</td>
							<td></td>
							<td>张三</td>
							<td>8</td>
							<td>100%</td>
							<td><span class="tdspan">查看详情</span></td>
						</tr>

					</table>
				</div>

			</div>
		</div>
	</div>
	<jsp:include page="/pages/bottom.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$("#aaaa a").css("color", "#000000");
	$("#aaaa a").eq(4).css({
		"color" : "#1460ec",
		"font-size" : "18px"
	});
</script>
</html>