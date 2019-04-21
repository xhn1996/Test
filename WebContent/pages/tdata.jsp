<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>资料</title>
<script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/tdata.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
</head>
<body>
	<!-- container-fluid  -->
	<div class="xain1">
		<div class="xain2">
			<jsp:include page="/pages/top.jsp"></jsp:include>
			<jsp:include page="/pages/banner.jsp"></jsp:include>
			<div class="container">
				<div class="row top"></div>
				<div class="row">
					<div class="col-lg-12 maindiv">
						<div class="row">
							<div class="col-xs-2 col-lg-2">
								<img alt="" src="<c:url value="/images/tdata/01.png"/>"
									class="imgleft"><img alt=""
									src="<c:url value="/images/tdata/02.png"/>">
								<div class="myimg">
									<img alt="" src="<c:url value="/images/tdata/06.png"/>"
										class="leftbox"> <span>添加课程</span>
								</div>
							</div>
							<div class="col-xs-8 col-lg-8">
								<div class="sdiv">
									<span>Java1</span>
								</div>
								<div class="sx">
									<span>Java1</span>
									<div>
										<img alt="" src="<c:url value="/images/tdata/03.png"/>">
										<img alt="" src="<c:url value="/images/tdata/05.png"/>">
									</div>
								</div>
								<div class="sf">
									<div>
										<img alt="" src="<c:url value="/images/tdata/08.png"/>">
										<span>添加资料</span>
									</div>
								</div>
							</div>
							<div class="col-xs-2 col-lg-2">
								<img alt="" src="<c:url value="/images/tdata/0.png"/>"
									class="imgright">
							</div>
						</div>
					</div>
				</div>
				<div class="row top"></div>
				<div class="row top"></div>
			</div>
			<jsp:include page="/pages/bottom.jsp"></jsp:include>
		</div>
		<div class="xian3"></div>
		<div class="xian5">
			<div class="container xian4">
				<div class="row">
					<img src="<c:url value="/images/tdata/09.png"/>" class="xianimg">
				</div>
				<div class="row rowtext">
					<span>确认删除课程吗?</span>
				</div>
				<div class="row rowbu">
					<div class="col-xs-6">
						<button>确定</button>
					</div>
					<div class="col-xs-6">
						<button>取消</button>
					</div>
				</div>
			</div>
		</div>
		<div class="xian6">
			<div class="container xian4">
				<div class="row">
					<img src="<c:url value="/images/tdata/09.png"/>" class="xianimg">
				</div>
				<form action="">
					<div class="row rowin">
						<input type="text" placeholder="课程名" />
					</div>
					<div class="row rowin">
						<input type="text" placeholder="课程编码" />
					</div>
					<div class="row rowque">
						<input type="submit" value="确定" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$("#aaaa a").css("color", "#000000");
	$("#aaaa a").eq(1).css({
		"color" : "#1460ec",
		"font-size" : "18px"
	});
	$(".sx").hide();
	$(".sf").hide();
	var flag = false;
	$(".imgleft").click(
			function() {
				if (!flag) {
					$(this).siblings("img").attr("src",
							"<c:url value="/images/tdata/07.png"/>");
					$(this)
							.attr("src",
									"<c:url value="/images/tdata/04.png"/>");
					$(this).parent().siblings("div").find("div").show();
					flag = true;
				} else {
					$(this).siblings("img").attr("src",
							"<c:url value="/images/tdata/02.png"/>");
					$(this)
							.attr("src",
									"<c:url value="/images/tdata/01.png"/>");
					$(this).parent().siblings("div").find("div").hide();
					$(this).parent().siblings("div").find("div").eq(0).show();
					flag = false;
				}

			});
	$(".xianimg").click(function() {
		$(".xian3").hide();
		$(".xian5").hide();
		$(".xian6").hide();
	});
	$(".imgright").click(function() {
		$(".xian3").show();
		$(".xian5").show();
	});
	$(".leftbox").click(function() {
		$(".xian3").show();
		$(".xian6").show();
	});
	$(".xian3").hide();
	$(".xian5").hide();
	$(".xian6").hide();
</script>
</html>