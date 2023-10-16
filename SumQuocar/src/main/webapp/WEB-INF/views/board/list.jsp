<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/img/쿼카얼굴.ico">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>



/* 테이블 행 스타일 */
#chop {
	border-bottom: 1px solid #ddd;
}

/* 버튼 스타일 */
.btn {
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 20px;
	border: none;
	cursor: pointer;
}

#table a {
	text-decoration: none; /* 링크 밑줄 제거 */
}

.right {
	text-align: right; /* 오른쪽 정렬 */
}

.exampleText {
	text-align: center;
	border-bottom: 1px solid #ddd;
}

.blind {
	overflow: hidden;
	position: absolute;
	clip: rect(0 0 0 0);
    width: 1px;
    height: 1px;
    margin: -1px;
    
}

</style>

</head>
<body>
	<div id="main">

		<!--  메뉴 목록 -->
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<div id=info_tit>
			<h3>커뮤니티</h3>
		</div>
		<!--  게시물 목록 -->
		<div id=article_board>
			<table>
				<caption>
					<span class="blind">게시글 목록보기</span>
				</caption>

				<thead>
					<tr id="normalTableTitle">
						<th>
							<div id="articleHeadListDiv" class="select_component3">
								<a href="#"
									onclick="nhn.search.toggleBoxLayer('articleHeadListDiv', true);return false;"
									class="select_box">말머리</a>
								<ul class="select_list">
									<li><a href="/Board/List?menuid=MENU01">일상</a></li>
									<li><a href="/Board/List?menuid=MENU01">후기</a></li>
									<li><a href="/Board/List?menuid=MENU01">질문</a></li>
								</ul>
							</div>
						</th>
						<th scop="col"><span class="article_title">제목</span></th>
						<th scop="col" class="th_name">작성자</th>
						<th scop="col">날짜</th>
						<th scop="col">조회수</th>
					</tr>

				</thead>
				<c:forEach var="board" items="${ bList }">

					<tr id="chop">
						<td>
							<%-- <c:if test="${ board.lvl == 0 }"> --%> ${ board.idx } <%-- </c:if>  --%>
						</td>
						<td><b style="display:inline-block;width:${board.lvl*20}px"></b>
							<c:choose>
								<c:when test="${ board.delnum eq 0 }">
									<a href="/Board/View?idx=${ board.idx }"> ${ board.title }
									</a>
								</c:when>
								<c:otherwise>
									<s>게시글이 삭제되었습니다</s>
								</c:otherwise>
							</c:choose></td>
						<td>${ board.writer    }</td>
						<td>${ board.regdate   }</td>
						<td>${ board.readcount }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5" class="right"><a class="btn btn-danger"
						href="/Board/WriteForm?menu_id=${ param.menu_id }&bnum=0&lvl=0&step=0&nref=0"
						role="button">새 글쓰기</a></td>
				</tr>
			</table>

		</div>

		<a href="/Chat/View" class="fixed-button"> <img
			src="/img/phph.png" alt="Q 봇"></a>
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>




