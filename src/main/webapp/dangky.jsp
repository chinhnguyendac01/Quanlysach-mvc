<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>

<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<style>
body {
  color: grey;
  font-family: 'Lato';
  text-align: center;
  background: #66cc99;
  margin: 30px;
}

h1 {
  color: white;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.form-container {
  text-align: left;
    background: white;
    display: flex;
    justify-content: center;
    padding: 20px;
    width: 300px;
    border-radius: 5px;
   
    margin-left: 520px;
     box-shadow: 5px 10px 8px 10px #474040;
}

label {
  color:  #66cc99;
  text-transform: uppercase;
}

input {
  background: transparent;
  font-size: 14px;
  display: block;
  padding: 10px 30px 10px 5px;
  margin: 10px 0 40px;
  border: 2px solid white;
  border-bottom: 2px solid grey;
}

input:focus {
  outline: none;
  border-bottom: 2px solid #66cc99;;
}

.radio-question input {
  margin: 10px;
  padding: 0;
}

.radio-input {
  display: inline;
}

.button {
  background: #66cc99;
  border: 0;
  padding: 15px 30px;
  margin-top: 20px;
  color: white;
  text-transform: uppercase;
  font-size: 13px;
}

.button:hover {
  background: #5ec190;
}
.password-rules {
  font-size: 10px;
  margin-top: 50px;
  margin-bottom: 40px;
}
.error-message {
  color: red;
  margin-top: -30px;
  margin-bottom: 20px;
  font-size: 12px;
}
.back
{
	position: fixed;
    left: 100px;
    padding: 10px;
    border-radius: 4px;
    border: none;
  
}
.back a
{
  color:#66cc99;
    cursor: pointer;
   text-decoration: none;
}
.back a:hover
{
	color:black;
}
</style>

<script type="text/javascript">
 function validate()
 { 
      var fullname = document.form.hoten.value;
      var email = document.form.email.value;
      var username = document.form.tendn.value; 
      var password = document.form.pass.value;
      var conpassword= document.form.conpassword.value;
      
      if (fullname==null || fullname=="")
      { 
      alert("Full Name can't be blank"); 
      return false; 
      }
      else if (email==null || email=="")
      { 
      alert("Email can't be blank"); 
      return false; 
      }
      else if (username==null || username=="")
      { 
      alert("Username can't be blank"); 
      return false; 
      }
      else if(password.length<6)
      { 
      alert("Password must be at least 6 characters long."); 
      return false; 
      } 
      else if (password!=conpassword)
      { 
      alert("Confirm Password should match with the Password"); 
      return false; 
      } 
  } 
  </script>
  
</head>
<body>
 <button  class="back"><a href="ktdn">Quay lại</a></button>
 <h1>Đăng ký tài khoản</h1>
  <div class="form-container">
    <form name="registerForm" action="dangkyController" method="post" onsubmit="return validate()">
      <label for="firstName">Họ và Tên *</label>
      <input type="text" id="firstName" name="hoten" placeholder="Minh Chính" required/>
      <p class="error-message"></p>
     	<label for="firstName">Tên đăng nhập *</label>
      <input type="text" id="Tendangnhap" name="tendn" placeholder="chinhnguyendac" required/>
      <p class="error-message"></p>
        <label for="password">Mật khẩu *</label>
        
      <input type="password" id="password" name ="pass"pattern=".{6,}"   required title="8 characters minimum"/>
       <label for="password">Nhập lại mật khẩu *</label>
      <input type="password" id="password" name ="conpassword"pattern=".{6,}"   required title="8 characters minimum"/>
      	
      <input type="checkbox" onclick="myFunction()" style="margin: 0;
    display: inline;"/>Hiển thị mật khẩu
      <p class="error-message"></p>
      <p class="password-rules">Mật khẩu của bạn phải chứa ít 6 ký tự và 1 số</p>
      <p class="error-message"></p>
      <label for="e-mail">E-mail *</label>
      <input type="text" id="e-mail" name="email" placeholder="john-doe@net.com" required/>
      <p class="error-message"></p>
      <label for="phoneNumber">Số điện thoại *</label>
      <input type="text"  name="sodt" id="phoneNumber" maxlength="9" pattern=".{9,}"   required title="9 characters length"placeholder="223587972"/>
      <p class="error-message"></p>
      <label for="country">Địa chỉ *</label>
      <input type="text" id="country" name="diachi"placeholder="Thừa Thiên Huế"/>
      <p class="error-message"></p>
    
     
        <input class="button" style="border-radius: 4px" type="submit" value="submit" name="submit"  />
       <strong style="color:red"> <%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%> </strong>
     </form>
  </div>
  
  
 
  <script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</body>
</html>