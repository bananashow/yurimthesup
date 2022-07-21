<%@page import="yurim.DTO.NewInteriorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 관리자 신축인테리어</title>
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
	ArrayList<NewInteriorDTO> nList = (ArrayList<NewInteriorDTO>) request.getAttribute("nList");
	
	int lastIndex = nList.size()-1;
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
	
		<table class="newinteriorAdd-table">
		
			<tr>
				<td width="50px">No.</td>
				<td>건물명</td>
				<td>평수</td>
				<td>소요 기간</td>
			</tr>
		
<%
		for(int i=0; i<nList.size(); i++) {
%>
			<tr>
				<td><%= i+1 %></td>
				<td><a href="admin_newInteriorModify.do?num=<%= nList.get(i).getNum() %>"><%= nList.get(i).getProject() %></a></td>
				<td><%= nList.get(i).getPy() %></td>
				<td><%= nList.get(i).getPeriod() %></td>
			</tr>
<%
			}
%>
		</table>
		
		<input type="button" value="추가" class="btn_add" onclick="location.href='admin_newInteriorAdd.do?lastIndex=<%=lastIndex%>';">

	</div>
		
		<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>