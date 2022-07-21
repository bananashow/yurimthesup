<%@page import="yurim.DTO.RemodelingDTO"%>
<%@page import="yurim.DTO.NewInteriorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어</title>
</head>
<body>
<%
	ArrayList<NewInteriorDTO> nList = (ArrayList<NewInteriorDTO>) request.getAttribute("nList");
	ArrayList<RemodelingDTO> rList = (ArrayList<RemodelingDTO>) request.getAttribute("rList");
%>
	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
	
		<jsp:include page="slide.jsp"></jsp:include>
		<h5>신축 인테리어</h5>
		<div class="photo-container">
			<ul>
<%
	for(int i=0; i<4; i++) {
%>	
				<li>
					<div class="photo-border">
						<a href="newInteriorView.do?num=<%= nList.get(i).getNum() %>">
							<div class="img"><img src="./image/newInteriorImage/newInterior<%= nList.get(i).getNum() %>.jpg" alt="" height="300px" width="300px"></div><br />
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
			<div class="view-more">
				<a href="newInterior"><img src="/image/view-more-before.png" alt="" width="70px;" 
				onmouseover="this.src='/image/view-more-hover.png';" onmouseout="this.src='/image/view-more-before.png';"></a>
			</div>
		
		<h5>리모델링</h5>
		<div class="photo-container">
			<ul>
<%
	for(int i=0; i<4; i++) {
%>	
				<li>
					<div class="photo-border">
						<a href="RemodelingView.do?num=<%= rList.get(i).getNum() %>">
							<div class="img"><img src="./image/remodelingImage/remodeling<%= rList.get(i).getNum() %>.jpg" alt="" height="300px" width="300px"></div><br />
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
			
			<div class="view-more">
				<a href="remodeling.do"><img src="/image/view-more-before.png" alt="" width="70px;" 
				onmouseover="this.src='/image/view-more-hover.png';" onmouseout="this.src='/image/view-more-before.png';"></a>
			</div>
			
			<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>