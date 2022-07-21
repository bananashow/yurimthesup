<%@page import="yurim.DTO.RemodelingDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 리모델링 보기</title>
</head>
<body>
<%
	RemodelingDTO remodelingSelect = (RemodelingDTO) request.getAttribute("remodelingSelect");
	int remodelingCount = Integer.parseInt(String.valueOf(request.getAttribute("remodelingCount")));
%>

	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
		<h5>리모델링</h5>
		
		<div class="double-container">
		
			<div class="left-container">
<%
				for(int i = 0; i < remodelingCount; i++) {
%>
					<img src="./image/remodelingImage/remodelingDetail/remodelingDetail<%= remodelingSelect.getNum() %>_<%= i %>.jpg" width="800px">
					<br />
<%				
				}
%>
			</div>
			
			<div class="right-container">
				<div class="right-text">
					<h2>OVERVIEW</h2>
					<p>· Project : <%= remodelingSelect.getProject() %></p>
					<p>· Area : <%= remodelingSelect.getPy() %></p>
					<p>· Period : <%= remodelingSelect.getPeriod() %></p>
				</div>
			</div>
	
		</div>
	</div>

		<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>