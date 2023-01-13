<%@page import="bean.hoadonbean"%>
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
     <form action="xemhoadon" method="post">
           <table class="table table-hover">
    <tr><td>Mã hoá đơn</td>
    <td>Mã khách hàng</td>
    <td>Ngày mua</td>
    <td>Tình trạng đơn hàng</td>
    </tr>
    
      <%  ArrayList<hoadonbean> dshd = (ArrayList<hoadonbean>)request.getAttribute("dshd");
      	  for(hoadonbean s: dshd){
      %>
          <tr>
          <td> <%=s.getMakh() %>  </td>
           <td> <%=s.getNgayMua() %>     </td>
           <%if(s.getDamua()){%>
        	   <td>Đơn đã thanh toán</td>
           <%}else{ %>
           
           <td>Đơn chưa thanh toán</td>
           <%} %>
           <td>
           <button name="butXem" value="<%=s.getDamua()%>" class="btn-link" type="submit">
           		Xem chi tiết đơn
           	</button>
           </td>
      <%} %>
      </table>
     </form>
</body>
</html>
