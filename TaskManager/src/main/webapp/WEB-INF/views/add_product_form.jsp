<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<style>
body {
	background: url('<c:url value="/resources/images/bg.jpg" />') no-repeat
		center center fixed !important;
	background-size: cover !important;
	color: white; /* Text color for the entire page */
}

h1 {
	color: white;
	font-family: cursive;
}

#container {
	background-color: rgba(0, 0, 0, 0.4);
	/* Adjust background color and opacity */
	padding: 20px;
	border-radius: 10px;
	margin-top: 100px !important;
}

table {
	color: white;
	border: medium !important;
	border-color: white !important;
	table-layout: fixed; /* Fix table layout */
	width: 100%; /* Full width table */
}

th, td {
	padding: 10px;
}

thead {
	background-color: #343a40; /* Header background color */
}

tbody {
	max-height: 250px;
	/* Adjust the maximum height for scrollable content */
	overflow-y: scroll; /* Enable vertical scrolling */
}

tbody tr:nth-child(odd) {
	background-color: rgba(0, 0, 0, 0.4); /* Odd row background color */
}

tbody tr:nth-child(even) {
	background-color: rgba(0, 0, 0, 0.2); /* Even row background color */
}

th, td {
	border: 1px solid white !important;
}
</style>
</head>
<body>
	<div class="container" id="container">
		<div class="row">

			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">FILL TASK DETAILS</h1>

				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name">Task Name </label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the Task name here">
					</div>

					<div class="form-group">
						<label for="description">Task Description </label>
						<textarea class="form-control" id="description" name="description"
							rows="5" placeholder="Enter the Task description"> </textarea>
					</div>

					<div class="form-group">
						<label for="price">Due Date </label> <input type="text"
							class="form-control" id="name" name="price" id="price"
							placeholder="Enter Due date ">
					</div>

					<div class="container text-center">
					 
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>

						<button type="submit" class="btn btn-outline-success">Add</button>
					</div>


				</form>

			</div>
		</div>
	</div>


</body>
</html>