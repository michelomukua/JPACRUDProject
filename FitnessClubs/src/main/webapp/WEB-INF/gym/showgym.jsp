<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gym Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<main class="container">

		<a href="home.do">Home</a>
		
		<c:choose>
			<c:when test="${not empty gym}">
				<div>
					<h5>${gym.name}</h5>
					<ul>
						<li>${gym.programs}</li>
						<li>${gym.street }</li>
						<li>${gym.twentyFourHour }</li>
					</ul>
						<img src=${gym.imageUrl} alt="gym"/>
				</div>
			</c:when>
			<c:otherwise>
				<h1>Gym not found</h1>
			</c:otherwise>
		</c:choose>

	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
	</script>
</body>
</html>