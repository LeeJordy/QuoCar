<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글 등록</title>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<link rel="shortcut icon" href="/img/쿼카얼굴.ico">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
</style>

<script>
	function onSaveClick() {
		//var title = document.form1.title.value; ==> name속성으로 처리할 경우
		//var content = document.form1.content.value;
		//var writer = document.form1.writer.value;
		var title = $("#title").val();
		var content = $("#content").val();
		var writer = $("#writer").val();
		if (title == "") {
			alert("제목을 입력하세요");
			document.form1.title.focus();
			return;
		}
		if (content == "") {
			alert("내용을 입력하세요");
			document.form1.content.focus();
			return;
		}
		if (writer == "") {
			alert("이름을 입력하세요");
			document.form1.writer.focus();
			return;
		}
		// 폼에 입력한 데이터를 서버로 전송
		document.form1.submit();

	}
</script>
</head>

<body>
	<h2>게시글 작성</h2>
	<form name="form1" method="post" action="/Board/insert.do">
		<div>
			제목 <input name="title" id="title" size="80" placeholder="제목을 입력해주세요">
		</div>
		<div>
			내용
			<textarea name="content" id="content" rows="4" cols="80"
				placeholder="내용을 입력해주세요"></textarea>
		</div>
		<div>
			이름 <input name="writer" id="writer" placeholder="이름을 입력해주세요">
		</div>
		<div style="width: 650px; text-align: center;">
			<button type="button" id="btnSave" onclick="onSaveClick()">확인</button>
			<button type="reset">취소</button>
		</div>
	</form>

	<a href="/Chat/View" class="fixed-button"> <img src="/img/phph.png"
		alt="Q 봇"></a>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />




</body>
</html>

