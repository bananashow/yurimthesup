<%@page import="yurim.DTO.NewInteriorDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 관리자 리모델링 추가</title>
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
		
	<div class="subnewinterior-container">
	
		<form action="admin_remodelingAddOk.do" method="post" enctype="multipart/form-data">
			<table class="newinteriorModify-table">
				<tr>
					<td>건물명</td>
					<td><input type="text" name="project"></td>
					<td><p>(예 : 김해 한라비발디)</p></td>
				</tr>
				<tr>
					<td>평수</td>
					<td><input type="text" name="py"></td>
					<td><p>(예 : 24py)</p></td>
				</tr>
				<tr>
					<td>소요 기간</td>
					<td><input type="text" name="period"></td>
					<td><p>(예 : 6weeks)</p></td>
				</tr>
				<tr>
					<td height="60px">메인 이미지파일</td>
					<td><input type="file" name="mainFile"></td>
				</tr>
				<tr>
					<td height="60px">상세 이미지파일</td>
					<td><input type="file" name="detailFile" multiple></td>
				</tr>
			</table>
		
			<input type="submit" value="추가" class="btn_add" onclick="alert('리모델링 목록이 추가되었습니다.');">
		</form>
		
	</div>
		
		<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>