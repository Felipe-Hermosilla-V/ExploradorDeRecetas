<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Detalles receta</title>
</head>
<body>
	<h1 >Detalles receta</h1>
	<c:if test="${not empty receta}">
		<h2>${receta}</h2>
		<ul>
			<c:forEach var="ingrediente" items="${ingredientes}">
				<li class="text-decoration-underline">${ingrediente}</li>
			</c:forEach>
		</ul>
	</c:if>
	
</body>
</html>