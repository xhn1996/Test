<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>成绩查询</title>
<script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/scoresQuery.css"/>" />
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
				<div class="col-xs-12">期末成绩查询</div>
			</div>
			<div class="row myup">
				<div class="col-xs-12 col-sm-6">
					<div class="dropdown dropdown1">
						<div class="myss1">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="true">
								最新学期期末 <img src="<c:url value="/images/scoresQuery/1.png"/>"
									class="caret1">
							</button>
							<ul id="menu1">
								<li><a href="#">2018上学年</a></li>
								<li><a href="#">2018下学年</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="dropdown dropdown2">
						<div class="myss2">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="true">
								全部期末成绩 <img src="<c:url value="/images/scoresQuery/1.png"/>"
									class="caret1">
							</button>
							<ul id="menu2">
								<li><a href="#">java开发测试</a></li>
								<li><a href="#">WEB前端课程</a></li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row mytable">
				<div class="col-xs-12">
					<span class="myspand">JAVA</span>
					<table class="table table-hover">
						<tr>
							<td>学号</td>
							<td>姓名</td>
							<td>平时成绩</td>
							<td>考试成绩</td>
							<td>总成绩</td>
						</tr>
						<tr>
							<td>1</td>
							<td>张三</td>
							<td>80</td>
							<td>80</td>
							<td>80</td>
						</tr>

					</table>
				</div>

			</div>
			<div class="row mytable">
				<div class="col-xs-12">
					<span class="myspand">C语言</span>
					<table class="table table-hover">
						<tr>
							<td>学号</td>
							<td>姓名</td>
							<td>平时成绩</td>
							<td>考试成绩</td>
							<td>总成绩</td>
						</tr>
						<tr>
							<td>1</td>
							<td>张三</td>
							<td>80</td>
							<td>80</td>
							<td>80</td>
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
	$("#aaaa a").eq(3).css({
		"color" : "#1460ec",
		"font-size" : "18px"
	});
</script>
</html>