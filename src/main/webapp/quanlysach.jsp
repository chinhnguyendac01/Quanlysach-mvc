<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="tam123" enctype= "multipart/form-data">
  Mã sách: <input type="text" name="txtmasach" value=""> <br>
  Tên sách: <input type="text" name="txttensach" value=""> <br>
  Tác giả: <input type="text" name="txttacgia" value=""> <br>
  Giá: <input type="number" name="txtgia" value=""> <br>
  Số lượng: <input type="number" name="txtsoluong" value=""> <br>
  Ngày nhập: <input type="date" name="txtngaynhap" value=""> <br>
  Ảnh: <input type="file" name="txtfile"><br>
  Số tập: <input type="text" name="txtsotap" value=""> <br>
  Mã loại:	<select>
               <%
					ArrayList<loaibean> loaisach = (ArrayList<loaibean>)request.getAttribute("dsloai");
						for(loaibean l: loaisach){%>
							<option><%=l.getTenloai() %></option>
						<%
						}
			 %>
           </select><br>
          
  <input type="submit" value="Add"> <input value="save" type="submit"> 
  </form> 
</body>
</html>
