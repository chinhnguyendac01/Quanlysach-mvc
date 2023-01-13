<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
  <table border ="1" width="1000" align="center">
     <tr>
         <td colspan="3" bgcolor="red">  Logo va menu </td>
     </tr>
     <tr>
         <td valign="top" width="200">
				<a href="ht.jsp"> Trang chu</a> <hr>
				<a href="http://docbao.vn"> Đọc báo</a> <hr>
				<a href="tam.docx"> Tải bài giảng</a> <hr>
          Menu trai 1 <hr> Menu trai 2 <hr>
          
           </td>
         <td width="600"> 
         <img src="1.jpg" width="200">
         Noi dung 1 <hr> Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr></td>
         <td width="200"> 
            <form method="post" action="ht.jsp">
               Tên đăng nhâp: <input name="txtun" type="text"> <br>
               Mật khẩu: <input name="txt1" type="password"> <br>
               Upanh: <input name="txt2" type="file"> <br>
                <input name="but1" type="submit" value="Dang ky"> <br>
                Comment:
                <textarea rows="5" cols="10">
                   Noi dung
                </textarea> <br>
                Chon quoc gia:
                <select>
                    <option> Viet Nam </option>
                     <option selected="selected"> Lao </option>
                     <option> Mien dien </option>
                </select>
            </form>
           
         
         </td>
     </tr>
     <tr>
          <td colspan="3">  Ban quyen: ...... </td>
     </tr>
  </table>
  <table border="1">
   <%for(int i=1;i<=100;i++) {%>
      <tr><td>5x<%=i %>=<%=5*i %></td></tr>
    <%} %>   
    </table>
</body>
</html>

