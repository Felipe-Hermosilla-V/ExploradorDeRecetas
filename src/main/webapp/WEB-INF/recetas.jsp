<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Recetas</title>
		<link rel="stylesheet" href="/css/style.css">
		        <link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300..700&display=swap" rel="stylesheet">
	</head>
	<body>
		<div>
				<div class="container">
					<h1>Recetas Disponibles</h1>
					<hr id="hr-mt-none">
					<ul>
						<c:forEach var="receta" items="${listaDeRecetas}">
							<li>
								<a href="recetas/{receta}" class="btn" >${receta}</a>
							</li>
						</c:forEach>
					</ul>
				</div>
		</div>
	</body>
</html>