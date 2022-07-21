<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>유림 더 숲 인테리어</title>
<link href="css/style.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>
	body{
		 -ms-overflow-style: none;
		 }
		 
		::-webkit-scrollbar {
		  display: none;
	}
	#slideshow {
		display: inline-block;
		text-align: center;
		display: flex;
	  	justify-content: center;
	}
	
	.index-image-d {
		position: absolute;
		display: inline-block;
	}
	
	.index-image-d img {
		width: 100vw;
		height: 100vh;
	}
    @media(max-width:800px) {
	    .index-image-d img {
			width: 800px;
			height: 600px;
		}
    }
</style>
<body>
		<a href="/mainGo.do">
			<div id="slideshow">
				<div class="index-image-d"><img src="image/index-originalImage01.jpg" /></div>
				<div class="index-image-d"><img src="image/index-originalImage02.jpg" /></div>
				<div class="index-image-d"><img src="image/index-originalImage03.jpg" /></div>
				<div class="index-image-d"><img src="image/index-originalImage04.jpg" /></div>
			</div>
		</a>
</body>
<script type="text/javascript">
	$("#slideshow > div:gt(0)").hide();
	setInterval(function() {
		$("#slideshow > div:first")
		.fadeOut(1000)
		.next()
		.fadeIn(1000)
		.end()
		.appendTo("#slideshow");
	}, 3000);
</script>

</html>