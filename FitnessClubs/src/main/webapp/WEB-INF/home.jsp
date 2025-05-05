<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fitness Clubs</title>
</head>
<body>

	<h1>Aurora Gyms</h1>
	<div class="container-fluid">
		<form action="showGyms.do" method="GET">
			<input type="submit" value="List of Gyms" />
		</form>
		</br>
		<form action="selectAddGym.do" method="GET">
			<input type="submit" value="Add A Gym" />
		</form>
		</br>
		<form action="deleteGym.do" method="GET">
			Gym ID: <input type="text" name="gymId" /> <input type="submit"
				value="Delete Gym" />
		</form>
		</br>
		<form action="selectUpdateGym.do" method="GET">
			Gym ID: <input type="text" name="gymId" /> <input type="submit"
				value="Update Gym" />
		</form>
		</br>
		<form action="getGym.do" method="GET">
			Gym ID: <input type="text" name="gymId" /> <input type="submit"
				value="Look Up Gym" />
		</form>
</body>
</html>