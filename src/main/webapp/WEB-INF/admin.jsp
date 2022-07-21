<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 관리자 페이지</title>
</head>
<body>
<% 
if (session == null || session.getAttribute("id") == null || session.getAttribute("id").equals("")) {
%>
	<script>
		alert("로그인이 필요합니다.");
		location.href = "login.do";
	</script>	
<%
}
%>

	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
	
	<h3 class="contact-title">관리자 페이지</h3>
	<hr size="2px" color="black">
	
	<div class="userwelcome">
	<%= session.getAttribute("id") %>님, 환영합니다.
	<input type="button" value="로그아웃" class="logoutbtn">
	</div>
	
		<jsp:include page="admin_nav.jsp"></jsp:include>

	<jsp:include page="footer.jsp"></jsp:include>

	</div>
	
	
<script type="text/javascript">
	$(function() {
		$('.logoutbtn').click(function() {
			alert("로그아웃 되었습니다.");
			location.href='logout.do';
		})
	})
</script>
</body>
</html>