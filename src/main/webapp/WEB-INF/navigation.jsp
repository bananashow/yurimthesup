<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>navigation bar</title>
<link href="css/style.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&family=Gowun+Batang:wght@700&display=swap');

</style>
</head>
<body>

	<h1 class="navbar-logo"><a href="mainGo.do">Yurim The Sup</a></h1>
	
	<div class="nav-container">
		<ul class="navbar">
			<li><a href="about.do">ABOUT</a></li>
			<li><a href="newInterior.do">신축 인테리어</a></li>
			<li><a href="remodeling.do">리모델링</a></li>
			<li><a href="partDesign.do">부분디자인</a></li>
			<li><a href="story.do">현장이야기</a></li>
			<li><a href="contact.do">CONTACT</a></li>
		</ul>
		<div class="line">
			<hr color="#e7e7e7" size="1">
		</div>
	</div>
	
</body>

<script>
$(function() {
	  var navContainer = $(".nav-container").offset().top;
	 
	  $(window).scroll(function() {
	   
	    var window = $(this).scrollTop();
	    
	    if(navContainer <= window) {
	      $(".nav-container").addClass("fixed");
	      $(".navbar li a").css("color", "white");
	    }else{
	      $(".nav-container").removeClass("fixed");
	      $(".navbar li a").css("color", "black");
	    }
	  })
	});
</script>

</html>