<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>LMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Navbar CSS */
.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: rgb(0, 0, 0);
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 70px;
	z-index: 100;
}

.navbar .loginsignup {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	list-style: none;
	margin: 0;
	padding: 0;
	flex-grow: 1;
}

.navbar .loginsignup li {
	font-size: 1rem;
	color: white;
	padding: 0 1px;
	cursor: pointer;
	position: relative;
}

.navbar li a {
	padding: 3px 25px;
	text-decoration: none;
	color: white;
}

/* Navbar Search Container CSS */
.navbar .search-container {
	display: flex;
	justify-content: center; /* Center horizontally */
	align-items: center; /* Center vertically */
	flex-grow: 5;
}

.navbar .search-container ul {
	display: flex;
	justify-content: center;
	align-items: center;
	list-style: none;
	margin: 0;
	padding: 0;
	flex-grow: 1;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropbtn {
	background-color: transparent;
	color: white;
	font-size: 1rem;
	border: none;
	cursor: pointer;
	padding: 10px 10px;
	margin: 10px 20px;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: rgb(55, 150, 36);
	min-width: 100px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	padding: 10px 10px;
	border-radius: 10px;
	z-index: 999;
	/* Increase the z-index value to keep the dropdown above the cards */
}

.dropdown-content a {
	color: rgb(216, 208, 208);
	padding: 16px 5px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
	border-radius: 10px;
	color: black;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.statistics-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	margin-top: 50px;
	animation: fallIn 1.5s ease-in-out;
}

@
keyframes fallIn { 0% {
	transform: translateY(-200px);
}

100
%
{
transform
:
translateY(
0
);
}
}
.statistics-box:hover {
	transform: scale(1.1); /* Zoom out the card */
	background-color: #e7c798; /* Change the background color */
}

.statistics-box p {
	font-size: 48px;
	margin: 0;
	color: #008000; /* Green color for the number values */
}

.statistics-box {
	flex: 1;
	max-width: 300px;
	background-color: #cad9db;
	justify-content: center;
	padding: 50px;
	margin: 10px;
	box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
	text-align: center;
	color: #0a0808;
	border-radius: 10px;
}

.statistics-box h2 {
	font-size: 36px;
	margin-bottom: 20px;
}

.statistics-box p {
	font-size: 48px;
	margin: 0;
}
</style>
</head>

<body>
	<nav class="navbar">
		<div>
			<li><a href="adminhome"
				style="color: #50B340; font-size: x-large;">Library Management
					Software</a></li>
		</div>
		<div class="search-container">
			<ul>
				<li>
					<div class="dropdown">
						<button class="dropbtn">
							Add <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-content">
							<a href="#">Members</a> <a href="#">Books</a>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="dropbtn">
							Update <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-content">
							<a href="#">Members</a> <a href="#">Books</a>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="dropbtn">
							View <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-content">
							<a href="#">Members</a> <a href="#">Books</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<ul class="loginsignup">
			<li><a href="login.jsp"
				style="color: #78CCF0; font-size: large;">Logout</a></li>
		</ul>
	</nav>
	<div class="statistics-box">
		<h3>Total Members</h3>
		<p id="anotherStatCount">${ecount}</p>
	</div>
</body>

</html>