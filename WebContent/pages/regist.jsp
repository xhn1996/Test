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
<title>注册</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/regist.css"/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/bootstrap.min.css"/>" />
<script type="text/javascript"
	src="<c:url value="/js/jquery-3.0.0.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/js/bootstrap.min.js"/>"></script>
<link type="text/css" rel="stylesheet"
	href="<c:url value="/themes/regist.css"/>" />
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
									<img src="<c:url value="/images/regist/1.png"/>" />
								</div>
							</div>
						</div>
						<div
							class="col-xs-12 col-sm-6 col-sm-pull-6  col-lg-5 col-lg-pull-7">
							<div class="mytit">
								<i>注册</i>
							</div>
							<form action="<c:url value="/registAction"/>" method="post"
								id="myform">
								<div class="form-group has-success has-feedback inputimg"
									style="margin-bottom: 0px;">
									<label class="control-label tishi" for="inputSuccess2"><s:fielderror
											fieldName="stu.name"></s:fielderror> </label> <input type="text"
										class="form-control" id="inputSuccess2" placeholder="请输入姓名"
										style="box-shadow: none; border-bottom: 1px solid #cfd3dc;"
										name="stu.name" maxlength="6" onblur="isChinese(this)"/> <span
										class="glyphicon form-control-feedback" aria-hidden="true">
										<img src="<c:url value="/images/regist/8.png"/>" />
									</span>
								</div>
								<div class="form-group has-success has-feedback inputimg"
									style="margin-bottom: 0px;">
									<label class="control-label tishi" for="inputSuccess2"><s:fielderror
											fieldName="email"></s:fielderror> </label> <input type="text"
										class="form-control" id="myemail" placeholder="请输入邮箱号"
										style="box-shadow: none; border-bottom: 1px solid #cfd3dc;"
										name="stu.id" onblur="isEmail(this)"/> <span
										class="glyphicon form-control-feedback" aria-hidden="true">
										<img src="<c:url value="/images/regist/8.png"/>" />
									</span>
								</div>
								<div class="form-group has-success has-feedback inputimg"
									style="margin-bottom: 0px;">
									<label class="control-label tishi" for="inputSuccess2">
									</label> <input type="password" class="form-control" id="p"
										placeholder="请输入密码"
										style="box-shadow: none; border-bottom: 1px solid #cfd3dc;"
										name="stu.pwd" onblur="passWord(this)" /> <span
										class="glyphicon form-control-feedback" aria-hidden="true">
										<img src="<c:url value="/images/regist/8.png"/>" />
									</span>
								</div>
								<div class="form-group has-success has-feedback inputimg"
									style="margin-bottom: 0px;">
									<label class="control-label tishi" for="inputSuccess2">
									</label> <input type="password" class="form-control" id="inputSuccess2"
										placeholder="请输入确认密码"
										style="box-shadow: none; border-bottom: 1px solid #cfd3dc;"
										onblur="isPwd(this)" /> <span
										class="glyphicon form-control-feedback" aria-hidden="true">
										<img src="<c:url value="/images/regist/8.png"/>" />
									</span>
								</div>
								<div class="form-group has-success has-feedback inputimg myyzm"
									style="margin-bottom: 0px;">
									<label class="control-label tishi" for="inputSuccess2">
									</label> <input type="text" onblur="isYzm(this)" class="form-control"
										id="myzs" placeholder="请输入验证码"
										style="box-shadow: none; border-bottom: 1px solid #cfd3dc;"
										name="yzm" /> <input type="button" id="myyszma" value="获取验证码">
								</div>
								<div class="myxuan" style="margin-bottom: 0px;">
									<input type="radio" value="男" name="stu.sex" checked="checked" /><label
										style="margin-left: 20px; margin-right: 80px;">男 </label><input
										type="radio" value="女" name="stu.sex" /><label
										style="margin-left: 20px">女</label>
								</div>
								<div class="tijiao" style="margin-bottom: 0px;">
									<input type="submit" id="myti" value="立即注册" />
								</div>
							</form>
							<div class="tong">
								<input type="checkbox" id="smy" autofocus="autofocus"/> <label>我已同意《用户使用协议》
								</label>
							</div>
							<div class="myaa">
								已有账号？<a href="<c:url value="/pages/login.jsp"/>">立即登录</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$("form input").focus(function() {
			$(this).css("color", "#000000");
		});
		$(".tishi").css("color", "red");
		$(".tishi").siblings("span").find("img").hide()
		//判断中文
		var zw = false;
		function isChinese(obj) {
			var v = $(obj).val().trim();
			var img = $(obj).siblings("span").find("img");
			var ti = $(obj).siblings("label");
			if (v == "") {
				$(img).attr("src", "<c:url value='/images/regist/7.png'/>")
						.stop().show();
				$(ti).text("");
				zw = false;
			} else if (/^[\u4e00-\u9fa5]+$/.test(v)) {
				$(img).attr("src", "<c:url value='/images/regist/8.png'/>")
						.stop().show();
				$(ti).text("");
				zw = true;
			} else {
				$(ti).text("必须是中文");
				$(img).attr("src", "<c:url value='/images/regist/9.png'/>")
						.stop().show();
				zw = false;
			}
		}
		//判断邮箱
		var em = false;
		var yz2=false;
		function isEmail(obj) {
			var v = $(obj).val().trim();
			var img = $(obj).siblings("span").find("img");
			var ti = $(obj).siblings("label");
			if (v == "") {
				$(ti).text("");
				em = false;
				$(img).attr("src", "<c:url value='/images/regist/7.png'/>")
						.stop().show();
			} else if (/^[0-9]{5,13}(@qq[.]com|@qq[.]cn)$/.test(v)) {
				em = true;
				yz2=true;
				$(img).attr("src", "<c:url value='/images/regist/8.png'/>")
						.stop().show();
				$(ti).text("");
			} else {
				em = false;
				$(ti).text("请输入正确的QQ邮箱");
				$(img).attr("src", "<c:url value='/images/regist/9.png'/>")
						.stop().show();
			}
		}
		//判断密码 
		var ps = false;
		function passWord(obj) {
			var v = $(obj).val().trim();
			var img = $(obj).siblings("span").find("img");
			var ti = $(obj).siblings("label");
			if (v == "") {
				$(ti).text("");
				ps = false;
				$(img).attr("src", "<c:url value='/images/regist/7.png'/>")
						.stop().show();
			} else if (/^[\w]{6,18}$/.test(v)) {
				ps = true;
				$(img).attr("src", "<c:url value='/images/regist/8.png'/>")
						.stop().show();
				$(ti).text("");
			} else if (v.length<6||v.length>18) {
				$(ti).text("密码长度为6至18位");
				$(img).attr("src", "<c:url value='/images/regist/9.png'/>")
						.stop().show();
				ps = false;
			} else {
				$(ti).text("密码由字母数字下划线组成");
				$(img).attr("src", "<c:url value='/images/regist/9.png'/>")
						.stop().show();
				ps = false;
			}
		}
		//判断密码是否一样
		var pw = false;
		function isPwd(obj) {
			var v = $(obj).val().trim();
			var img = $(obj).siblings("span").find("img");
			var ti = $(obj).siblings("label");
			var pwd = $("#p").val().trim();
			if (v == "") {
				$(ti).text("");
				pw = false;
				$(img).attr("src", "<c:url value='/images/regist/7.png'/>")
						.stop().show();
			} else if (pwd != "" && v == pwd) {
				pw = true;
				$(img).attr("src", "<c:url value='/images/regist/8.png'/>")
						.stop().show();
				$(ti).text("");
			} else if (pwd == "") {
				pw = false;
				$(img).attr("src", "<c:url value='/images/regist/8.png'/>")
						.stop().show();
				$(ti).text("");
			} else {
				pw = false;
				$(img).attr("src", "<c:url value='/images/regist/9.png'/>")
						.stop().show();
				$(ti).text("两次密码不一样");
			}
		}
		//判断验证码
		var yz = false;
		function isYzm(obj) {
			var v = $(obj).val().trim();
			var ti = $(obj).siblings("label");
			if (v == "") {
				$(ti).text("");
				yz = false;
			} else if (/^[0-9]{6}$/.test(v)) {
				yz = true;
				$(ti).text("");
			} else if (/^[^0-9]+$/.test(v)) {
				yz = false;
				$(ti).text("验证码只能是数字");
			} else {
				yz = false;
				$(ti).text("验证码长度为6");
			}
		}
		//获取验证码
		var ti = false;//是否开始
		var stop = null;
		$("#myyszma").css("color", "#ffffff");
		$("#myyszma").click(function() {
			$(this).css("color", "#ffffff");
			if (yz2) {
				if (!ti) {
					stop = setInterval(time, 1000);
					var yzm = $("#myemail").val();
					$.post("<c:url value="/yzm"/>", {
						"email" : yzm
					}, function() {
					}, "text");
				} else {
					return false;
				}

			} else {
				return false;
			}
		});
		//定时
		var i = 59;

		var time = function() {
			if (i <= 0) {
				i = 59
				ti = false;
				clearInterval(stop);
				$("#myyszma").val("再次获取")

			} else {
				ti = true;
				$("#myyszma").val(i)
				i--;
			}
		}
		var s = false;
		$("#smy").click(function() {
			if (!s) {
				s = true;
			} else {
				s = false;
			}
		});
		$("#myti").click(function() {
			$(this).css("color", "#ffffff");
			/* alert("zw:"+zw);
			alert("em:"+em);
			alert("yz2:"+yz2);
			alert("ps:"+ps);
			alert("pw:"+pw);
			alert("yz:"+yz);
			alert("s:"+s); */
			if (zw&&em&&yz2&&ps&&pw&&yz&&s) {
				alert(12);
				$("myform").submit();
			} else {
				alert(1);
				return false;
			}
		});
	</script>

</body>
</html>
