<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TaiLieu.VN: Thư Viện chia sẻ Tài liệu, Luận văn, Biểu
	mẫu, Văn Bản, Giáo trình trực tuyến Việt Nam</title>
<link rel="icon" href="iconTaiLieuvn.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html {
	height: 100%;
	font-family: Roboto, Arial, Tahoma, Helvetica, Verdana;
}

body {
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

li {
	color: #444;
}

#main {
	overflow: scroll;
	width: 782px;
	height: auto;
	box-shadow: 0 0 7px rgb(0 0 0/ 70%);
}

.heading {
	display: flex;
	justify-content: space-between;
	background: #1a83d2;
	color: #fff;
	text-transform: uppercase;
	padding: 10px;
	font-weight: bold;
}

i.fa-solid.fa-xmark {
	padding: 4px;
	cursor: pointer;
}

.content {
	padding: 20px;
	font-size: 12px;
}

.content>p {
	color: #444;
	margin-bottom: 10px;
}

.container-1 {
	display: flex;
	justify-content: space-between;
	margin: 15px 0;
}

.container-1>.box-1 {
	margin-right: 80px;
}

.container-1>.box-1>img {
	cursor: pointer;
}

.container-1>.box-1>p {
	font-weight: 700;
	color: #0080AF;
	cursor: pointer;
	margin-top: 15px;
}

.container-1>.box-2 {
	margin-left: 80px;
}

.container-1>.box-2>.box-child {
	border: 1px dashed #01B5E6;
	border-radius: 5px;
	padding-left: 20px;
	padding-right: 8px;
	line-height: 1.6;
}

input, select {
	padding: 5px;
	margin: 5px 0
}

input::placeholder, select {
	font-size: 11px;
}

input[type="text"], input[type="password"] {
	width: 295px;
	height: 28px;
}

select {
	width: 75px;
	height: 28px;
	margin-right: 4px;
}

.mar-right-10px {
	margin-right: 10px;
}

.container-2 {
	display: flex;
}

.container-2>.box-1 {
	display: flex;
	flex-direction: column;
	margin-right: 5px;
}

.container-2>.box-2 {
	display: flex;
	flex-direction: column;
	margin-left: 5px;
}

.container-2>.box-2>.box-child {
	display: flex;
}

.container-2>.box-2>.box-child>img, .container-2>.box-2>.box-child>p {
	margin-top: 5px;
	margin-bottom: 5px;
	color: #0080AF;;
	cursor: pointer;
}

.container-3 {
	display: flex;
	align-items: center;
}

input[type="submit"] {
	padding: 8px 16px;
	/* background: blue; */
	text-align: center;
	font-weight: bold;
	color: #FFF;
	cursor: pointer;
	background: linear-gradient(#8accff, #66a9e8);
	border: none;
	border-radius: 4px;
}

span {
	border-bottom: 1px dashed #cecece;
	width: 740px;
	float: left;
}

.container-4 {
	margin-top: 10px;
}

.container-4>.box-1 {
	display: inline;
	float: left;
	line-height: 20px;
	height: 50px;
	padding: 0 8px;
	border-right: 1px solid #BBD0D7;
}

.container-4>.box-2 {
	display: inline;
	float: left;
	line-height: 20px;
	height: 50px;
	padding: 0 8px;
	border-right: 1px solid #BBD0D7;
}

.container-4>.box-3 {
	display: inline;
	float: left;
	line-height: 20px;
	height: 50px;
	width: 210px;
	padding: 0 8px;
}
</style>
</head>
<body>
	<div id="main">
		<form action="">
			<div class="heading">
				<p>Đăng ký</p>
				<i class="fa-solid fa-xmark"></i>
			</div>
			<div class="content">
				<ul>
					<li>Đăng ký nhanh qua Facebook
				</ul>
				<div class="container-1">
					<div class="box-1">
						<img alt="" src="loginWithFacebook.png">
						<p>Đăng ký mới bằng tài khoản TaiLieu.VN</p>
					</div>
					<div class="box-2">
						<div class="box-child">
							<ul>
								<li>Thưởng ngay 50 ePoints khi đăng ký mới & 5 ePoints cho
									mỗi lượt chia sẻ Facebook</li>
								<li>Tích lũy nhiều ePoints khi Upload tài liệu >></li>
							</ul>
						</div>
					</div>
				</div>
				<p>Bạn cần kích hoạt tài khoản qua Email sau khi đăng ký để nhận
					ngay 50 ePoints thưởng từ TaiLieu.VN</p>
				<div class="container-2">
					<div class="box-1">
						<input type="text" placeholder="Nhập Username"> <input
							type="password" placeholder="Nhập mật khẩu"> <input
							type="password" placeholder="Nhập lại mật khẩu"> <input
							type="text" placeholder="Nhập địa chỉ Email"> <input
							type="text" placeholder="Nhập lại địa chỉ Email">
					</div>
					<div class="box-2">
						<input type="text" placeholder="Nhập Họ và Tên"> <select>
							<option>Giới tính</option>
							<option>Nam</option>
							<option>Nữ</option>
						</select>
						<div class="box-child-1">
							<select>
								<option>Ngày sinh</option>
								<%
								for (int i = 1; i <= 31; i++) {
								%>
								<option><%=i%></option>
								<%
								}
								%>
							</select> <select>
								<option>Tháng</option>
								<%
								for (int i = 1; i <= 12; i++) {
								%>
								<option><%=i%></option>
								<%
								}
								%>
							</select> <select>
								<option>Năm</option>
								<%
								for (int i = 1960; i <= 1999; i++) {
								%>
								<option><%=i%></option>
								<%
								}
								%>
							</select>
						</div>
						<select>
							<option>Tỉnh/TP</option>
							<%
							for (int i = 1; i <= 64; i++) {
							%>
							<option>Thùa Thiên Huế</option>
							<%
							}
							%>
						</select>
						<div class="box-child">
							<input class="mar-right-10px" style="width: 120px;" type="text"
								placeholder="Nhập mã xác nhận"> <img
								class="mar-right-10px" alt="" src="capcha.png">
							<p class="mar-right-10px">Chọn mã xác nhận khác</p>
						</div>
					</div>
				</div>
				<div class="container-3">
					<input class="mar-right-10px" type="submit" value="Đăng ký">
					<input type="checkbox" style="margin-right: 4px;">
					<p style="color: #444;">Tôi đồng ý với các Chính Sách và Thỏa
						Thuận Sử Dụng của TaiLieu.VN</p>
				</div>
				<span></span>
				<p
					style="font-weight: 700; color: #0080AF; cursor: pointer; margin-top: 15px;">Bạn
					đã có tài khoản TaiLieu.VN? Đăng nhập</p>
				<div class="container-4">
					<div class="box-1">
						<p>Thưởng 50 ePoints khi đăng ký mới</p>
						<p>Tặng 5 ePoints cho mỗi lượt chia sẻ Facebook</p>
					</div>
					<div class="box-2">
						<p>Xem và Tải trên 1 Triệu Tài Liệu miễn phí</p>
						<p>Kết nối 5 Triệu Thành Viên TaiLieu.VN</p>
					</div>
					<div class="box-3">
						<p>Kết bạn với TaiLieu.VN trên Facebook để nhận link download
							miễn phí 100 tài liệu HOT mỗi ngày</p>
					</div>
				</div>
			</div>

		</form>
	</div>

</body>
</html>