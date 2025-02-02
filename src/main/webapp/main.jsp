<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 컨텍스트패스(진입점폴더) 변수 설정 -->
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%-- now : 현재 시간의 시분초를 now 변수에 세팅 --%>
<c:set var="now" value="<%= new java.util.Date() %>" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/styles.css' />?v=${now}" />
</head>
<body>


	<header>
		<h1>영화 정보</h1>
		<nav>
			<ul>
				<li><a href="#">홈</a></li>
				<li><a href="#">영화</a></li>
				<li><a href="<c:url value='/boardList'/>">게시물 목록</a></li>
				<li><a href="#">카테고리</a></li>
				<c:choose>
					<c:when test="${not empty sessionScope.member}">
						<li><a href="<c:url value='/logout' />">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${contextPath}/login">로그인</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
	</header>

	<section id="youtube-section" class="clearfix">
		<div class="youtube-video">
			<iframe width="100%" height="100%"
				src="https://www.youtube.com/embed/uw_A7kCDirQ?autoplay=1&mute=1"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
	</section>

	<div id="content">
		<div id="title">
			<h1 id="title-name">베스트 영화</h1>
			<div id="poster">
				<div class="title-individual">
					<div class="title-img">
						<a href="#"><img src="<c:url value='/image/1.jpg' />"
							alt="범죄도시2"></a>
					</div>
					<br>괴물
					<li id="list">평점 4.1</li>
				</div>
				<div class="title-individual">
					<div class="title-img">
						<a href="#"><img src="<c:url value='/image/2.jpg' />"
							alt="나우유씨미2"></a>
					</div>
					<br>미션임파서블
					<li id="list">평점 4.5</li>
				</div>
				<div class="title-individual">
					<div class="title-img">
						<a href="#"><img src="<c:url value='/image/3.jpg' />" alt="마녀"></a>
					</div>
					<br>헐크
					<li id="list">평점 3.5</li>
				</div>
				<div class="title-individual">
					<div class="title-img">
						<a href="#"><img src="<c:url value='/image/4.png' />"
							alt="청년경찰"></a>
					</div>
					<br>스파이더맨
					<li id="list">평점 3.2</li>
				</div>
				<div class="title-individual">
					<div class="title-img">
						<a href="#"><img src="<c:url value='/image/5jpg.jpg' />"
							alt="극한직업"></a>
					</div>
					<br>토르
					<li id="list">평점 4.7</li>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<p>&copy; 2023 영화 정보. All rights reserved.</p>
	</footer>
</body>
</html>
