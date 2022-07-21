<%@page import="yurim.DTO.NewInteriorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 신축 인테리어</title>
</head>
<body>
<%
	ArrayList<NewInteriorDTO> nList = (ArrayList<NewInteriorDTO>) request.getAttribute("nList");
%>

	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
		<h5>신축 인테리어</h5>
		<div class="photo-container">
			<ul>

<%
	for(int i=0; i<nList.size(); i++) {
%>	
				<li>
					<div class="photo-border">
						<a href="newInteriorView.do?num=<%= nList.get(i).getNum() %>">
							<div class="img"><img src="./image/newInteriorImage/newInterior<%= nList.get(i).getNum() %>.jpg" alt="" height="320px" width="300px"></div><br />
							<p class="photo-title"><%= nList.get(i).getProject() %></p>
						</a>
							<p class="photo-area"><%= nList.get(i).getPy() %></p>
					</div>
				<li>
<%	
	}
%>
			</ul>
		</div>

			<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>