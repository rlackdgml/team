<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
nav ul {
	list-style: none;
	display: flex;
	background: linear-gradient(
    90deg,
    #051937,
    #004d7a,
    #008793,
    #00bf72,
    #a8eb12);
	color: white;
}

nav ul li {
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

nav ul li:nth-child(5) {
	margin-left: auto;
}

nav ul li:hover {
	background-color: #ddd;
	color: black;
}
</style>
<script type="text/javascript">
$(function() {
	$(".team-list").click(function() {
		let category = $(this).data("category")
		document.location.href = "${rootPath}/team/list/" + category
	})

	$(".bbs-list").click(function() {
		document.location.href = "${rootPath}/bbs/list"
	})

	$(".team-my").click(function() {
		document.location.href = "${rootPath}/users/mypage"
	})
		 
})
</script>
<nav id="main-nav">
	<ul id="main-menu">
		
		<li class="team-list" data-category="1">고궁/성</li>
		<li class="team-list" data-category="2">고택/생가</li>
		<li class="team-list" data-category="3">유적지/사적지</li>
		<li class="bbs-list">자유게시판</li>
		<li class="team-my">마이페이지</li>
		
		<li>로그아웃</li>
		
	</ul>
</nav>