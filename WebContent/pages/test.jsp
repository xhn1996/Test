<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>測試</title>
<script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/test.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
</head>
<body>
	<jsp:include page="/pages/top.jsp"></jsp:include>
	<jsp:include page="/pages/banner.jsp"></jsp:include>
	<div class="container testsoso">
		<div class="row soso">
			<div class="col-lg-12 testshou">
				<div class="input-group input-group-lg">
					<input type="text" class="form-control" id="mo1"
						placeholder="输入测试试卷名"> <span class="input-group-btn">
						<button class="btn btn-default" id="mo2" type="button">搜索</button>
					</span>
				</div>
			</div>
		</div>

	</div>
	<div class="container mmm">
		<div class="row">
			<div class="col-xs-12">
				<div class="container-fluid testmy">
					<div class="row">
						<div class="col-xs-12 testtop">
							<div class="yi">已测试</div>
							<div class="wei">未测试</div>
						</div>
					</div>
					<div class="row yitest">
						<div class="col-xs-12">
							<div class="container-fluid testbig">
								<div class="row">
									<div class="col-xs-4 col-xm-3 col-md-2 testcol">
										<div class="row">
											<div class="col-xs-12 content">JAVA</div>
										</div>
										<div class="row">
											<div class="col-xs-12 content">C语言</div>
										</div>
										<div class="row">
											<div class="col-xs-12 content">数据库</div>
										</div>
									</div>
									<div class="col-xs-8 col-xm-9 col-md-10 testcol" id="cols">
										<div class="row">
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">下载</a>
												</div>
											</div>
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">下载</a>
												</div>
											</div>
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">下载</a>
												</div>
											</div>
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">下载</a>
												</div>
											</div>
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">下载</a>
												</div>
											</div>
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">下载</a>
												</div>
											</div>

										</div>
										<div class="row" id="mypage">
											<div class="col-xs-12">
												<nav aria-label="Page navigation">
													<ul class="pagination">
														<li><a href="#" aria-label="Previous"> <span
																aria-hidden="true">&laquo;</span>
														</a></li>
														<li><a href="#">1</a></li>
														<li><a href="#">2</a></li>
														<li><a href="#">3</a></li>
														<li><a href="#" aria-label="Next"> <span
																aria-hidden="true">&raquo;</span>
														</a></li>
													</ul>
												</nav>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row weitest">
						<div class="col-xs-12">
							<div class="container-fluid testbig">
								<div class="row">
									<div class="col-xs-4 col-xm-3 col-md-2 testcol">
										<div class="row">
											<div class="col-xs-12 content">JAVA</div>
										</div>
										<div class="row">
											<div class="col-xs-12 content">C语言</div>
										</div>
										<div class="row">
											<div class="col-xs-12 content">数据库</div>
										</div>
									</div>
									<div class="col-xs-8 col-xm-9 col-md-10 testcol" id="cols">
										<div class="row">
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">开始考试</a>
												</div>
											</div>
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">开始考试</a>
												</div>
											</div>
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 imgxs">
												<div class="myimg">
													<img src="<c:url value="/images/test/1.png"/>" /> <span>java卷子</span>
													<a href="">开始考试</a>
												</div>
											</div>

										</div>
										<div class="row" id="mypage">
											<div class="col-xs-12">
												<nav aria-label="Page navigation">
													<ul class="pagination">
														<li><a href="#" aria-label="Previous"> <span
																aria-hidden="true">&laquo;</span>
														</a></li>
														<li><a href="#">1</a></li>
														<li><a href="#">2</a></li>
														<li><a href="#">3</a></li>
														<li><a href="#" aria-label="Next"> <span
																aria-hidden="true">&raquo;</span>
														</a></li>
													</ul>
												</nav>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/pages/bottom.jsp"></jsp:include>
	<script type="text/javascript">
		$(".weitest").hide();
		$(".yi").css("color", "#1460ec");
		$(".yi").click(function() {
			$(".weitest").stop().hide();
			$(".yitest").stop().show();
			$(".wei").css("color", "#000000");
			$(this).css("color", "#1460ec");
		});
		$(".wei").click(function() {
			$(".weitest").stop().show();
			$(".yitest").stop().hide();
			$(".yi").css("color", "#000000");
			$(this).css("color", "#1460ec");
		});
	</script>
	<script type="text/javascript">
		$("#aaaa a").css("color", "#000000");
		$("#aaaa a").eq(2).css({
			"color" : "#1460ec",
			"font-size" : "18px"
		});
	</script>
</body>
</html>