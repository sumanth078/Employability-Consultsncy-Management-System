<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="../css/login.css">
    <style>
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
            justify-content: flex-end;
            align-items: center;
            list-style: none;
            margin: 0;
            padding: 0;
            flex-grow: 1;
            margin-top: -3%;
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
            margin-top: -43px;
            margin-left: 400px;
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

            .navbar a,
            .navbar .search input[type=text],
            .navbar .search-container button {
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
    </style>
</head>

<body>

    <nav class="navbar">
        <div>
            <li><a href="index.jsp" style="color:#50B340; font-size: x-large;">Library Management Software</a></li>
        </div>
        <div class="search-container">
            <form action="#">
                <input type="text" placeholder="Enter a book name to search" name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>
        </div>
        <ul>
            <li><a href="login.jsp" style="color:#50B340; font-size: large;">Login</a></li>
            <li>|</li>
            <li><a href="signup.jsp" style="color:#78CCF0; font-size: large;">SignUp</a></li>
        </ul>
    </nav>

    <div class="main">
        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure>
                            <img src="../Images/signin-image.jpg" alt="sing up image">
                        </figure>
                    </div>

                    <div class="signin-form">
						<span class="blink">
        					<h3 style="color:red">${message}</h3>
    					</span>
                        <h2 class="form-title">Sign In</h2>
                        <form method="post" action="checkadminlogin" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="username" id="username" placeholder="Your Username" />
                            </div>
                            <div class="form-group">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label> <input type="password"
                                    name="password" id="password" placeholder="Password" />
                            </div>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Login" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>