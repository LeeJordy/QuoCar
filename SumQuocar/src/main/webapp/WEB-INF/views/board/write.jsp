<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글 등록</title>
<link rel="shortcut icon" href="/img/쿼카얼굴.ico">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
table {
  width: 100%;
  margin: 0 auto;
}

td {
  padding: 10px;
}

select {
  width: 100%;
  padding: 10px;
}

input[type="text"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #cccccc;
  border-radius: 5px;
}

textarea {
  width: 100%;
  height: 200px;
  padding: 10px;
  border: 1px solid #cccccc;
  border-radius: 5px;
}

</style>
</head>

<body>
  <div id="main">
   <!--  메뉴 목록 -->
   <jsp:include page="/WEB-INF/views/include/header.jsp" />
  
  <c:choose>
    <c:when test="${vo.bnum eq 0}">    
	  <td>새 글 쓰기</td>
	</c:when>
	
	<c:otherwise>    
	  <td>답글 쓰기</td>
	</c:otherwise> 
   </c:choose>

  <form action="/Board/Write" method="POST" >
  <input type="hidden"  name="menu_id" value="${ vo.menu_id }" />
  <input type="hidden"  name="bnum"    value="${ vo.bnum    }" />
  <input type="hidden"  name="lvl"     value="${ vo.lvl     }" />
  <input type="hidden"  name="step"    value="${ vo.step    }" />
  <input type="hidden"  name="nref"    value="${ vo.nref    }" /> 
  <input type="hidden"  name="parent"  value="${ vo.idx     }" /> 
 
  <table id="table"> 
  
  <tr>
	 <td>
	  <select name="form-select form-select-sm" aria-label=".form-select-sm example"  style="float: right; width:100px;">
		<option selected>말머리 선택</option>
		<option value="일상">일상</option>
		<option value="후기">후기</option>
		<option value="질문">질문</option>
	  </select>
	 </td>
   </tr>
    
   <!-- 제목 -->
   <tr>
     <td>
     <input type="text" name="title" value="${ vo.title }" placeholder="제목을 입력해 주세요." />
		<script>
		function checkTitle() {
		  var input = document.getElementById("title");
		  if (input.value == "") {
		    input.placeholder = "제목을 입력해 주세요.";
		    input.style.color = "#999";
		  } else {
		    input.placeholder = "";
		    input.style.color = "#000";
		  }
		}
		
		input.addEventListener("focus", checkTitle);
		input.addEventListener("blur", checkTitle);
		</script>
     </td>
   </tr> 
   
   <!-- 본문 -->
   <tr>
     <td>
      <textarea name="cont" maxlength="900" placeholder="내용을 입력해 주세요." id="content" oninput="checkContent()">${vo.cont}</textarea>
       <script>
      function checkContent() {
        var textarea = document.getElementById("content");
        if (textarea.value === "") {
          textarea.placeholder = "내용을 입력해 주세요.";
          textarea.style.color = "#999";
        } else {
          textarea.placeholder = "";
          textarea.style.color = "#000";
        }
      }
      	input.addEventListener("focus", checkTitle);
		input.addEventListener("blur", checkTitle);
    </script>
	 </td>
   </tr> 


   <tr>     
     <td colspan="2">
     <input class="btn btn-danger" type="submit" value="작성" >
     </td>
   </tr> 
  </table>
  </form>
  </div>
  
  <a href="/Chat/View" class="fixed-button"> <img src="/img/phph.png"
		alt="Q 봇"></a>
  <jsp:include page="/WEB-INF/views/include/footer.jsp" />




</body>
</html>

