<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/login.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
<script type="text/javascript"
	src="<c:url value="/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
</head>
<body>
	<div class="container bbbb">
		<div class="row">
			<div class="col-lg-12">
				<div class="container-fluid">
					<div class="row regist">
						<div
							class="col-xs-12 col-sm-6 col-sm-push-6   col-lg-7 col-lg-push-5 indeximg">
							<div class="carousel-inner">
								<div class="item active">
									<img src="<c:url value="/images/login/1.png"/>" />
								</div>
							</div>
						</div>
						<div
							class="col-xs-12 col-sm-6 col-sm-pull-6  col-lg-5 col-lg-pull-7">
							<div class="mytit">
								<i>登录</i>
							</div>
							<form action="<c:url value="/login"/>" method="post" id="myform">
								<div class="form-group has-success has-feedback inputimg"
									style="margin-bottom: 0px;">
									<label class="control-label tishi" for="inputSuccess2">
									</label> <input type="text" class="form-control" id="inputSuccess2"
										placeholder="请输入邮箱号"
										style="box-shadow: none; border-bottom: 1px solid #cfd3dc;"
										name="user.id" value="" onblur="isEmail(this)" /> <span
										class="glyphicon form-control-feedback" aria-hidden="true">
										<img src="<c:url value="/images/regist/8.png"/>" />
									</span>
								</div>

								<div class="form-group has-success has-feedback inputimg"
									style="margin-bottom: 0px;">
									<label class="control-label tishi" for="inputSuccess2"><s:fielderror
											fieldName="pwd" /> </label> <input type="text" class="form-control"
										id="inputSuccess2" placeholder="请输入密码"
										style="box-shadow: none; border-bottom: 1px solid #cfd3dc;"
										name="user.pwd" onblur="passWord(this)" /> <span
										class="glyphicon form-control-feedback" aria-hidden="true">
										<img src="<c:url value="/images/regist/8.png"/>" />
									</span>
								</div>
								<div class="myxuan" style="margin-bottom: 0px;">
									<input type="radio" value="1" name="user.type"
										checked="checked" /><label
										style="margin-left: 20px; margin-right: 80px;">老师 </label><input
										type="radio" value="2" name="user.type" /><label
										style="margin-left: 20px">学生</label>
								</div>
								<div class="tijiao" style="margin-bottom: 0px;">
									<input type="submit" value="立即登录" id="subm" />
								</div>
							</form>
							<div class="myaa">
								还没账号？<a href="<c:url value="/pages/regist.jsp"/>">立即注册</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(".tishi").css("color", "red");

		$(".tishi").siblings("span").find("img").hide()
		var pwd = false;
		var ema =false;
		//判断邮箱
		function isEmail(obj) {
			var v = $(obj).val().trim();
			var img = $(obj).siblings("span").find("img");
			var ti = $(obj).siblings("label");
			if (v == "") {
				$(ti).text("");
				ema = false;
				$(img).attr("src", "<c:url value='/images/regist/7.png'/>")
						.stop().show();
			} else if (/^[0-9]{5,13}(@qq[.]com|@qq[.]cn)$/.test(v)) {
				ema = true;
				$(img).attr("src", "<c:url value='/images/regist/8.png'/>")
						.stop().show();
				$(ti).text("");
			} else {
				$(ti).text("请输入正确的QQ邮箱");
				$(img).attr("src", "<c:url value='/images/regist/9.png'/>")
						.stop().show();
				ema = false;
			}
		}
		//判断密码
		function passWord(obj) {
			var v = $(obj).val().trim();
			var img = $(obj).siblings("span").find("img");
			var ti = $(obj).siblings("label");
			if (v == "") {
				$(ti).text("");
				pwd = false;
				$(img).attr("src", "<c:url value='/images/regist/7.png'/>")
						.stop().show();
			} else if (/^[\w]{6,18}$/.test(v)) {
				pwd = true;
				$(img).attr("src", "<c:url value='/images/regist/8.png'/>")
						.stop().show();
				$(ti).text("");
			} else if (v.length<6||v.length>18) {
				$(ti).text("密码长度为6至18位");
				$(img).attr("src", "<c:url value='/images/regist/9.png'/>")
						.stop().show();
				pwd = false;
			} else {
				$(ti).text("密码由字母数字下划线组成");
				$(img).attr("src", "<c:url value='/images/regist/9.png'/>")
						.stop().show();
				pwd = false;
			}
		}
		$("#subm").click(function() {
			if (pwd&&ema) {
				$("#myform").submit();
			} else {
				return false;
			}

		});
	</script>
</body>

</html>
