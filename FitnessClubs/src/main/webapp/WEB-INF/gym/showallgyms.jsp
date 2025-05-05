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
		
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Street</th>
					<th>Programs</th>
					<th>24 Hour</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="gym" items="${gyms }">
				<tr>
				<td>${gym.id }</td>
				<td> ${gym.name}</td>
				<td>${gym.street}</td>
				<td>${gym.programs}</td>
				<td>${gym.twentyFourHour}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
	</script>
</body>
</html>