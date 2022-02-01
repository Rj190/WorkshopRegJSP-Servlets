<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>WorkShop Registration</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.header {
	overflow: hidden;
	background-color:#87CEEB;
	padding: 20px 10px;
}

.header a {
	float: left;
	color: black;
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
}

.header a.logo {
	font-size: 25px;
	font-weight: bold;
	color:white;
}

.header a:hover {
	background-color: #ddd;
	color: black;
}

.header a.active {
	background-color: #FF6347;
	color: white;
	 
}

.header-right {
	float: right;
}

@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: none;
	}
}
</style>


</head>
<body>

	<header>
		<div class="header">
  <a href="#default" class="logo">WorkShop Registration</a>
  <div class="header-right">
    <a class="active" href="#home">Admin</a>
     
  </div>
</div>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Participant</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Register
					New Participant</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Participant IDs</th>
						<th>Participant Name</th>
						<th>College name</th>
						<th>Department Name</th>
						<th>Event Type</th>
						<th>Paper/Workshop ID</th>
						<th>Event date</th>
						<th>Academic Year</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.pname}" /></td>
							<td><c:out value="${user.cname}" /></td>
							<td><c:out value="${user.dept}" /></td>
							<td><c:out value="${user.et}" /></td>
							<td><c:out value="${user.wid}" /></td>
							<td><c:out value="${user.date}" /></td>
							<td><c:out value="${user.ay}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
