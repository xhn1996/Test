<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>banner</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
<%-- <script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script> --%>
</head>
<body>
<div id="myCarousel" class="carousel slide"  data-ride="carousel" data-interval="2000">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
			<img src="<c:url value="/images/banner/banner_big.png"></c:url>" alt="First slide">
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<img src="<c:url value="/images/banner/banner_big.png"></c:url>" alt="Second slide">
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<img src="<c:url value="/images/banner/banner_big.png"></c:url>" alt="Third slide">
			<div class="carousel-caption"></div>
		</div>
	</div>
</div> 





</body>
</html>