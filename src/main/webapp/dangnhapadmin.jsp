<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng nhập</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
	
<link rel="stylesheet" href="./css/dangnhap.css">
<style>
body {
    margin: auto;
    font-family: -apple-system, BlinkMacSystemFont, sans-serif;
    overflow: auto;
    background: linear-gradient(315deg, rgba(101,0,94,1) 3%, rgba(60,132,206,1) 38%, rgba(48,238,226,1) 68%, rgba(255,25,25,1) 98%);
    animation: gradient 15s ease infinite;
    background-size: 400% 400%;
    background-attachment: fixed;
}

@keyframes gradient {
    0% {
        background-position: 0% 0%;
    }
    50% {
        background-position: 100% 100%;
    }
    100% {
        background-position: 0% 0%;
    }
}

.wave {
    background: rgb(255 255 255 / 25%);
    border-radius: 1000% 1000% 0 0;
    position: fixed;
    width: 200%;
    height: 12em;
    animation: wave 10s -3s linear infinite;
    transform: translate3d(0, 0, 0);
    opacity: 0.8;
    bottom: 0;
    left: 0;
    z-index: -1;
}

.wave:nth-of-type(2) {
    bottom: -1.25em;
    animation: wave 18s linear reverse infinite;
    opacity: 0.8;
}

.wave:nth-of-type(3) {
    bottom: -2.5em;
    animation: wave 20s -1s reverse infinite;
    opacity: 0.9;
}

@keyframes wave {
    2% {
        transform: translateX(1);
    }

    25% {
        transform: translateX(-25%);
    }

    50% {
        transform: translateX(-50%);
    }

    75% {
        transform: translateX(-25%);
    }

    100% {
        transform: translateX(1);
    }
}



#login-row
{
position: fixed;width: 900px;
height: 200px;top: 45%;
left: 50%;
margin-top: -100px; /* Negative half of height. */
margin-left: -250px;

}
#login-box
{
border-radius: 13px !important;
border: 1px solid;
  padding: 10px;
  box-shadow: 5px 10px;
}
@media only screen and (max-width: 600px) {
 
 #login-row
{
position: fixed;
top: 35%;
left: 50%;
margin-top: -100px; /* Negative half of height. */
margin-left: -250px;

}
  #login .container #login-row #login-column #login-box {
    margin-top: 220px;
    max-width: 350px;
    margin-left: 58px;
    height: 320px;
    border: 1px solid #9C9C9C;
    background-color: #EAEAEA;
}

 	
}


.main {
  display: flex;
    justify-content: center;
    align-items: center;
    width: 98%;
    height: 124px;
}
.file-sight {
  display: flex;
  justify-content: center;
	align-items: center;
  width: 100px;
  height: 100px;
  border-radius: 12px;
}

#file-sight-movepath {
	animation-delay: 2s;
	animation: path 1.5s infinite ease-in;
}

@keyframes path {
	20% {
		d:path('M6,18.154c12.285,0.178,29.812,8.875,29.812,8.875S49.875,11.164,60.875,9.748');
	}
	50% {
		d:path('M6,18.154c12.285,0.178,29.812,8.875,29.812,8.875S43.458,6.496,51.041,3.081');
	}
	55% {
		d:path('M35.812,0.553v26.112c0,0-20.188-8.511-29.812-8.875');
	}
	65% {
		d:path('M6,18.154c12.285,0.178,28.458,8.011,28.458,8.011S27.625,5.413,20.375,3.081');
	}
	80% {
		d:path('M6,18.154c10.626,0,27.029,7.579,27.029,7.579S24.708,12.416,11.958,9.748');
	}
	90% {
		d:path('M6,18.154c14.229,0,29.812,8.511,29.812,8.511');
	}
	100% {
		d:path('M6,18.154c12.285,0.178,29.812,8.875,29.812,8.875s17.938-8.875,29.312-8.867');
	}
}


