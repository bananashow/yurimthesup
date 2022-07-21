<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 관리자 로그인</title>
</head>
<body>


	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
	
	<h3 class="contact-title">관리자 로그인</h3>
	<hr size="2px" color="black">
	
	<div class="login-container">
	<form id="loginForm" action="login_process.do" method="post">
		<table class="login-table" width="800" height="150">
			<tr>
				<td>아이디</td>
				<td><input type="text" autofocus="autofocus" name="id"></td>
				<td rowspan="2"><input type="button" value="로그인" class="btn02"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
		</table>
	</form>	
	</div>	
			
	<jsp:include page="footer.jsp"></jsp:include>

	</div>


<script type="text/javascript">
	$(function() {
		$('.btn02').click(function() {
			if ($('input[name=id]').val() == "") {
				alert("아이디를 입력하세요!");
				$('input[name=id]').focus();
				return false;
			}
			
			if ($('input[name=pw]').val() == "") {
				alert("비밀번호를 입력하세요!");
				$('input[name=pw]').focus();
				return false;
			}
			
			$('#loginForm').submit();
			
		})
	})
</script>
</body>
</html>