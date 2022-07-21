<%@page import="yurim.DTO.ContactDTO"%>
<%@page import="java.util.ArrayList"%>
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
	ContactDTO cList = (ContactDTO) request.getAttribute("cList");
	
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
		
		<div class="subcontent-container">
		
		<table class="admin-contactDetail-table">
			<tr>
				<td>날짜</td>
				<td><input type="text" value="<%= cList.getDate() %>"><br />
				</td>
			</tr>
			<tr>
				<td>인테리어 할 곳의 주소</td>
				<td><input type="text" value="<%= cList.getAddress() %>"><br />
				</td>
			</tr>
			<tr>
				<td>인테리어 할 곳의 평수</td>
				<td><input type="text" value="<%= cList.getPy() %>"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" value="<%= cList.getName() %>"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="text" value="<%= cList.getTel() %>"></td>
			</tr>
			<tr>
				<td>희망 예산</td>
				<td><input type="text" value="<%= cList.getHopebudget() %>"></td>
			</tr>
			<tr>
				<td style="height:280px">남기고 싶은 말</td>
				<td>
					<textarea rows="10"> <%= cList.getComment() %> </textarea>
				</td>
			</tr>
		</table>	
		<input type="button" value="목록" class="btn_add" onclick="history.back();">

		</div>
		
		

	<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>