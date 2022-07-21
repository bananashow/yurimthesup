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
	ArrayList<ContactDTO> cList = (ArrayList<ContactDTO>) request.getAttribute("cList");
	
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
		
			<table class="admin-contact-table">
			
				<tr>
					<td>No.</td>
					<td>작성일</td>
					<td>인테리어 할 곳의 주소</td>
					<td>이름</td>
					<td>상태</td>
					<td>관리</td>
				</tr>
			
		<%
			for(int i=0; i<cList.size(); i++) {
		%>
				<tr>
					<td><%= cList.get(i).getNum() %></td>
					<td><%= cList.get(i).getDate() %></td>
					<td><a href="admin_contactDetail.do?num=<%= cList.get(i).getNum() %>"><%= cList.get(i).getAddress() %></a></td>
					<td><%= cList.get(i).getName() %></td>
					<td><%= cList.get(i).getCheckstate() %></td>
					<td>
					<input type="button" value="확인" id="check_btn<%=i%>" class="check_btn" onclick="stateCheck(<%=cList.get(i).getNum()%>)">
					<input type="button" value="삭제" id="delete_btn<%=i%>" class="delete_btn" onclick="stateDelete(<%=cList.get(i).getNum()%>)">
					</td>
				</tr>
		<%
			}
		%>
			</table>	
			<div class="paging">
						<%
							int totalPage = (int) request.getAttribute("totalPage");
							for(int i=1; i<=totalPage; i++) {
						%>
								<a href="admin_contact.do?nowPage=<%=i%>"><%=i%></a>
								&nbsp;
						<%		
							}
						%>		
			</div>
		</div>
		
		

	<jsp:include page="footer.jsp"></jsp:include>

	</div>
<script type="text/javascript">
	$(function() {
		$('.logoutbtn').click(function() {
			alert("로그아웃 되었습니다.");
			location.href='logout.do';
		})	
	})
	
	function stateCheck(num) {
		console.log(num);
		if(confirm("확인완료 상태로 변경할까요?")) {
			location.href = "check_ok.do?num="+num;
		}else {
			false;
		}
	}
	
	function stateDelete(num) {
		console.log(num);
		if(confirm("문의글을 삭제할까요?")) {
			location.href = "delete_ok.do?num="+num;
		}else {
			false;
		}
	}
</script>
</body>
</html>