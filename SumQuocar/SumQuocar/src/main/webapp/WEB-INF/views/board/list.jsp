<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/img/쿼카얼굴.ico">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
</style>

<!-- jQuery 라이브러리를 불러옵니다. -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btnWrite").click(function() {
			// 페이지 주소 변경(이동)
			location.href = "${path}/Board/write.do";
		});
	});
</script>

</head>
<body>
	<button type="button" class="btn btn-danger" id="btnWrite">글쓰기</button>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>이름</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${list}">
			<tr>
				<td>${row.bno}</td>
				<td><a href="${path}/Board/view.do?bno=${row.bno}">${row.title}</a></td>
				<td>${row.writer}</td>
				<td>
					<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 --> <fmt:formatDate
						value="${row.regdate}" pattern="MM-dd HH:mm"/>
				</td>
				<td>${row.viewcnt}</td>
			</tr>
		</c:forEach>
	</table>

	<a href="/Chat/View" class="fixed-button"> <img src="/img/phph.png"
		alt="Q 봇"></a>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>

