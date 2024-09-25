<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>LMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<link type="text/css" href="css/navbar.css" rel="stylesheet">
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

.navbar ul {
	display: flex;
	justify-content: end;
	align-items: center;
	list-style: none;
	margin: 0;
	padding: 0;
	flex-grow: 1;
}

.navbar ul li {
	font-size: 1rem;
	color: white;
	padding: 0 2px;
	cursor: pointer;
	position: relative;
}

.navbar li a {
	padding: 3px 10px;
	text-decoration: none;
	color: white;
}

/* Navbar Search Container CSS */
.navbar .search-container {
	flex: 65%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.navbar input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	width: 400px;
	border: none;
	border-radius: 25px 0px 0px 25px;
}

.navbar .search-container button {
	float: right;
	padding: 6px 10px;
	margin-top: 8px;
	margin-right: 16px;
	background: #50B340;
	font-size: 17px;
	border: none;
	border-radius: 0px 25px 25px 0px;
	width: 50px;
	cursor: pointer;
}

.navbar .search-container button:hover {
	background: #78CCF0;
}

@media screen and (max-width: 600px) {
	.navbar .search-container {
		float: none;
	}
	.navbar a, .navbar .search input[type=text], .navbar .search-container button
		{
		float: none;
		display: block;
		text-align: left;
		width: 100%;
		margin: 0;
		padding: 14px;
	}
	.navbar input[type=text] {
		border: 1px solid #ccc;
	}
}

/* Login Signin image CSS */
.logsignimage .btn1 {
	position: absolute;
	top: 65%;
	left: 30%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	background-color: #50B340;
	color: rgb(0, 0, 0);
	font-size: 16px;
	padding: 12px 44px;
	border: none;
	cursor: pointer;
	border-radius: 20px;
	text-align: center;
}

.logsignimage .btn2 {
	position: absolute;
	top: 65%;
	left: 40%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	background-color: #78CCF0;
	color: rgb(0, 0, 0);
	font-size: 16px;
	padding: 12px 44px;
	border: none;
	cursor: pointer;
	border-radius: 20px;
	text-align: center;
}

.logsignimage .btn1 a {
	text-decoration: none;
	color: rgb(255, 253, 253);
}

.logsignimage .btn2 a {
	text-decoration: none;
	color: rgb(0, 0, 0);
}

.logsignimage .btn1:hover {
	background-color: #78CCF0;
}

.logsignimage .btn2:hover {
	background-color: #50B340;
}

/* Popular Category */
.popularcategory h2 {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 3%;
	margin-bottom: 50px;
	color: #50B340;
}

/* Popular Category CSS */
.gallery {
	width: 800px;
	display: flex;
	overflow-x: scroll;
}

.gallery div {
	width: 80%;
	display: grid;
	grid-template-columns: auto auto auto;
	grid-gap: 20px;
	padding: 10px;
	flex: none;
}

.gallery div img {
	width: 80%;
	border-radius: 50%;
	transform: transform 0.5s;
}

.gallery::-webkit-scrollbar {
	display: none;
}

.gallery-warp {
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 10% auto;
	margin-top: 10px;
}

#backBtn, #nextBtn {
	width: 50px;
	cursor: pointer;
	margin: 40px;
	margin-bottom: 2%;
}

.gallery div img:hover {
	cursor: pointer;
	transform: scale(1.1);
}
</style>
</head>

<body>
	<nav class="navbar">
		<div>
			<li><a href="index.jsp"
				style="color: #50B340; font-size: x-large;">Library Management
					Software</a></li>
		</div>

		<div class="search-container">
			<form action="#">
				<input type="text" placeholder="Enter a book name to search"
					name="search">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</form>
		</div>

		<ul>
			<li><a href="signup.jsp"
				style="color: #50B340; font-size: large;">Login</a></li>
			<li>|</li>
			<li><a href="signup.jsp"
				style="color: #78CCF0; font-size: large;">SignUp</a></li>
		</ul>
	</nav>
	<div class="logsignimage">
		<img src="../Images/logsignimage.png" alt="Snow"
			style="width: 80%; margin-top: 6%; margin-left: 10%;">
		<button class="btn1">
			<a href="login.jsp">Login</a>
		</button>
		<button class="btn2">
			<a href="signup.jsp">SignUp</a>
		</button>
	</div>

	<div class="popularcategory">
		<h2>Popular Category</h2>
	</div>

	<div class="gallery-warp">
		<img src="../Images/backBtn.png" id="backBtn">
		<div class="gallery">
			<div>
				<span><img src="../Images/cse.png"></span> <span><img
					src="../Images/mech.png"></span> <span><img
					src="../Images/electrical.png"></span>
			</div>
			<div>
				<span><img src="../Images/aerospace.png"></span> <span><img
					src="../Images/civil.png"></span> <span><img
					src="../Images/maths.png"></span>
			</div>
			<div>
				<span><img src="../Images/chemical.png"></span> <span><img
					src="../Images/literature.png"></span> <span><img
					src="../Images/history.png"></span>
			</div>
		</div>
		<img src="../Images/nextBtn.png" id="nextBtn">
	</div>

	<script>
    let scrollContainer = document.querySelector(".gallery");
    let backBtn = document.getElementById("backBtn");
    let nextBtn = document.getElementById("nextBtn");

    scrollContainer.addEventListener("wheel", (evt) => {
      evt.preventDefault();
      scrollContainer.scrollLeft += evt.deltaY;
      scrollContainer.style.scrollBehavior = "auto";
    });

    nextBtn.addEventListener("click", () => {
      scrollContainer.style.scrollBehavior = "smooth";
      scrollContainer.scrollLeft += 900;
    });

    backBtn.addEventListener("click", () => {
      scrollContainer.style.scrollBehavior = "smooth";
      scrollContainer.scrollLeft -= 900;
    });
  </script>
</body>

</html>