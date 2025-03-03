<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>Recetas</title>
</head>
<body>
	<h1 >Recetas Disponibles</h1>
	<ul class="list-group">
		<c:forEach var="receta" items="${listaDeRecetas}" >
			<li class="list-group-item" aria-current="true">
				<a href="recetas/${receta}"> ${receta} </a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>