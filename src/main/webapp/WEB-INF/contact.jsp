<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - CONTACT</title>
</head>
<body>

	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
	
	
	<h3 class="contact-title">CONTACT US</h3>
	
	<hr size="2px" color="black">
	
	<div>
	<form id="contactForm" action="contactResult.do" method="post">
		<table class="contact-table" width="100%" height="800">
			<tr>
				<td>인테리어 할 곳의 주소</td>
				<td><input type="text" autofocus="autofocus" name="address"><br />
				<p style="margin-top: 5pt;">&nbsp; &nbsp; &nbsp;(예 : 동래구 온천동 동래래미안아이파크)</p>
				</td>
			</tr>
			<tr>
				<td>인테리어 할 곳의 평수</td>
				<td><input type="text" name="py"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>희망 예산</td>
				<td><input type="text" name="hopebudget"></td>
			</tr>
			<tr>
				<td style="height:280px;">남기고 싶은 말</td>
				<td>
					<textarea rows="10" name="comment"></textarea>
				</td>
			</tr>
		</table>
		
		<input type="button" value="문의하기" class="btn01">
	</form>	
	</div>	
			
	<jsp:include page="footer.jsp"></jsp:include>

	</div>


<script type="text/javascript">
	$(function() {
		$('.btn01').click(function() {
			if ($('input[name=address]').val() == "") {
				alert("주소를 입력하세요!");
				$('input[name=address]').focus();
				return false;
			}
			
			if ($('input[name=py]').val() == "") {
				alert("평수를 입력하세요!");
				$('input[name=py]').focus();
				return false;
			}
			
			if ($('input[name=name]').val() == "") {
				alert("이름을 입력하세요!");
				$('input[name=name]').focus();
				return false;
			}
			
			if ($('input[name=tel]').val() == "") {
				alert("연락처를 입력하세요!");
				$('input[name=tel]').focus();
				return false;
			}
			
			if ($('input[name=hopebudget]').val() == "") {
				alert("희망예산을 입력하세요!");
				$('input[name=hopebudget]').focus();
				return false;
			}
			
			$('#contactForm').submit();
			
		})
	})
</script>
</body>
</html>