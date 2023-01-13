<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập hệ thống</title>
<link rel="icon" href="iconHUSC.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html {
	width: 100%;
	height: 100%;
}

body {
	width: 100%;
	height: 100%;
	
}

#main {
	width: 100%;
	height: 100%;
	background: #7fbbe3;
}

#container {
	display: flex;
	align-items: flex-end;
	width: 100%;
	margin: auto;
	overflow: hidden;
	justify-content: center;
	align-items: center;
}

.banner {
	width: 650px;
	text-align: center;
	margin-bottom: 20px;
}

.logo {
	margin-top: 50px;
	display: inline-block;
}

.logo>a {
	display: block;
	width: 112px;
	height: 112px;
	width: 112px;
}

a>img {
	width: 100%;
	height: 100%;
}

.sub-banner {
	margin-top: 70px;
}

.login {
	width: 350px;
	z-index: 1;
}

form {
	width: 320px;
	border: 5px solid #6bb9f0;
	background: #f7f7f7;
	padding: 15px;
	height: 370px;
	margin: 0 auto;
	margin-top: 205px;
	position: relative;
}

input {
	padding: 8px 10px;
	width: 100%;
}

input[type="submit"] {
	margin: 20px auto;
	padding: 8px 12px;
	font-size: 15px;
	line-height: 1.3333333;
	border-radius: 4px;
	color: #fff;
	background-color: #337ab7;
	border-color: #2e6da4;
	border: 1px solid transparent;
	cursor: pointer;
}

input[type="submit"]:hover {
	color: #fff;
	background-color: #286090;
	border-color: #204d74;
}

form>img {
	border: 5px solid #fff;
	border-radius: 50%;
	position: absolute;
	right: 20px;
	margin-top: -45px;
}

h2 {
	margin: 14px 0 20px;
	color: #006eb7;
	font-weight: bold;
	font-family: Calibri;
	font-size: 26px;
	text-transform: uppercase;
}

p {
	font-family: Arial, sans-serif;
	font-size: 12px;
	line-height: 1.42857143;
	color: #333;
	font-weight: bold;
	margin-bottom: 5px;
	margin-top: 10px;
}

#footer {
	width: 100%;
	height: 140px;
	bottom: 0;
	position: absolute;
	background: linear-gradient(transparent, #7fbbe3 30%, #337ab7);
}

.container {
	font-family: Arial, sans-serif;
	color: #fff;
	text-align: center;
	font-size: 12px;
}

.container>a {
	display: block;
	color: #fff;
	text-decoration: none;
	margin-bottom: 6px;
}

.container>a:hover {
	text-decoration: revert;
}

.address {
	display: flex;
	justify-content: center;
	align-items: center;
}

.address>p {
	color: #fff;
}

i.fa-solid.fa-house {
	
}

.contact {
	display: flex;
	align-items: center;
	justify-content: center;
}

.contact>p {
	color: #fff;
}
</style>
</head>
<body>
	<div id="main">
		<div id="container">
			<div class="banner">
				<div class="logo">
					<a href="https://ums.husc.edu.vn/"> <img alt=""
						src="./img/Logo-ko-nen.png">
					</a>
				</div>
				<div class="sub-banner">
					<img alt="" src="./img/image1.png">
				</div>
			</div>
			<div class="login">
				<form action="">
					<img alt="" src="./img/logo-small.png">
					<h2>Sinh viên</h2>
					<p>Mã sinh viên:</p>
					<input type="text" placeholder="Mã sinh viên">
					<p>Mật khẩu:</p>
					<input type="password" placeholder="Mật khẩu"> <input
						type="submit" value="Đăng nhập">
				</form>
			</div>
		</div>


	
</body>
</html>