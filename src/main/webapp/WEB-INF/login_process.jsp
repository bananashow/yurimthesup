<%@page import="yurim.DTO.AdminDTO"%>
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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	AdminDTO dbResult = (AdminDTO) request.getAttribute("loginResult");
	
	if(id.equals(dbResult.getId()) && pw.equals(dbResult.getPw())) {
		session.setAttribute("id", id);
%>
		<script>
			alert("로그인 되었습니다.");
			location.href = "admin.do";
		</script>
<%
	} else {
%>
		<script>
			alert("아이디와 비밀번호를 확인하세요.");
			location.href = "login.do";
		</script>
<%
	}
%>


	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
	
	<h3 class="contact-title">관리자 페이지</h3>
	<hr size="2px" color="black">
	

			
	<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>