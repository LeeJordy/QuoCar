<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    

<body>
    <form action="processForm" method="post">
        <label for="model_id">차량명:</label>
        <select name="model_id">
            <c:forEach var="cmodel" items="${cmodelList}">
                <option value="${cmodel.model_id}">${cmodel.car_model}</option>
            </c:forEach>
        </select>
    </form>
</body>











