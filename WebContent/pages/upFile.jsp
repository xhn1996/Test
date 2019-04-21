<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>上传头像</title>
<link href="https://cdn.bootcss.com/cropper/3.1.3/cropper.min.css"
	rel="stylesheet">
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.mrow{
	margin-bottom: 5px;
}

#photo {
	max-width: 100%;
}

.mxs{
	width: 77px;
	height: 77px;
	overflow: hidden;
	border-radius: 50%;
}

.but {
	margin-top: 10px;
}
.sxxss{
	height: 300px;
	border: 1px solid #c3cdea;
	box-sizing: border-box;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row mrow">
			<div class="col-sm-6 col-sm-offset-2 sxxss">
				<img src="" id="photo">
			</div>
			<div class="col-sm-2">
				<div>
					<label for="input" class="btn btn-danger"
						style="margin: 20px; background: #3b5fee; color: #ffffff; border: none;">
						<span>选择图片</span> <input type="file" id="input" class="sr-only">
					</label>
				</div>

				<div style="margin: 0px 20px;">
					<p>预览(77*77)</p>
					<div class="img-preview mxs"></div>
				</div>
				<div style="margin: 0px 20px;">
					<button class="btn btn-primary but" onclick="crop()" style=" background: #3b5fee; color: #ffffff; border: none;">上传头像</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/cropper/3.1.3/cropper.min.js"></script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		// 修改自官方demo的js
		var initCropper = function(img, input) {
			var $image = img;
			var options = {
				aspectRatio : 1, // 纵横比
				viewMode : 2,
				preview : '.img-preview' // 预览图的class名
			};
			$image.cropper(options);
			var $inputImage = input;
			var uploadedImageURL;
			if (URL) {
				// 给input添加监听
				$inputImage.change(function() {
					var files = this.files;
					var file;
					if (!$image.data('cropper')) {
						return;
					}
					if (files && files.length) {
						file = files[0];
						// 判断是否是图像文件
						if (/^image\/\w+$/.test(file.type)) {
							// 如果URL已存在就先释放
							if (uploadedImageURL) {
								URL.revokeObjectURL(uploadedImageURL);
							}
							uploadedImageURL = URL.createObjectURL(file);
							// 销毁cropper后更改src属性再重新创建cropper
							$image.cropper('destroy').attr('src',
									uploadedImageURL).cropper(options);
							$inputImage.val('');
						} else {
							window.alert('请选择一个图像文件！');
						}
					}
				});
			} else {
				$inputImage.prop('disabled', true).addClass('disabled');
			}
		}
		var crop = function() {
			var photo = $('#photo').cropper('getCroppedCanvas', {

				width : 77,

				height : 77

			}).toDataURL('image/png');

			$.post("<c:url value="/userIcon"/>" + "?t=" + Math.random(), {
				"dataURL" : photo

			}, function(re) {
			}, "text");

		}
		$(function() {
			initCropper($('#photo'), $('#input'));
		});
	</script>
</body>
</html>