<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/img/쿼카얼굴.png">
<link rel="stylesheet" href="/css/common.css" />
<style>
button {
  display: block;
  width: 200px; /* 버튼의 가로 크기 */
  height: 40px; /* 버튼의 세로 크기 */
  margin-bottom: 10px; /* 버튼 간격 설정 */
  cursor:pointer;
}
</style>
<script type="text/javascript">
  function selectMechanic(mechanicId) {
    document.getElementById("selectedMechanicIdInput").value = mechanicId;
    document.getElementById("selectedMechanicForm").submit();
  }
</script>
</head>
<body>
<main>
  <div>
    <c:forEach var="mechanic" items="${mechanicList}">
      <button type="button" onclick="selectMechanic('${mechanic.mechanic_id}')">
        ${mechanic.mechanic_name}
      </button><br>
    </c:forEach>
  </div>
  <form id="selectedMechanicForm" action="/view?mechanic_id=#{mechanic_id}" method="post">
    <input type="hidden" id="selectedMechanicIdInput" name="selectedMechanicId">
  </form>
</main>

</body>
</html>










