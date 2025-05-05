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
		<h1>Update Gym</h1>
		<form action="updateGym.do" method="POST">
			<c:choose>
				<c:when test="${not empty gym}">
					<table>
						<tr>
							<td><label for="name">Gym Name:</label></td>
							<td><input type="text" name="name" value=${gym.name}></td>
						</tr>
						<tr>
							<td><label for="street">Street:</label></td>
							<td><input type="text" name="street" value=${gym.street}></td>
						</tr>
						<tr>
							<td><label for="programs">Gym Program:</label></td>
							<td><input type="text" name="programs" value=${gym.programs}></td>
						</tr>
						<tr>
							<td><label for="twentyFourHour">24 Hour:</label></td>
							<td><input type="boolean" name="twentyFourHour"
								value=${gym.twentyFourHour}></td>
						</tr>
						<tr>
							<td><label for="imageUrl">Gym Url:</label></td>
							<td><input type="text" name="imageUrl" value=${gym.imageUrl}></td>
						</tr>
						<tr>
							<td colspan="2"><button type="submit">Update Gym</button></td>
						</tr>

					</table>
					<input type="hidden" name="id" value=${gym.id}>
				</c:when>
				<c:otherwise>
					<h1>Gym not found</h1>
				</c:otherwise>
			</c:choose>
		</form>
		<c:if test="${not empty message}">
			<h3>${message }</h3>
		</c:if>


	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
		crossorigin="anonymous"></script>
	</script>
</body>
</html>


