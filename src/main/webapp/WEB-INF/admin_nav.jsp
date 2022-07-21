<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin navigation</title>
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
	<div class="admin_nav">
		<input type="button" value="문의글 관리" class="btn01" onclick="location.href='admin_contact.do';">
		<input type="button" value="신축 인테리어 관리" class="btn01" onclick="location.href='admin_newInterior.do';">
		<input type="button" value="리모델링 관리" class="btn01" onclick="location.href='admin_remodeling.do';">
		<input type="button" value="현장이야기 관리" class="btn01">
	</div>
	
</body>
</html>