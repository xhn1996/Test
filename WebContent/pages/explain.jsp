<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>产品介绍</title>
<script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/explain.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/explain.css"/>" />
</head>
<body>
	<jsp:include page="/pages/top.jsp"></jsp:include>
	<jsp:include page="/pages/banner.jsp"></jsp:include>
	<div class="container">
		<div class="row top">
			<div class="col-xs-12">
				<div>
					<img alt="" src="<c:url value="/images/index/1.png"/>" /> <span>产品介绍</span>
					<img alt="" src="<c:url value="/images/index/2.png"/>" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-lg-7 col-lg-push-5 indeximg">
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="<c:url value="/images/explain/1.png"/>">
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-lg-5 col-lg-pull-7">
				<div class="row">
					<div class="col-xs-12 indextext" style="margin-top: 20px">教育，教育者按照法律法规和行业规范，
						根据学校条件和职称，有目的有计划有组织地对受教育者的心智发展进行教化培育，
						以现有的经验、学识推敲于人，为其解释各种现象、问题或行为，以提高实践能力，
						其根本是以人的一种相对成熟或理性的思维来认知对待，让事物得以接近其最根本的存在,
						人在其中，慢慢地对一种事物由感官触摸而到以认知理解的状态， 并形成一种相对完善或理性的自我意识思维...</div>
					<div class="col-xs-12 indextext" style="margin-top: 20px">教育，教育者按照法律法规和行业规范，
						根据学校条件和职称，有目的有计划有组织地对受教育者的心智发展进行教化培育，
						以现有的经验、学识推敲于人，为其解释各种现象、问题或行为，以提高实践能力，
						其根本是以人的一种相对成熟或理性的思维来认知对待，让事物得以接近其最根本的存在,
						人在其中，慢慢地对一种事物由感官触摸而到以认知理解的状态， 并形成一种相对完善或理性的自我意识思维...</div>
				</div>

			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 indextext"
				style="margin-top: 20px; margin-bottom: 100px;">教育，教育者按照法律法规和行业规范，
				根据学校条件和职称，有目的有计划有组织地对受教育者的心智发展进行教化培育，
				以现有的经验、学识推敲于人，为其解释各种现象、问题或行为，以提高实践能力，
				其根本是以人的一种相对成熟或理性的思维来认知对待，让事物得以接近其最根本的存在,
				人在其中，慢慢地对一种事物由感官触摸而到以认知理解的状态， 并形成一种相对完善或理性的自我意识思维...</div>
		</div>
	</div>
	<jsp:include page="/pages/bottom.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$("#aaaa a").css("color", "#000000");
	$("#aaaa a").eq(5).css({
		"color" : "#1460ec",
		"font-size" : "18px"
	});
</script>
</html>