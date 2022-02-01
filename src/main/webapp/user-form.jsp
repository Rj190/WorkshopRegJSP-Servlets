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
  <a href="<%=request.getContextPath()%>/list"
					class="active" >Admin</a>
  </div>
</div>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Register New Participant
            		</c:if>
					</h2>
				</caption>

				 
                  <fieldset class="form-group">
					<label>Participant ID</label> <input type="text"
						value="<c:out value='${user.id}' />" class="form-control"
						name="id" required="required">
				</fieldset>

 
				<fieldset class="form-group">
					<label>Participant Name</label> <input type="text"
						value="<c:out value='${user.pname}' />" class="form-control"
						name="pname" required="required">
				</fieldset>

			<fieldset class="form-group">
					<label>College name</label> <input type="text"
						value="<c:out value='${user.cname}' />" class="form-control"
						name="cname">
				</fieldset>

				<fieldset class="form-group">
					<label>Department Name</label> <input type="text"
						value="<c:out value='${user.dept}' />" class="form-control"
						name="dept">
				</fieldset>
				<fieldset class="form-group">
					<label>Event Type</label> <input type="text"
						value="<c:out value='${user.et}' />" class="form-control"
						name="et">
				</fieldset>

				<fieldset class="form-group">
					<label>Paper/Workshop ID</label> <input type="text"
						value="<c:out value='${user.wid}' />" class="form-control"
						name="wid">
				</fieldset>
				<fieldset class="form-group">
					<label>Event date</label> <input type="date"
						value="<c:out value='${user.date}' />" class="form-control"
						name="date">
				</fieldset>

				<fieldset class="form-group">
					<label>Academic Year[YYYY-YY]</label> <input type="text"
						value="<c:out value='${user.ay}' />" class="form-control"
						name="ay">
				</fieldset>

				<button type="submit" class="btn btn-success">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
