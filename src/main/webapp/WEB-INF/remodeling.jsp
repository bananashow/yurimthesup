<%@page import="yurim.DTO.RemodelingDTO"%>
<%@page import="yurim.DTO.NewInteriorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 리모델링</title>
</head>
<body>
<%
	ArrayList<RemodelingDTO> rList = (ArrayList<RemodelingDTO>) request.getAttribute("rList");
%>

	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
		<h5>리모델링</h5>
		<div class="photo-container">
			<ul>

<%
	for(int i=0; i<rList.size(); i++) {
%>	
				<li>
					<div class="photo-border">
						<a href="RemodelingView.do?num=<%= rList.get(i).getNum() %>">
							<div class="img"><img src="./image/remodelingImage/remodeling<%= rList.get(i).getNum() %>.jpg" alt="" height="320px" width="300px"></div><br />
							<p class="photo-title"><%= rList.get(i).getProject() %></p>
						</a>
							<p class="photo-area"><%= rList.get(i).getPy() %></p>
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