</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="adminController">Trang chủ</a></li>
      <li><a href="loaiadminControler">Quản lý loại</a></li>
        <li><a href="sachadminController">Quản lý sách</a></li>
        <li><a href="xacnhanController">Xác nhận</a></li>
        <li><a href="danhsachchuyentienController">Khách hàng chuyển tiền</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="thoat.jsp"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      <%if(session.getAttribute("admin")==null){ %>
      <li><a href="ktdn">
      <span class="glyphicon glyphicon-log-in"></span> 
      		Login
      </a></li>
      <%}else{ %>
      <li><a href="#">
      <span class="glyphicon glyphicon-log-in"></span> 
      	
      </a></li>
      <%} %>
    </ul>
  </div>
</nav>
	
<div class="forest"></div><div class=" foggy"></div>
<div id="foglayer_01" class="fog">
  <div class="image01"></div>
  <div class="image02"></div>
</div>
<div id="foglayer_02" class="fog">
  <div class="image01"></div>
  <div class="image02"></div>
</div>
<div id="foglayer_03" class="fog">
  <div class="image01"></div>
  <div class="image02"></div>
</div>


<div class="main">
<div class="file-sight" >
		<svg version="1.1" id="file-sight-svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
											 width="72.759px" height="82.005px" viewBox="0 0 72.759 82.005" enable-background="new 0 0 72.759 82.005" xml:space="preserve">
										<path fill="none" stroke="#ECECEC" stroke-width="3.5" stroke-miterlimit="10" d="M69.875,31.457
											c-19.25,0-34.125,9.625-34.125,9.625s-15.125-9.625-34-9.625c0,0,0,36.125,0,39.375c18.875,0,34,9.125,34,9.125
											s14.875-9.125,34.125-9.125C69.875,64.332,69.875,35.207,69.875,31.457z"/>
										<path id="file-sight-movepath" fill="none" stroke="#ECECEC" stroke-width="2" stroke-miterlimit="10" d="M6,18.154c12.285,0.178,29.812,8.875,29.812,8.875
											s17.938-8.875,29.312-8.867"/> 
										<path fill="none" stroke="#ECECEC" stroke-width="2" stroke-miterlimit="10" d="M2.938,24.457c15.25,0,32.875,8.875,32.875,8.875
											s17.75-8.875,32.875-8.875"/>
										<rect x="8.428" y="44.706" fill="none" width="64.331" height="23.252"/>
										<text transform="matrix(1 0 0 1 8.4277 62.9648)" fill="#ECECEC" font-family="'NuevaStd-Bold'" font-size="22">Book</text>
										<text transform="matrix(0.583 0 0 0.583 59.1592 55.6387)" fill="#ECECEC" font-family="'NuevaStd-Bold'" font-size="22"></text>
  </svg>
</div>
</div>
 <div id="login">
        
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center" >
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12" style="height:390px; background: #fff">
                    
                        <form id="login-form" class="form" action="dangnhapadminController" method="post">
                            <h3 class="text-center text-info">Đăng Nhập</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Tài khoản :</label><br>
                                <input type="text" name="txtun" id="username" class="form-control" value="">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Mật khẩu :</label><br>
                                <input type="password" name="txtpass" id="password" class="form-control" value="">
                                  <%
	String kt = request.getParameter("kt");
	if(kt!= null && kt.equals("1"))
	{
		%>
		<p style="color:red; line-height: 45px">đăng nhập sai </p>
		<%
	}
	%>
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Nhớ đăng nhập </span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Login">
                            	<br>
            					<br>
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="dangkyController" class="text-info">Đăng ký tài khoản</a>
                            </div>
						  
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
	

<script type="text/javascript">
 
    $(document).ready(function() {
        $("#login-form").validate({
            rules: {
                txtun: {
                    required: true,
                    txtun: true,
                    
                },
         		txtun: "required",
               	txtpass: "required",
            },
             
            messages: {
                txtun: {
                    required: "Vui lòng nhập tên đăng nhập",
                   
                },
                 
              txtpass: "Vui lòng nhập mật khẩu"
            }
        });
 
    });
</script>



</body>
</html>
