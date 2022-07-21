<%@page import="yurim.DTO.RemodelingDTO"%>
<%@page import="yurim.DTO.NewInteriorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유림 더 숲 인테리어 - 부분디자인</title>
</head>
<body>
<%
%>

	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="main-container">
		<div class="photo-container">
			<div class="partdesign-container">
				<ul>
					<li>
						<a href="#">
						<h3>대리석</h3>
						<hr width="100px" style="margin-bottom: 20px;" color="black"></hr>
							<div class="img"><img src="./image/slideImage/slide-image01.jpg" alt="" width="300px" height="220px"></div><br />
						</a>
					</li>
					<li>
						<a href="#">
						<h3>디자인월</h3>
						<hr width="100px" style="margin-bottom: 20px;" color="black"></hr>
							<div class="img"><img src="./image/partDesignImage/design-wall.jpg" alt="" width="300px" height="220px"></div><br />
						</a>
					</li>
					<li>
						<a href="#">
						<h3>웨인스코팅</h3>
						<hr width="100px" style="margin-bottom: 20px;" color="black"></hr>
							<div class="img"><img src="./image/partDesignImage/wainscoting.jpg" alt="" width="300px" height="220px"></div><br />
						</a>
					</li>
					<li>
						<a href="#">
						<h3>조명</h3>
						<hr width="100px" style="margin-bottom: 20px;" color="black"></hr>
							<div class="img"><img src="./image/partDesignImage/light.jpg" alt="" width="300px" height="220px"></div><br />
						</a>
					</li>
					<li>
						<a href="#">
						<h3>화장실</h3>
						<hr width="100px" style="margin-bottom: 20px;" color="black"></hr>
							<div class="img"><img src="./image/partDesignImage/bathroom.jpg" alt="" width="300px" height="220px"></div><br />
						</a>
					</li>
					<li>
						<a href="#">
						<h3>주방</h3>
						<hr width="100px" style="margin-bottom: 20px;" color="black"></hr>
							<div class="img"><img src="./image/partDesignImage/kitchen.jpg" alt="" width="300px" height="220px"></div><br />
						</a>
					</li>
	
				</ul>
				</div>
		</div>

			<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>