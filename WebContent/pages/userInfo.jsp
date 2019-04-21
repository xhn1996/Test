<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>个人信息</title>
<script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script src="https://cdn.bootcss.com/cropper/3.1.3/cropper.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/userInfo.css"/>" />
</head>
<body>
	<jsp:include page="/pages/top.jsp"></jsp:include>
	<jsp:include page="/pages/banner.jsp"></jsp:include>
	<div class="container userInfo">
		<div class="row" id="ttat">
			<div class="col-sm-3"></div>
			<div class="col-sm-6 info">
				<div class="container-fluid userinner">
					<div class="row">
						<div class="col-xs-4 col-md-5">
							<div>
								<img src="<c:url value="/images/banner/banner_big.png"></c:url>"
									alt="First slide" id="scs">
							</div>
						</div>
						<div class="col-xs-8 col-md-7">
							<form action="" method="post">
								<ul class="myul">
									<li style="margin-top: 40px;"><label>学号</label><input
										type="text" /></li>
									<li><label>姓名</label><input type="text" /></li>
									<li><label>性别</label><input type="text" /></li>
									<li><label>电话号码</label><input type="text"
										placeholder="897979" maxlength="17" /></li>
									<li style="margin-bottom: 40px;"><label>邮箱</label><input
										type="text" maxlength="17PX;" /></li>
								</ul>
							</form>

						</div>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row bus">
						<button>信息修改</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row" id="sas">
			<jsp:include page="/pages/upFile.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="/pages/bottom.jsp"></jsp:include>
	<script type="text/javascript">
		$("#sas").hide();
		
		$("#scs").click(function(){
			$("#ttat").stop().hide();
			$("#sas").stop().show();
		});
	</script>
</body>
</html>