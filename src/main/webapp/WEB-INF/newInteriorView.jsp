<%@page import="yurim.DTO.NewInteriorDTO"%>
<%@page import="yurim.DTO.RemodelingDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 신축 인테리어 보기</title>
</head>
<body>
<%
	NewInteriorDTO newinteriorSelect = (NewInteriorDTO) request.getAttribute("newinteriorSelect");
	int newInteriorCount = Integer.parseInt(String.valueOf(request.getAttribute("newInteriorCount")));
%>

	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
		<h5>신축 인테리어</h5>
		
		
		<div class="double-container">
		
			<div class="left-container">
<%
				for(int i = 0; i < newInteriorCount; i++) {
%>
					<img src="./image/newInteriorImage/newInteriorDetail/newInteriorDetail<%= newinteriorSelect.getNum() %>_<%= i %>.jpg" width="800px">
					<br />
<%				
				}
%>
			</div>
			
			<div class="right-container">
				<div class="right-text">
					<h2>OVERVIEW</h2>
					<p>· Project : <%= newinteriorSelect.getProject() %></p>
					<p>· Area : <%= newinteriorSelect.getPy() %></p>
					<p>· Period : <%= newinteriorSelect.getPeriod() %></p>
				</div>
			</div>
	
		</div>
	</div>

		<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>