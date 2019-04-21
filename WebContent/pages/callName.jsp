<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>点名</title>
<script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/callName.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/top.css"/>" />
</head>
<body>
	<div class="s1">
		<div class="s2">
			<jsp:include page="/pages/top.jsp"></jsp:include>
			<jsp:include page="/pages/banner.jsp"></jsp:include>
			<div class="container">
				<div class="row topmy"></div>
				<div class="row">
					<div class="col-md-4">
						<div class="indeximg3">
							<strong>顺序点名</strong> <a href="" class="imga"> <img alt=""
								src="<c:url value="/images/callName/11.png"/>">
							</a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="indeximg3">
							<strong>随机点名</strong> <a href="" class="imga"> <img alt=""
								src="<c:url value="/images/callName/11.png"/>">
							</a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="indeximg3 imgsx">
							<strong>分组点名</strong> <a href="#" class="imga"> <img alt=""
								src="<c:url value="/images/callName/11.png"/>">
							</a>
						</div>
					</div>
				</div>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="<c:url value="/images/callName/13.png"/>">
					</div>
				</div>
			</div>
			<jsp:include page="/pages/bottom.jsp"></jsp:include>
		</div>
		<div class="s3"></div>
		<div class="s4">
			<div class="container">
				<div class="row wo">
					<div class="col-xs-3 box">
						<span>课程</span> <img alt=""
							src="<c:url value="/images/callName/14.png"/>">
					</div>
					<div class="col-xs-3 box">
						<span>年级</span> <img alt=""
							src="<c:url value="/images/callName/14.png"/>">
					</div>
					<div class="col-xs-3 box">
						<span>班级</span> <img alt=""
							src="<c:url value="/images/callName/14.png"/>">
					</div>
				</div>
			</div>
		</div>
		<div class="s5">
			<div class="container xian4">
				<div class="row">
					<img src="<c:url value="/images/tdata/09.png"/>" class="xianimg">
				</div>
				<div class="row">
					<span></span>
				</div>
				<div class="row">
					<div class="col-sm-3 m">
						<div class="myt">1组</div>
					</div>
					<div class="col-sm-3 m">
						<div class="myt">2组</div>
					</div>
					<div class="col-sm-3 m">
						<div class="myt">3组</div>
					</div>
				</div>
				<div class="row qu">
					<div class="col-sm-12">
						<button>确定</button>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
<script type="text/javascript">
	$("#aaaa a").css("color", "#000000");
	$("#aaaa a").eq(0).css({
		"color" : "#1460ec",
		"font-size" : "18px"
	});
	$(".box").click(function() {
		$(".s3").hide();
		$(".s4").hide();
	});
	$(".s5").hide();
	$(".xianimg").click(function(){
		$(".s5").hide();
		$(".s3").hide();
	});
	$(".imgsx").click(function(){
		$(".s5").show();
		$(".s3").show();
	});
</script>
</html>