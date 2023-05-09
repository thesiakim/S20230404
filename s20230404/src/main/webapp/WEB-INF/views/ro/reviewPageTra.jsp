<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="/css/main.css" rel="stylesheet" type="text/css">
	<link href="/css/list.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<c:import url="header.jsp"/>
	
	<style>
		th, td { border-bottom: 2px solid rgb(64, 64, 64); }
	</style>
</head>

<body>
	
	<div id="img_benner">
      <img src="img/community-picture.png" alt="배너">
   </div>
	
   	<h1>리 뷰</h1>
	<br>
	<a href="reviewPageTra" style="margin: 50px; color:#205E61;">여행지</a>
	<a href="reviewPageHou" style="margin: 50px;">숙소</a>
	<a href="reviewPageRes" style="margin: 50px;">맛집</a>
	<hr>

	<h3>리뷰 - 마이 페이지</h3>

	<h5> ${m_nickname} 작성한 여행지 리뷰 내역</h5>
	
	<c:set var="num" value="${page.total - page.start + 1 }"></c:set>
	
	<div>
      	<table>
         	<c:forEach var="traReview" items="${listReviewPageTra}">
						<tr>
							<td style="width: 270px;">
							<a href="traDetail?tid=${traReview.travel_id}">${traReview.t_name}</a>
							</td>
							<td style="width: 250px;">${traReview.r_content}</td>
							<td style="width: 130px;">
								<c:choose>
									<c:when test="${traReview.r_score eq '1'}">
										<c:out value="★☆☆☆☆"/>
									</c:when>
									<c:when test="${traReview.r_score eq '2'}">
										<c:out value="★★☆☆☆"/>
									</c:when>
									<c:when test="${traReview.r_score eq '3'}">
										<c:out value="★★★☆☆"/>
									</c:when>
									<c:when test="${traReview.r_score eq '4'}">
										<c:out value="★★★★☆"/>
									</c:when>
									<c:when test="${traReview.r_score eq '5'}">
										<c:out value="★★★★★"/>
									</c:when>
									<c:otherwise>
										<c:out value="☆☆☆☆☆"/>
									</c:otherwise>
								</c:choose>				
							</td>
							<td style="width: 110px;">${traReview.create_date}</td>
							
							<c:set var="num" value="${num - 1 }"></c:set>
						</tr>
         	</c:forEach>
      	</table>
   	</div>
	
	<c:if test="${page.startPage > page.pageBlock }">
      	<a href="reviewPageTra?currentPage=${page.startPage - page.pageBlock }">[이전]</a>
   	</c:if>
   	<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
      	<a href="reviewPageTra?currentPage=${i }">[${i }]</a>
   	</c:forEach>
   	<c:if test="${page.endPage < page.totalPage }">
      	<a href="reviewPageTra?currentPage=${page.startPage + page.pageBlock }">[다음]</a>
   	</c:if>
</body>
	<c:import url="footer.jsp"/>
</html>