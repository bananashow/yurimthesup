<%@page import="yurim.DTO.PagingVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>contactList process</title>
</head>
<body>
<%
	int cCount = (int) request.getAttribute("cCount");
	String nowPage = (String) request.getAttribute("nowPage");
	
	if (nowPage == null) {
		nowPage = "1";
	}
	
	int nPage = Integer.parseInt(nowPage);
	
	
	PagingVO paging = new PagingVO();
	paging.setCount(cCount);
	paging.setNowPage(nPage);
	
	int limitStart = paging.getLimitStart();
	int totalPage = paging.getTotalPage();
	
	response.sendRedirect("admin_contactProcess.do?limitStart=" + limitStart + "&totalPage=" + totalPage);
%>

</body>
</html>