<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Web MVC2 Programming **</title>
<link rel="stylesheet" type="text/css" href="./myLib/myStyle.css">
<script src="/Web02/myLib/jquery-3.2.1.min.js"></script>
<script>
$(function(){
	$('#axLoginF').click(function(){
		$.ajax({
			type:'Get',
			url:'/Web02/member/loginForm.jsp',
			success:function(result){
				$('#resultArea').html(result);
			},
			error:function(){
				$('#resultArea').html('** loginForm 을 찾지못했습니다. !!! **');
			}
		}); //ajax
	}); //axLoginF_click
}); //ready
</script>
</head>
<body>
<h2>** MVC2 Web_Program **</h2>
<!-- login 전.후 구별 기능 추가하기 : 인삿말, 하단의메뉴구분 -->
<c:if test="${not empty loginID}">
=> ${loginName} 님 안녕하세요 ~~<br> 
</c:if>
<c:if test="${not empty message}">
=> ${message}<br>
</c:if>
<hr>
<img src="./image/summersea.jpg" width="300" height="200">
<hr>
<div id="resultArea"></div>
<c:if test="${empty loginID}">
	<a href="/Web02/member/loginForm.jsp">로그인</a>&nbsp;
	<a href="#" id="axLoginF" >AxLoginF</a>&nbsp;
	<a href="/Web02/member/joinForm.jsp">회원가입</a><br> 
</c:if>
<c:if test="${not empty loginID}">
	<a href="/Web02/mdetail">내정보</a>&nbsp;
	<a href="/Web02/logout">로그아웃</a>&nbsp;
	<a href="/Web02/logout.do">로그아웃[do]</a>&nbsp;
	<a href="/Web02/mdelete">회원탈퇴</a><br> 
</c:if>
<a href="/Web02/mlist">mList</a>&nbsp;
<a href="/Web02/mlist.do">mList.do</a>&nbsp;
<a href="/Web02/blist">bList</a><br>
</body>
</html>