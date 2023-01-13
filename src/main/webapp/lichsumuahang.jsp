
<%@page import="bean.khachhangbean"%>
<%@page import="bean.lichsumuahangbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	giohangbo gh = (giohangbo) session.getAttribute("gio");
	khachhangbean kh = (khachhangbean) session.getAttribute("dn");
	%>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="htsach">Trang Chủ</a>
			</div>
			<ul class="nav navbar-nav">
				<li
					class="<%if (gh != null && gh.countBook() != 0)
	out.print("active");%>"><a
					href="htgioController"> <%
 if (gh != null) {
 	if (gh.countBook() == 0)
 		out.print("Giỏ Hàng");
 	else {
 		out.print("Giỏ Hàng (" + gh.countBook() + ")");
 	}
 } else {
 	out.print("Giỏ Hàng");
 }
 %>
				</a></li>
				<li><a href="#">Thanh Toán</a></li>
				<li><a href="lichsumuahangController">Lịch sử mua hàng</a></li>

			</ul>

			<form class="navbar-form navbar-left">
				<input type="text" class="form-control" placeholder="Tìm kiếm ở đây"
					name="search" value="">
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			<ul class="nav navbar-nav navbar-right">

				<%
				if (session.getAttribute("dn") == null) {
				%>
				<li><a href="ktdn"> <span
						class="glyphicon glyphicon-log-in"></span> Login
				</a></li>
				<%
				} else {
				%>
				<li><a href="#"> <span class="glyphicon glyphicon-user"></span>
						Hi: <%
 khachhangbean uid = (khachhangbean) session.getAttribute("dn");
 if (uid != null) {
 	out.println("<b>" + uid.getHoten() + "</b>");

 }
 %>
				</a></li>
				<%
				}
				%>
				<li><a href="ThoatController"> <span
						class="glyphicon glyphicon-log-in"></span> Logout
				</a></li>
			</ul>
		</div>
	</nav>

	<%-- <table width="1000" align="center">
   <tr>
      <td width="200" valign="top">
      <table class="table table-hover">
      <% ArrayList<loaibean> dsloai = (ArrayList<loaibean>)request.getAttribute("dsloai");
        for(loaibean l: dsloai){
      %>
          <tr>
           <td>
            <a href="htsach?ml=<%=l.getMaloai()%>"> 
              <%=l.getTenloai() %>
             </a>
          </td>
          </tr>
          <%} %>
       </table> --%>
	</td>
	<td width="600" valign="top">
		<h3 style="text-align: center;">Lịch sử mua hàng</h3>

		<table width="700px" border="1px solid #000"
			style="transform: translate(55%, 10%);">
			<tr>
				<td>Ten sach</td>
				<td>Gia</td>
				<td>So Luong</td>
				<td>Thanh Tien</td>
				<td>Ngay mua</td>
			</tr>
			<%
			if (request.getAttribute("listlichsu") != null) {
				ArrayList<lichsumuahangbean> listls = (ArrayList<lichsumuahangbean>) request.getAttribute("listlichsu");

				for (lichsumuahangbean ls : listls) {
			%>
			<tr>
				<td><%=ls.getTensach()%></td>
				<td><%=ls.getGia()%></td>
				<td><%=ls.getSoLuongMua()%></td>
				<td><%=ls.getThanhTien()%></td>
				<td><%=ls.getNgayMua()%></td>
			</tr>
			<%
			}
			}
			%>
			</td>
			</tr>

		</table>
</body>
</html>

