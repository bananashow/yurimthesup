<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - ABOUT</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@700&display=swap');
</style>
</head>
<body>

	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
	
	<div class="text-image-container"  id="about-content">
	
		<div class="image-container">
			<img src="./image/about-image.png" width="375px;" class="aboutImage">
		</div>
	
		<div class="text-container">

			<p class="first-line">유림 더 숲은,</p>
			<br />
			<p>아파트 인테리어 전문 브랜드 회사로</p>
			<p>집에 대한 구조, 방향, 라이프 스타일등 여러가지 요소들을 고려하여</p>
			<p>공간을 디자인 합니다.</p>
			<br />
			<p>일반 인테리어와는 차별화된 디자인을 추구하며</p>
			<p>집안 곳곳의 포인트와 컬러감을 연출하여 고급스러운 생활 공간으로</p>
			<p>만들어 냅니다.</p>
			<br />
			<p>클라이언트와의 미팅을 통해 취향과 니즈를 정확하게 파악한 후</p>
			<p>젊은 디자이너들의 열정으로 끊임없는 아이디어와 회의를 통해 나온<p>
			<p>설계로 인테리어를 진행하여 만족도가 높습니다.</p>
			<p>현장 팀장과 디자이너의 소통으로</p>
			<p>꼼꼼함과 섬세함으로 무장한 직원들이 직접 현장에 상주하여</p>
			<p>관리·감독하며 일하는 만큼 완성도나 마감에 최선을 다해 기여하고 있습니다.</p>
			<br />
			<p class="last-line">뻔하지 않은 유림 더 숲만의 특별한 공간으로 만들어 드립니다.</p>
		</div>
	</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<script type="text/javascript">
		$(function() {
	
			$(window).load(function() {
				$('.aboutImage').fadeIn(slow);
			})
	
			
		})
	</script>
</body>
</html>